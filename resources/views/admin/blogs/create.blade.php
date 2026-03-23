@extends('layouts.admin',['layout'=>'blog'])
@section('title', 'Blogs')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Add Blog
                    <a href="{{ route('admin.blogs') }}" class="btn btn-danger btn-sm text-white float-end">BACK</a>
                </h4>
            </div>
            <div class="card-body">
                @if ($errors->any())
                    <div class="alert alert-warning">
                        @foreach ($errors->all() as $error)
                            <div>{{ $error }}</div>
                        @endforeach
                    </div>
                @endif
                <form action="{{ route('admin.store.blogs') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Title <span class="text-danger">*</span></label>
                            <input type="text" name="title" class="form-control" placeholder="Title" required>            
                        </div>
                                                   
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Category <span class="text-danger">*</span></label>
                            <select name="category" class="form-control" required>
                                <option value="">Select Category</option>
                                <option value="pet_flight">Pet Flight</option>
                                <option value="health" >Health</option>
                            </select>      
                        </div>                                                   
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Tags <span class="text-danger">*</span></label>
                            <input type="text" name="tags" class="form-control" placeholder="Tags" required>            
                        </div>
                                                   
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12 mb-3">
                            <label for="description" class="mb-3"><strong>Description <span class="text-danger">*</span></strong></label>
                            <textarea id="description" name="description" rows="3" class="form-control" required>  </textarea>                            
                        </div>  
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6 mb-3">
                            <label for="featured_image">Image (740 x 490)</label>
                            <input type="file" id="featured_image" name="featured_image" class="form-control" onchange="previewImage(event)">
                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img id="featured_image_preview" src="https://ami-sni.com/wp-content/themes/consultix/images/no-image-found-360x250.png" width="150px"  alt="Featured Image Preview" style="max-width: 100%;">
                            <!-- <img id="image_preview" src="" height="100px" width="150px" alt="image"> -->
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">                             
                            <label for="status">Status</label>
                            <input type="checkbox" name="status"> (Checked = Enable, Unchecked = Disable)                        
                        </div>                        
                    </div> 
                    <hr>
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <div class="mb-3 text-center">
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Save</button>
                            </div>
                        </div>
                    </div>                                                  
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
