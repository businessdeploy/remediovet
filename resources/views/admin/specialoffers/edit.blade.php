@extends('layouts.admin',['layout'=>'specialoffer'])
@section('title', 'Special Offers')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Edit Special Offer
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
                <form action="{{ route('edit.specialoffers',[$specialoffer->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Title</label>
                            <input type="text" name="title" class="form-control" placeholder="Title" value="{{ $specialoffer->title }}">            
                        </div>
                                                   
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Product Url</label>
                            <!--<input type="text" name="product_url" class="form-control" placeholder="Product Url" value="{{ $specialoffer->product_url }}" required>  -->
                            
                                  <select class="form-control" name="product" >
                                                                    <option value="">Select Product</option>
                                                                    @foreach ($products as $product)
                                                                        <option value="{{ $product->id }}" {{ ($product->id == $specialoffer->product) ? 'selected' : '' }}>{{ $product->name }}</option>
                                                                    @endforeach
                                                                </select>
                        </div>
                                                   
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-12">                            
                                <label for="title">Type</label>
                               <select class="form-control" name="offer_type" >
                                    <option value="">Select Type</option>
                                    <option value="dog" {{ ('dog' == $specialoffer->offer_type) ? 'selected' : '' }}>Dog</option>
                                    <option value="cat" {{ ('cat' == $specialoffer->offer_type) ? 'selected' : '' }}>Cat</option>
                                </select>
                        </div>
                                                   
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-6 mb-3">
                            <label for="featured_image">Image (900 x 400)</label>
                            <input type="file" name="featured_image" class="form-control" onchange="previewImage(event)">
                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img id="featured_image_preview" src="{{ asset($specialoffer->featured_image)  ?? 'https://ami-sni.com/wp-content/themes/consultix/images/no-image-found-360x250.png' }}" width="150px"  alt="Featured Image Preview" style="max-width: 100%;">
                        </div>
                    </div>
                      <div class="row mb-3">
                        <div class="col-md-6">                             
                            <label for="status">Time</label>
                             <input type="text" name="time" class="form-control" placeholder="Banner Time" value="{{ $specialoffer->time }}" required>                              
                        </div>                        
                    </div> 
                    <div class="row mb-3">
                        <div class="col-md-6">                             
                            <label for="status">Status</label>
                            <input type="checkbox" name="status" {{ ($specialoffer->status) ? 'checked' : '' }} > (Checked = Enable, Unchecked = Disable)                        
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
