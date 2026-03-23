@extends('layouts.admin',['layout'=>'home'])

@section('title', 'Home')

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Update Home Content
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
                <form action="{{ route('home.update') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PATCH')
                    <div class="row">                        
                        <div class="col-md-12 mb-3">
                            <label for="title" class="mb-3">Title <span class="text-danger">*</span></label>
                            <input type="text" name="title" class="form-control" value="{{ $data->title ?? '' }}" required>
                        </div>
                    </div>

                    <hr class="my-4">

                    <div class="col md-12 mb-3">
                    <h4 class="card-header">SEO Tags</h4>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_title">Meta Title</label>
                        <input type="text" name="meta_title" class="form-control" value="{{ $data->meta_title ?? '' }}">
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_keyword">Meta Keyword</label>
                        <textarea name="meta_keyword" class="form-control" rows="3">{{ $data->meta_keyword ?? '' }}</textarea>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_description">Meta Description</label>
                        <textarea name="meta_description" class="form-control" rows="3"> {{ $data->meta_description ?? '' }}</textarea>
                    </div>

                    <hr class="my-4">

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
