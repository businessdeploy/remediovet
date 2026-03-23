<?php

namespace App\Http\Controllers\Admin;

use App\Models\{Banner};
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\BannerFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;

class BannerController extends Controller
{

	public function index()
    {       
        $banners=Banner::get();
        return view('admin.banners.index',compact('banners'));
    }

    public function create()
    {
        return view('admin.banners.create');
    }


    public function store(BannerFormRequest $request)
    {

        $validatedData = $request->validated(); 
        if($request->hasFile('banner_image')){
            $file = $request->file('banner_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/banners/',$filename);
            $validatedData['image'] = 'uploads/banners/'.$filename;
        }

        if($request->hasFile('mobile_banner_image')){
            $file = $request->file('mobile_banner_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/banners/',$filename);
            $validatedData['mobile_banner_image'] = 'uploads/banners/'.$filename;
        }

        $status= $request->status == true ? '1':'0';

        $method=Banner::create([
            'link' => $validatedData['link'],
            'type'=>$validatedData['type'],
            'image' => $validatedData['image'],
            'status'=>$status,
        ]);       
        // Redirect back with a success message
        return redirect()->route('admin.banners')->with('message', 'Banner Added Successfully!');
    }


    public function edit($id)
    {
        $banner = Banner::findOrFail($id);
        return view('admin.banners.edit', compact('banner'));
    }


    public function update(BannerFormRequest $request, $id)
    {

        
        $validatedData = $request->validated();
        
        $banner = Banner::findOrFail($id);    

        if($request->hasFile('banner_image')){
            $uploadPath = 'uploads/banners/';
            $path = $banner->image;
            if(File::exists($path)){
                File::delete($path);
            }
            $file = $request->file('banner_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/banners/',$filename);
            $banner_image = 'uploads/banners/'.$filename;
        }else{
            $banner_image=$banner->image;
        }

        if($request->hasFile('mobile_banner_image')){
            $uploadPath = 'uploads/banners/';
            $path = $banner->mobile_banner_image;
            if(File::exists($path)){
                File::delete($path);
            }
            $file = $request->file('mobile_banner_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/banners/',$filename);
            $mobile_banner_image = 'uploads/banners/'.$filename;
        }else{
            $mobile_banner_image=$banner->mobile_banner_image;
        }

           
        $banner->link=$validatedData['link'];
        $banner->type=$validatedData['type'];
        $banner->image=$banner_image;
        $banner->mobile_banner_image=$mobile_banner_image;
        $banner->status=$request->status == true ? '1':'0';
        $banner->save();
        return redirect()->route('admin.banners')->with('message', 'Banner Updated Successfully!');
    }

    public function destroy($id)
    {
        $method = Banner::find($id);

        if($method->count() > 0){ 
            $method->delete();
            return redirect()->route('admin.banners')->with('message', 'Banner Deleted Successfully!');
        }
        return redirect()->route('admin.banners')->with('message', 'Something went wrong!');
    }

}