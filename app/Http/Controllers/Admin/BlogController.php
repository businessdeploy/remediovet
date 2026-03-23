<?php

namespace App\Http\Controllers\Admin;

use App\Models\{Blogs};
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\BlogFormRequest;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Support\Facades\File;

class BlogController extends Controller
{
    public function index()
    {       
        $blogs=Blogs::get();
        return view('admin.blogs.index',compact('blogs'));
    }

    public function create()
    {
        return view('admin.blogs.create');
    }

    public function store(BlogFormRequest $request)
    {

        $validatedData = $request->validated(); 
        if($request->hasFile('featured_image')){
            $file = $request->file('featured_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/blogs/',$filename);
            $validatedData['featured_image'] = 'uploads/blogs/'.$filename;
        }
        $status= $request->status == true ? '1':'0';

        $method=Blogs::create([
            'title' => $validatedData['title'],
            'category'=>$validatedData['category'],
            'tags'=>$validatedData['tags'],
            'description' => $validatedData['description'],
            'featured_image' => $validatedData['featured_image'],
            'status'=>$status,
        ]);       
        // Redirect back with a success message
        return redirect()->route('admin.blogs')->with('message', 'Blog Added Successfully!');
    }

    public function edit($id)
    {
        $blog = Blogs::findOrFail($id);
        return view('admin.blogs.edit', compact('blog'));
    }

    public function update(BlogFormRequest $request, $id)
    {

        $validatedData = $request->validated();
        
        $blog = Blogs::findOrFail($id);    

        if($request->hasFile('featured_image')){
            $uploadPath = 'uploads/blogs/';
            $path = $blog->featured_image;
            if(File::exists($path)){
                File::delete($path);
            }
            $file = $request->file('featured_image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/blogs/',$filename);
            $featured_image = 'uploads/blogs/'.$filename;
        }else{
            $featured_image=$blog->featured_image;
        }

           
        $blog->title=$validatedData['title'];
        $blog->category=$validatedData['category'];
        $blog->tags=$validatedData['tags'];
        $blog->description=$request->description;
        $blog->meta_title=$request->meta_title;
        $blog->meta_keyword=$request->meta_keyword;
        $blog->meta_description=$request->meta_description;
        $blog->featured_image=$featured_image;
        $blog->status=$request->status == true ? '1':'0';
        $blog->save();
        return redirect()->route('admin.blogs')->with('message', 'Blog Updated Successfully!');
    }

    public function destroy($id)
    {
        $method = Blogs::find($id);

        if($method->count() > 0){ 
            $method->delete();
            return redirect()->route('admin.blogs')->with('message', 'Blog Deleted Successfully!');
        }
        return redirect()->route('admin.blogs')->with('message', 'Something went wrong!');
    }
    
   
    
    
    
}
