@extends('layouts.admin',['layout'=>'banner'])
@section('title', 'Banners')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Add Banner
                    <a href="{{ route('admin.banners') }}" class="btn btn-danger btn-sm text-white float-end">BACK</a>
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
                <form action="{{ route('admin.store.banners') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Link <span class="text-danger">*</span></label>
                            <input type="text" name="link" class="form-control" placeholder="Link" required>            
                        </div>
                                                   
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Type <span class="text-danger">*</span></label>
                            <select name="type" class="form-control" required>
                                <option value="">Select Type</option>
                                <option value="1">Top</option>
                                <option value="2">Bottom</option>
                            </select>            
                        </div>
                                                   
                    </div>                    
                    <div class="row mb-3">
                        <div class="col-md-6 mb-3">
                            <label for="banner_image">Image (1200 x 520)</label>
                            <input type="file" id="banner_image" name="banner_image" class="form-control" onchange="previewImage(event)">
                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img id="banner_image_preview" src="https://ami-sni.com/wp-content/themes/consultix/images/no-image-found-360x250.png" width="150px"  alt="Featured Image Preview" style="max-width: 100%;">
                            <!-- <img id="image_preview" src="" height="100px" width="150px" alt="image"> -->
                        </div>
                    </div>
                    <hr>
                    <div class="row mb-3">
                        <div class="col-md-6 mb-3">
                            <label for="banner_image">Mobile Banner Image (800 x 960)</label>
                            <input type="file" id="mobile_banner_image" name="mobile_banner_image" class="form-control" onchange="previewImage(event)">
                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img id="banner_image_preview" src="https://ami-sni.com/wp-content/themes/consultix/images/no-image-found-360x250.png" width="150px"  alt="Featured Image Preview" style="max-width: 100%;">
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
