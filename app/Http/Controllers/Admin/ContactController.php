<?php

namespace App\Http\Controllers\Admin;

use App\Models\About;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\AboutFormRequest;
use App\Http\Requests\DonateFormRequest;
use App\Http\Requests\ContactPageFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;
use App\Models\Donate;
use App\Models\Contact;

class ContactController extends Controller
{
    public function edit()
    {
        $data = Contact::find(1);
        return view('admin.contact.edit', ['data' => $data]);
    }

    public function update(ContactPageFormRequest $request, $id = 1)
    {

        $validatedData = $request->validated();
        Contact::updateOrCreate(
            ['id' => 1],
            [
                'title' => $validatedData['title'],
                'meta_title' => $validatedData['meta_title'],
                'meta_keyword' => $validatedData['meta_keyword'],
                'meta_description' => $validatedData['meta_description'],
            ]
        );

        return redirect('/admin/contactpage')->with('message', 'Contact Page Updated Successfully!');
    }

    // public function create()
    // {
    //     return view('admin.slider.create');
    // }

    // public function store(SliderFormRequest $request)
    // {
    //     $validatedData = $request->validated();

    //     if($request->hasFile('image')){
    //         $file = $request->file('image');
    //         $ext = $file->getClientOriginalExtension();
    //         $filename = time().'.'.$ext;
    //         $file->move('uploads/about/',$filename);
    //         $validatedData['image'] = 'uploads/about/'.$filename;
    //     }

    //     if($request->hasFile('sub_image')){
    //         $file = $request->file('sub_image');
    //         $ext = $file->getClientOriginalExtension();
    //         $filename = time().'.'.$ext;
    //         $file->move('uploads/about/',$filename);
    //         $validatedData['sub_image'] = 'uploads/about/'.$filename;
    //     }

    //     $validatedData['status'] = $request->status == true ? '1':'0';

    //     Slider::create([
    //         'title' => $validatedData['title'],
    //         'sub_title' => $validatedData['sub_title'],
    //         'description' => $validatedData['description'],
    //         'image' => $validatedData['image'],
    //         'sub_image' => $validatedData['sub_image'],
    //         'status' => $validatedData['status']
    //     ]);

    //     return redirect('admin/about/edit/1')->with('message', 'About Us Added Successfully!');
    // }

    // public function edit($id)
    // {
    //     $about = About::findOrFail($id);
    //     // echo "<pre>";
    //     // print_r($about);die;
    //     return view('admin.about.edit', compact('about'));
    // }

    

    // public function destroy($id)
    // {
    //     $slider = Slider::find($id);

    //     if($slider->count() > 0){
    //         $destination = $slider->image;
    //         if(File::exists($destination))
    //         {
    //             File::delete($destination);
    //         }

    //         $slider->delete();
    //         return redirect('admin/slider')->with('message', 'Slider Deleted Successfully!');
    //     }
    //     return redirect('admin/slider')->with('message', 'Something went wrong!');
    // }
}
