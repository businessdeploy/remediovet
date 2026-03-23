<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use Illuminate\Support\Str;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use App\Http\Requests\CategoryFormRequest;

class CategoryController extends Controller
{
    public function index()
    {
        return view('admin.category.index');
    }

    public function create()
    {
        $allCategories=Category::get();
        return view('admin.category.create',compact('allCategories'));
    }

    public function store(CategoryFormRequest $request)
    {


        $validatedData = $request->validated();

        $category = new Category;
        $category->name = $validatedData['name'];
        $category->parent_id = $validatedData['category'];
        $category->description = $validatedData['description'];

        $slug_spl = preg_replace('/[^a-zA-Z0-9\s]/', '', $category->name);
        // Lowercase the string
        $slug_lower = strtolower($slug_spl);
        // Replace spaces with hyphens
        $category->slug = str_replace(' ', '-', $slug_lower);
      $category->banner_url = $validatedData['banner_url'];
        

        $uploadPath = 'uploads/category/';
        if($request->hasFile('image')){
            $file = $request->file('image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/category/', $filename);
            $category->image = $uploadPath.$filename;
        }
        if($request->hasFile('banner_image')){
            $file = $request->file('banner_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/category/', $filename);
            $category->banner_image = $uploadPath.$filename;
        }
        
        

        $category->meta_title = $validatedData['meta_title'];
        $category->meta_keyword = $validatedData['meta_keyword'];
        $category->meta_description = $validatedData['meta_description'];
        $category->status = $request->status == true ? '1':'0';
        $category->is_top = $request->top_category == true ? '1':'0';
        $category->save();

        return redirect('admin/category')->with('message', 'Category Added Successfully!');
    }

    public function edit(Category $category)
    {
        $allCategories=Category::get();
        return view('admin.category.edit', compact('category','allCategories'));
    }

    public function update(CategoryFormRequest $request, $category)
    {
        $validatedData = $request->validated();

        $category = Category::findOrFail($category);

        $category->name = $validatedData['name'];
        $category->parent_id = $validatedData['category'];
        $category->description = $validatedData['description'];

        //if(!$category->slug){
            $slug_spl = preg_replace('/[^a-zA-Z0-9\s]/', '', $category->name);
            // Lowercase the string
            $slug_lower = strtolower($slug_spl);
            // Replace spaces with hyphens
            $category->slug = str_replace(' ', '-', $slug_lower);
        //}
        
      $category->banner_url = $validatedData['banner_url'];
        if($request->hasFile('image')){
            $uploadPath = 'uploads/category/';
            $path = $category->image;
            if(File::exists($path)){
                File::delete($path);
            }
            $file = $request->file('image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/category/', $filename);
            $category->image = $uploadPath.$filename;
        }
        
        if($request->hasFile('banner_image')){
            $uploadPath = 'uploads/category/';
            $path = $category->banner_image;
            if(File::exists($path)){
                File::delete($path);
            }
            $file = $request->file('banner_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/category/', $filename);
            $category->banner_image = $uploadPath.$filename;
        }



        $category->status = $request->status == true ? '1':'0';
        $category->meta_title = $request->meta_title ?? "";
        $category->meta_keyword = $request->meta_keyword ?? "";
        $category->meta_description = $request->meta_description ?? "";
        $category->is_top = $request->top_category == true ? '1':'0';
        $category->update();

        return redirect('admin/category')->with('message', 'Category Updated Successfully!');
    }

}
