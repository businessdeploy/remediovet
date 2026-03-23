<?php

namespace App\Http\Controllers\Admin;

use App\Models\{Brand,Color,Size,Product,Category,ProductImage,Attributes,Product_Attributes_values,ProductVariation,Product_Variation_values,ProductFaqs,Product_cat_mapings,ProductAddon};
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\File;
use App\Http\Requests\ProductFormRequest;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{

    #@==== Product Listing =====@#
    public function index(Request $request)
    {
        // Retrieve the start and end dates from the request
        $category = $request->category;
        $order_by = $request->order_by;
        $product_name = $request->product_name;
        // Retrieve the status from the request
        $product_sku = $request->product_sku;

        // Query the products based on the filters
        $productsQuery = Product::query();

        // Apply order_by filter if provided
        if ($order_by) {
            $productsQuery->orderBy('id', $order_by);
        }

        // Apply category filter if provided
        if ($category) {
            $productsQuery->where('category_id', $category);
        }

        // Apply product name filter if provided
        if ($product_name) {
            $productsQuery->where('name', 'like', '%' . $product_name . '%');
        }

        if ($product_sku) {
            $productsQuery->where('sku', 'like', '%' . $product_sku . '%');
        }


        // Retrieve paginated products based on the applied filters
        $products = $productsQuery->paginate(10);
        $categories = Category::get();

        // Return the filtered products to the view
        return view('admin.product.index', compact('products', 'categories'));
    }

    #@==== Create New Product ====@#
    public function create()
    {
        $categories = Category::all();

        // foreach ($categories as $key => $value) {



        //     $categories[$key]['name'] = $value['name'];
                        
            
                        
        // }
        // echo "<pre>";
        //             print_r($categories);
        //             die('===');
        $brands = Brand::all();
        $attributes = Attributes::get();
        return view('admin.product.create', compact('categories', 'brands', 'attributes'));
    }

    public function getCategoryNameById($category) {

    }

    #@==== Store Product ====@#
    public function store(ProductFormRequest $request)
    {
        $all=$request->all();
        $validatedData = $request->validated();
        if (is_array($validatedData['category_id'])) {
            foreach ($validatedData['category_id'] as $categoryId) {
                $category = Category::findOrFail($categoryId);
                $parentIds = $this->getParentCategoryIds($category);
                $categoryId = 0;
                $subcategoryId = 0;
                $productTypeId = 0;
                // Process parent IDs and set values accordingly
                $numParents = count($parentIds);
                switch ($numParents) {
                    case 1:
                        // Top-level parent
                        $categoryId = $category->id;
                        break;
                    default:
                        // Process for deeper levels
                        $categoryId = $parentIds[$numParents - 1]; // Last parent
                        $subcategoryId = $parentIds[$numParents - 2]; // Second-to-last parent
                        for ($i = $numParents - 3; $i >= 0; $i--) {
                            // Assign additional parent IDs as product type IDs
                            $productTypeId = $parentIds[$i];
                            // Adjust the logic here if there are additional levels
                        }
                        break;
                }
            }
        }

        if($request->hasFile('featured_image')){
            $file = $request->file('featured_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/product/', $filename);
            $uploadPath = 'uploads/product/';
            $featuredImage = $uploadPath.$filename;
        }

        $product = Product::create([
            'category_id' => $categoryId,
            'sub_category_id' => $subcategoryId,
            'product_type_id' => $productTypeId,
            'name' => $validatedData['name'],
            'slug' => Str::slug($validatedData['slug']),
            'sku' => $validatedData['sku'],
            'brand' => $validatedData['brand'],
            'small_description' => $validatedData['small_description'],
            'description' => $validatedData['description'],
            'original_price' => $validatedData['original_price'],
            'selling_price' => $validatedData['selling_price'],
            'quantity' => $validatedData['quantity'],
            'tax' => $validatedData['tax'],
            'weight_unit'=>$request->weight_unit,
            'weight'=>$request->weight,
            'length_unit'=>$request->length_unit,
            'length'=>$request->length,
            'date_available'=>$request->date_available,
            'height'=>$request->height,
            'width'=>$request->width,
            'min_quantity'=>$request->min_quantity,
            // 'trending' => $request->trending == true ? '1':'0',
            'seasonal_special' => $request->seasonal_special == true ? '1':'0',
            'featured' => $request->featured == true ? '1':'0',
            'status' => $request->status == true ? '1':'0',
            'is_public' => $validatedData['is_public'],
            'offer_type' => $validatedData['offer_type'],
            'meta_title' => $validatedData['meta_title'],
            'meta_keyword' => $validatedData['meta_keyword'],
            'meta_description' => $validatedData['meta_description'],
            'featured_image'=>$featuredImage ?? '',
        ]);

        $catt=$validatedData['category_id'];
        $totcat=count($catt);
        for($i=0;$i<$totcat;$i++){
             Product_cat_mapings::create([
                'pid' => $product->id,
                'cat_id' => $catt[$i],
            ]);  
        }
        if($request->hasFile('image')){
            $uploadPath = 'uploads/product/';
            $i = 1;
            foreach($request->file('image') as $imageFile){
                $extension = $imageFile->getClientOriginalExtension();
                $filename = time().$i++.'.'.$extension;
                $imageFile->move($uploadPath,$filename);
                $finalImagePathName = $uploadPath.$filename;
                $product->productImages()->create([
                    'product_id' => $product->id,
                    'image' => $finalImagePathName
                ]);
            }
        }
        return redirect()->route('admin.edit.product', ['id' => $product->id])->with('message', 'Product Added Successfully!');
    }

    #@==== Edit Existing Product ====@#
    public function edit($id){
        $categories = Category::all();
        $brands = Brand::all();
        $product = Product::findOrFail($id);
        $attributes = Attributes::get();
        $product_attributes=Product_Attributes_values::where('product_id',$id)->get();
        $product_attr_count=$product_attributes->count();
       
        $product_variation_attr = Product_Attributes_values::where('product_id', $id)
            ->distinct('attribute_id')
            ->get();
            
        $variations = DB::table('product_variation_values')
            ->where('product_variation_values.product_id', $id)
            ->join('product_variations', 'product_variation_values.variation_id', '=', 'product_variations.id')
            ->join('attributes', 'product_variation_values.attribute_id', '=', 'attributes.id')
            ->select('product_variation_values.id','product_variation_values.attribute_value','product_variation_values.attribute_id','product_variation_values.status', 'product_variations.price', 'product_variations.quantity', 'attributes.id as attId', 'attributes.name')
            ->distinct()
            ->get();

        $productVariationValues = [];

        foreach ($variations as $variation) {
            $key = $variation->price . '_' . $variation->quantity;

            if (!isset($productVariationValues[$key])) {
                $productVariationValues[$key] = [
                    'id' => $variation->id,
                    'status' => $variation->status,
                    'price' => $variation->price,
                    'quantity' => $variation->quantity,
                    'attributes' => []
                ];
            }

            $productVariationValues[$key]['attributes'][] = [
                'name' => $variation->name,
                'value' => $variation->attribute_value
            ];
        }


        // Fetch attribute names and values
        foreach ($product_variation_attr as $attribute) {
            $attribute->name = Attributes::find($attribute->attribute_id)->name;
            $attribute->values = Product_Attributes_values::where('product_id', $id)
                ->where('attribute_id', $attribute->attribute_id)
                ->get();
        }

        $selectedCategories=Product_cat_mapings::where('pid',$id)->get();

        //fetch faq 
        $faqs=ProductFaqs::where('product_id',$id)->get();

        $addons=Product::where('id','!=',$id)->get();
        $all_addons=ProductAddon::where('product_id',$id)->get();

        return view('admin.product.edit', compact('categories', 'brands','product','attributes','product_attributes','product_variation_attr','product_attr_count','faqs','addons','all_addons','selectedCategories','productVariationValues'));

    }


    #@==== Get Parent Category By Category id ====@#
    public function getParentCategoryIds(Category $category, &$parentIds = [])
    {
        // Add the current category's parent_id to the array
        $parentIds[] = $category->id;
        // If the parent_id is 0 (indicating the top-level parent), stop recursion
        if ($category->parent_id === 0) {
            return $parentIds;
        } else {
            // Otherwise, recursively call the function with the parent category
            $parentCategory = Category::findOrFail($category->parent_id);
            return $this->getParentCategoryIds($parentCategory, $parentIds);
        }
    }

    #@===== Delete Attribute ====@#
    public function deleteAttribute(Request $request){
        $record = Product_Attributes_values::find($request->id);
        if ($record) {
            try {
                $record->delete();
                return response()->json(['success' => true]);
            } catch (\Exception $e) {
                return response()->json(['success' => false, 'message' => $e->getMessage()], 500);
            }
        } else {
            return response()->json(['success' => false, 'message' => 'Record not found'], 404);
        }
    }


    #@==== Save Attribute ====@#
    public function saveAttributes(Request $request){
        $input=$request->all();
        $attributes=$input['attributes'];
        $product_id=$input['product_id'];

        if($product_id){
            $product_id=$input['product_id'];
        }else{
            $getlastId = Product::orderBy('id', 'DESC')->first();
            if($getlastId){
                $product_id=$getlastId->id + 1;
            }else{
                $product_id=1;
            }
        }
        foreach ($attributes as $key => $value) {
            $attribute_id=$value['attribute_id'];
            $attribute_value=$value['value'];
            $existingRecord=Product_Attributes_values::where(['product_id'=>$product_id,'attribute_id'=>$attribute_id,'value'=>$attribute_value])->first();
            if ($existingRecord) {

            } else {
                // Create a new record
                Product_Attributes_values::create([
                    'product_id' => $product_id,
                    'attribute_id' => $attribute_id,
                    'value' => $attribute_value,
                ]);
            }
        }
        return response()->json(['message' => 'Attributes saved successfully']);
    }


    #@==== Save Product Addons ====@#
    public function saveAddons(Request $request){
        $input=$request->all();        
        $addons=$input['addons'];
        $product_id=$input['product_id'];
        foreach($addons as $addon){
            $insAdd['product_id']=$product_id;
            $insAdd['addon_id']=$addon['addon_id'];
            ProductAddon::create($insAdd);           
        }
        return response()->json(['message' => 'Addon saved successfully']);
    }

    #@==== Save Variations ====@#
    public function saveVariations(Request $request){
        $input=$request->all();
        $variations=$input['variations'];
        $product_id=$input['product_id'];
        foreach($variations as $variation){
            $productVariation=ProductVariation::create([
                'product_id' => $product_id,
                'price' => $variation['variation_price'],
                'quantity'=>$variation['variation_quantity']
            ]);
            if($productVariation){
                $attributes=$variation['attributes'];
                foreach($attributes as $attribute){
                    $attrData=Product_Attributes_values::find($attribute);
                    Product_Variation_values::create([
                        'product_id'=>$product_id,
                        'variation_id'=>$productVariation->id,
                        'attribute_id'=>$attrData->attribute_id,
                        'attribute_value'=>$attrData->value,
                    ]);
                }
            }
        }
        return response()->json(['message' => 'Variation saved successfully']);
    }


    #@===== Update Product ====@#
    public function update(ProductFormRequest $request, $id)
    {

        
        
        $validatedData = $request->validated();
        $catt=$validatedData['category_id'];
        $totcat=count($catt);      
        for ($i = 0; $i < $totcat; $i++) {
            $checkCat = Product_cat_mapings::where(['pid' => $id, 'cat_id' => $catt[$i]])->first();
            if ($checkCat) {
                // Update the existing mapping
                $checkCat->update([
                    'pid' => $id,
                    'cat_id' => $catt[$i],
                ]);
            } else {
                // Create a new mapping
                Product_cat_mapings::create([
                    'pid' => $id,
                    'cat_id' => $catt[$i],
                ]);
            }
        }
        
        // $product = Category::findOrFail($catt[0])
        //                ->products()->where('id', $id)->first();
        $product = Product::where('id', $id)->first();

        if($product)
        {
            if($request->hasFile('featured_image')){
                $uploadPath = 'uploads/product/';
                $path = $product->featured_image;
                if(File::exists($path)){
                    File::delete($path);
                }
                $file = $request->file('featured_image');
                $ext = $file->getClientOriginalExtension();
                $filename = time().'.'.$ext;
                $file->move('uploads/product/', $filename);
                $featured_image = $uploadPath.$filename;
            }
// 'category_id' => $validatedData['category_id'],
            $product->update([ 
                'name' => $validatedData['name'],
                'slug' => Str::slug($validatedData['slug']),
                'sku' => $validatedData['sku'],
                'brand' => $validatedData['brand'],
                'small_description' => $validatedData['small_description'],
                'description' => $validatedData['description'],
                'original_price' => $validatedData['original_price'],
                'selling_price' => $validatedData['selling_price'],
                'quantity' => $validatedData['quantity'],
                'tax' => $validatedData['tax'],
                'weight_unit'=>$request->weight_unit,
                'weight'=>$request->weight,
                'length_unit'=>$request->length_unit,
                'length'=>$request->length,
                'date_available'=>$request->date_available,
                'height'=>$request->height,
                'width'=>$request->width,
                'min_quantity'=>$request->min_quantity,
                'featured' => $request->featured == true ? '1':'0',
                'status' => $request->status == true ? '1':'0',
                'is_public' => $request->is_public,
                'video_1'=>$request->video_1,
                'video_2'=>$request->video_2,
                'video_3'=>$request->video_3,
                'offer_type' => $validatedData['offer_type'],
                'meta_title' => $validatedData['meta_title'],
                'meta_keyword' => $validatedData['meta_keyword'],
                'meta_description' => $validatedData['meta_description'],
                'featured_image'=>$featured_image ?? $product->featured_image,
            ]);

            if ($request->hasFile('image')) {

                foreach ($product->productImages as $image) {
                    File::delete(public_path($image->image)); // Delete the file from the server
                    $image->delete(); // Delete the image record from the database
                }
            }

            if($request->hasFile('image')){
                $uploadPath = 'uploads/product/';

                $i = 1;
                foreach($request->file('image') as $imageFile){
                    $extension = $imageFile->getClientOriginalExtension();
                    $filename = time().$i++.'.'.$extension;
                    $imageFile->move($uploadPath,$filename);
                    $finalImagePathName = $uploadPath.$filename;

                    $product->productImages()->create([
                        'product_id' => $product->id,
                        'image' => $finalImagePathName
                    ]);
                }
            }
            if($request->colors){
                foreach($request->colors as $key => $color){
                    $product->productColors()->create([
                        'product_id' => $product->id,
                        'color_id' => $color,
                        'quantity' => $request->colorquantity[$key] ?? 0
                    ]);
                }
            }
            return redirect('admin/product')->with('message', 'Product Updated Successfully!');
        }
        else
        {
            return redirect('admin/product')->with('message', 'No Such Product Id Found!');
        }
    }

    #@==== Destroy Images ===@#
    public function destroyImage($id)
    {
        $productImage = ProductImage::findOrFail($id);
        if(File::exists($productImage->image)){
            File::delete($productImage->image);
        }
        $productImage->delete();
        return redirect()->back()->with('message', 'Product Image Deleted Successfully!');
    }


    #@==== Delete Product ====@#
    public function destroy($id)
    {
        $product = Product::findOrFail($id);
        if($product->productImages){
            foreach($product->productImages as $image){
                if(File::exists($image->image)){
                    File::delete($image->image);
                }
            }
        }

        ProductAddon::where('product_id',$id)->delete();
        ProductFaqs::where('product_id',$id)->delete();
        $product->delete();
        return redirect()->back()->with('message', 'Product Deleted Successfully!');
    }


    #@==== Store New Faq ====@#
    public function storeFaq(Request $request){
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
        ]);
        // Store form data
        $faq = new ProductFaqs();
        $faq->product_id=$request->product_id;
        $faq->title = $request->title;
        $faq->description = $request->description;
        $faq->save();

        // Return response
        return response()->json(['success' => true, 'message' => 'Faq saved successfully']);
    }


    #@==== Update Product Faq====@#
    public function updateFaq(Request $request){
        $request->validate([
            'title' => 'required|string|max:255',
            'edit_description' => 'required|string',
        ]);

        $faq = ProductFaqs::find($request->faq_id);       
        $faq->title = $request->title;
        $faq->description = $request->edit_description;
        $faq->save();
        return response()->json(['success' => true, 'message' => 'Faq updated successfully']);
    }

    #@==== Delete Faq ====@#
    public function deleteFaq(Request $request){
      
        // Retrieve the FAQ by its ID
        $faq = ProductFaqs::findOrFail($request->faq_id);

        // Delete the FAQ
        $faq->delete();

        // Optionally, you can return a response if needed
        return response()->json(['message' => 'FAQ deleted successfully']);
    }

    #@===== Delete variation ====@#
    public function deleteVariation(Request $request){

        $record = Product_Variation_values::find($request->id);
        if ($record) {
                $record->status = $request->status;
                $record->save();
                return response()->json(['success' => true, 'message' => 'Variation status changed.']);
        } else {
            return response()->json(['success' => false, 'message' => 'Record not found'], 404);
        }
    }

    #@==== Update Product Variation====@#
    public function updateVariations(Request $request){

        $all_data = $request->all();
        if($all_data['id']) {
            $record = Product_Variation_values::find($request->id);
            if ($record) {
                $variationId = $record->variation_id;

                $variation = ProductVariation::find($variationId);
                if($request->type == 'quantity') {
                    $variation->quantity = $request->value;
                }

                if($request->type == 'price') {
                    $variation->price = $request->value;
                }

                $variation->save();
                return response()->json(['success' => true, 'message' => 'Variation updated successfully']);
            } else {
                return response()->json(['success' => false, 'message' => 'Record not found.']);
            }
        } else {
            return response()->json(['success' => false, 'message' => 'Record not found.']);
        }
    }

}
