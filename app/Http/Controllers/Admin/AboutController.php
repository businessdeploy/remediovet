<?php

namespace App\Http\Controllers\Admin;

use App\Models\About;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\AboutFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;

class AboutController extends Controller
{
    public function index()
    {
      
        
        Paginator::useBootstrapFive();
        $sliders = Slider::orderBy('id', 'DESC')->paginate(10);
        return view('admin.slider.index', compact('sliders'));
    }

    public function create()
    {
        return view('admin.slider.create');
    }

    public function store(SliderFormRequest $request)
    {
        $validatedData = $request->validated();

        if($request->hasFile('image')){
            $file = $request->file('image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/about/',$filename);
            $validatedData['image'] = 'uploads/about/'.$filename;
        }

        if($request->hasFile('sub_image')){
            $file = $request->file('sub_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/about/',$filename);
            $validatedData['sub_image'] = 'uploads/about/'.$filename;
        }

        $validatedData['status'] = $request->status == true ? '1':'0';

        Slider::create([
            'title' => $validatedData['title'],
            'sub_title' => $validatedData['sub_title'],
            'description' => $validatedData['description'],
            'image' => $validatedData['image'],
            'sub_image' => $validatedData['sub_image'],
            'status' => $validatedData['status']
        ]);

        return redirect('admin/about/edit/1')->with('message', 'About Us Added Successfully!');
    }

    public function edit($id)
    {
        $about = About::findOrFail($id);
        // echo "<pre>";
        // print_r($about);die;
        return view('admin.about.edit', compact('about'));
    }

    public function update(AboutFormRequest $request, $id)
    {
        $validatedData = $request->validated();
        $about = About::findOrFail($id);

        if($request->hasFile('who_we_are_img')){

            $destination = $about->who_we_are_img;

            if(File::exists($destination)){
                File::delete($destination);
            }

            $file = $request->file('who_we_are_img');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/about/',$filename);
            $validatedData['who_we_are_img'] = 'uploads/about/'.$filename;
        }

        if($request->hasFile('our_impact_img')){

            $destination = $about->our_impact_img;

            if(File::exists($destination)){
                File::delete($destination);
            }

            $file = $request->file('our_impact_img');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/about/',$filename);
            $validatedData['our_impact_img'] = 'uploads/about/'.$filename;
        }
        
        if($request->hasFile('mission_img')){

            $destination = $about->mission_img;

            if(File::exists($destination)){
                File::delete($destination);
            }

            $file = $request->file('mission_img');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/about/',$filename);
            $validatedData['mission_img'] = 'uploads/about/'.$filename;
        }
        
        if($request->hasFile('we_proud_img')){

            $destination = $about->we_proud_img;

            if(File::exists($destination)){
                File::delete($destination);
            }

            $file = $request->file('we_proud_img');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/about/',$filename);
            $validatedData['we_proud_img'] = 'uploads/about/'.$filename;
        }
        

        About::where('id', $about->id)->update([
            'who_we_are' => $validatedData['who_we_are'],
            'our_impact' => $validatedData['our_impact'],
            'mission' => $validatedData['mission'],
            'we_proud' => $validatedData['we_proud'],
            'who_we_are_img' => $validatedData['who_we_are_img'] ?? $about->who_we_are_img,
            'our_impact_img' => $validatedData['our_impact_img'] ?? $about->our_impact_img,
            'mission_img' => $validatedData['mission_img'] ?? $about->mission_img,
            'we_proud_img' => $validatedData['we_proud_img'] ?? $about->we_proud_img,
            'meta_title' => $validatedData['meta_title'],
            'meta_keyword' => $validatedData['meta_keyword'],
            'meta_description' => $validatedData['meta_description'],
        ]);

        return redirect('admin/about/edit/1')->with('message', 'Slider Updated Successfully!');
    }

    public function destroy($id)
    {
        $slider = Slider::find($id);

        if($slider->count() > 0){
            $destination = $slider->image;
            if(File::exists($destination))
            {
                File::delete($destination);
            }

            $slider->delete();
            return redirect('admin/slider')->with('message', 'Slider Deleted Successfully!');
        }
        return redirect('admin/slider')->with('message', 'Something went wrong!');
    }
}
