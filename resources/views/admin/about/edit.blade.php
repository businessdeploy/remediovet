@extends('layouts.admin',['layout'=>'aboutus'])

@section('title', 'About')

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Update About Content
                    <!-- <a href="{{ url('admin/about') }}" class="btn btn-danger btn-sm text-white float-end">BACK</a> -->
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
                <form action="{{ route('editabout',[$about->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">                        
                        <div class="col-md-12 mb-3">
                            <label for="title" class="mb-3"><strong>Who We Are <span class="text-danger">*</span></strong></label>
                            <textarea id="who_we_are" name="who_we_are" rows="3" class="form-control" required> {{ $about->who_we_are }} </textarea>
                            
                        </div>
                         <div class="col-md-6 mb-3">
                            <label for="sub_image">Image (1380 x 920)<span class="text-danger">*</span></label>
                            <input type="file" name="who_we_are_img" class="form-control" required>
                           
                        </div> 
                        <div class="col-md-6 mb-3"> 
                            <img src="{{ asset($about->who_we_are_img) }}" height="100px" width="150px" alt="image">
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="title" class="mb-3"><strong>Our Impact <span class="text-danger">*</span></strong></label>
                            <textarea id="our_impact" name="our_impact" rows="3" class="form-control" required> {{ $about->our_impact }} </textarea>
                           
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="sub_image">Image (1380 x 920)<span class="text-danger">*</span></label>
                            <input type="file" name="our_impact_img" class="form-control" required>
                           
                        </div>
                        <div class="col-md-6 mb-3">
                            <img src="{{ asset($about->our_impact_img) }}" height="100px" width="150px" alt="image">
                        </div>
                    </div> 
                    <hr>  
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="description" class="mb-3"><strong>Mission <span class="text-danger">*</span></strong></label>
                            <textarea id="mission" name="mission" rows="3" class="form-control" required> {{ $about->mission }} </textarea>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="image">Image (1380 x 920)<span class="text-danger">*</span></label>
                            <input type="file" name="mission_img" class="form-control" required><br>                           
                        </div>
                        <div class="col-md-6 mb-3">
                             <img src="{{ asset($about->mission_img) }}" height="100px" width="150px" alt="image">
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="description" class="mb-3"><strong>We Proud Text <span class="text-danger">*</span></strong></label>
                            <textarea id="we_proud" name="we_proud" rows="3" class="form-control" required> {{ $about->we_proud }} </textarea>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="image">Image (1380 x 920)<span class="text-danger">*</span></label>
                            <input type="file" name="we_proud_img" class="form-control" required><br>
                            
                        </div>
                        <div class="col-md-6 mb-3">
                            <img src="{{ asset($about->we_proud_img) }}" height="100px" width="150px" alt="image">
                        </div> 
                    </div>


                    <div class="col md-12 mb-3">
                    <h4 class="card-header">SEO Tags</h4>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_title">Meta Title</label>
                        <input type="text" name="meta_title" class="form-control" value="{{ $about->meta_title }}">
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_keyword">Meta Keyword</label>
                        <textarea name="meta_keyword" class="form-control" rows="3">{{ $about->meta_keyword }}</textarea>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_description">Meta Description</label>
                        <textarea name="meta_description" class="form-control" rows="3">{{ $about->meta_description }}</textarea>
                    </div>


                    <hr>
                    <div class="row">
                        <div class="col-md-6">
                            <button type="submit" class="btn btn-primary btn-sm float-end">Update</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
     
@endsection
