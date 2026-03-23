<?php

namespace App\Http\Controllers\Admin;

use App\Models\{ContentManagement};
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\BlogFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;

class ContentController extends Controller
{

    #@==== Content Listing ====@#
    public function index()
    {       
        $content=ContentManagement::get();
        return view('admin.content.index',compact('content'));
    }

    #@==== Create new Content ====@#
    public function create()
    {
        return view('admin.content.create');
    }

    #@==== Store New Content =====@#
    public function store(Request $request)
    {

        $status= $request->status == true ? '1':'0';

        $method=ContentManagement::create([
            'title' => $request->title,
            'type'=>$request->type,
            'description' => $request->description,
            'status'=>$status,
        ]);       
        // Redirect back with a success message
        return redirect()->route('admin.content.list')->with('message', 'Content Added Successfully!');
    }

    #@==== Edit Content ====@#
    public function edit($id)
    {
        $content = ContentManagement::findOrFail($id);
        return view('admin.content.edit', compact('content'));
    }


    #@==== Update Content ====@#
    public function update(Request $request, $id){ 
        $content = ContentManagement::findOrFail($id); 
           
        $content->title=$request->title;
        $content->type=$request->type;
        $content->description=$request->description;
        $content->status=$request->status == true ? '1':'0';
        $content->save();
        return redirect()->route('admin.content.list')->with('message', 'Content Updated Successfully!');
    }

    #@==== Delete Content ====@#
    public function destroy($id)
    {
        $method = ContentManagement::find($id);
        if($method->count() > 0){ 
            $method->delete();
            return redirect()->route('admin.content.list')->with('message', 'Content Deleted Successfully!');
        }
        return redirect()->route('admin.content.list')->with('message', 'Something went wrong!');
    }
}