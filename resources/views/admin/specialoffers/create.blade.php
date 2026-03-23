@extends('layouts.admin',['layout'=>'specialoffer'])
@section('title', 'Special Offers')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Add Special Offer
                    <a href="{{ route('admin.specialoffers') }}" class="btn btn-danger btn-sm text-white float-end">BACK</a>
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
                <form action="{{ route('admin.store.specialoffers') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Title</label>
                            <input type="text" name="title" class="form-control" placeholder="Title">            
                        </div>
                                                   
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Product</label>
                                   <select class="form-control" name="product" >
                                                                    <option value="">Select Addon</option>
                                                                    @foreach ($products as $product)
                                                                        <option value="{{ $product->id }}" >{{ $product->name }}</option>
                                                                    @endforeach
                                                                </select>
                        </div>
                                                   
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Type</label>
                               <select class="form-control" name="offer_type" >
                                    <option value="">Select Type</option>
                                    <option value="dog">Dog</option>
                                    <option value="cat">Cat</option>
                                </select>
                        </div>
                                                   
                    </div>
                   
                    <div class="row mb-3">
                        <div class="col-md-6 mb-3">
                            <label for="featured_image">Image (900 x 400)</label>
                            <input type="file" id="featured_image" name="featured_image" class="form-control" onchange="previewImage(event)">
                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img id="featured_image_preview" src="https://ami-sni.com/wp-content/themes/consultix/images/no-image-found-360x250.png" width="150px"  alt="Featured Image Preview" style="max-width: 100%;">
                            <!-- <img id="image_preview" src="" height="100px" width="150px" alt="image"> -->
                        </div>
                    </div>
                    
                     <div class="row mb-3">
                        <div class="col-md-6">                             
                            <label for="status">Time</label>
                             <input type="text" name="time" class="form-control" placeholder="Banner Time" required>                              
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
