<?php

namespace App\Http\Controllers\Admin;

use App\Models\{Specialoffers,Product,Category};
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\SpecialofferFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;

class SpecialofferController extends Controller
{
    public function index()
    {  
        
        $specialoffers = Specialoffers::leftJoin('products', 'specialoffers.product', '=', 'products.id')
            ->select('specialoffers.*', 'products.name as product_name')
            ->get();

        // Pass the data to a view or return it as JSON
        return view('admin.specialoffers.index', compact('specialoffers'));
        
        
        //$specialoffers=Specialoffers::get();
        //return view('admin.specialoffers.index',compact('specialoffers'));
    }

    public function create()
    {
        $products=Product::get();
         return view('admin.specialoffers.create', compact('products'));
       
        
    }

    public function store(SpecialofferFormRequest $request)
    {

        $validatedData = $request->validated(); 
        if($request->hasFile('featured_image')){
            $file = $request->file('featured_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/specialoffers/',$filename);
            $validatedData['featured_image'] = 'uploads/specialoffers/'.$filename;
        }
        $status= $request->status == true ? '1':'0';

           $method=Specialoffers::create([
            'title' => $validatedData['title'],
            'time' => $validatedData['time'],
            'product' => $validatedData['product'],
            'offer_type' => $validatedData['offer_type'],
            'featured_image' => $validatedData['featured_image'],
            'status'=>$status,
        ]);       
        // Redirect back with a success message
        return redirect()->route('admin.specialoffers')->with('message', 'Special Offer Added Successfully!');
    }

    public function edit($id)
    {
        $products=Product::get();
        $specialoffer = Specialoffers::findOrFail($id);
        return view('admin.specialoffers.edit', compact('specialoffer','products'));
    }

    public function update(SpecialofferFormRequest $request, $id)
    {

        
        $validatedData = $request->validated();
        
        $specialoffer = Specialoffers::findOrFail($id);    

        if($request->hasFile('featured_image')){
            $uploadPath = 'uploads/specialoffers/';
            $path = $specialoffer->featured_image;
            if(File::exists($path)){
                File::delete($path);
            }
            $file = $request->file('featured_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/specialoffers/',$filename);
            $featured_image = 'uploads/specialoffers/'.$filename;
        }else{
            $featured_image=$specialoffer->featured_image;
        }

        $specialoffer->title=$validatedData['title'];
        $specialoffer->offer_type=$validatedData['offer_type'];
        $specialoffer->time=$validatedData['time'];
        // $specialoffer->product_url=$validatedData['product_url'];
        $specialoffer->product=$validatedData['product'];
        $specialoffer->featured_image=$featured_image;
        $specialoffer->status=$request->status == true ? '1':'0';
        $specialoffer->save();
        return redirect()->route('admin.specialoffers')->with('message', 'Special Offer Updated Successfully!');
    }

    public function destroy($id)
    {
        $method = Specialoffers::find($id);

        if($method->count() > 0){ 
            $method->delete();
            return redirect()->route('admin.specialoffers')->with('message', 'Special Offer Deleted Successfully!');
        }
        return redirect()->route('admin.specialoffers')->with('message', 'Something went wrong!');
    }
    
   
    
    
    
}
