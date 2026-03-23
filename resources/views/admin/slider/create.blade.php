@extends('layouts.admin',['layout'=>'slider'])

@section('title', 'Sliders')

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Add Slider
                    <a href="{{ url('admin/slider') }}" class="btn btn-danger btn-sm text-white float-end">BACK</a>
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
                <form action="{{ url('admin/slider') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="mb-3">
                            <label for="title">Title <span class="text-danger">*</span></label>
                            <input type="text" name="title" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="title">Sub Title</label>
                            <input type="text" name="sub_title" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="redirect_link">Redirect Link <span class="text-danger">*</span></label>
                            <input type="text" name="redirect_link" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="description">Description <span class="text-danger">*</span></label>
                            <textarea name="description" rows="3" class="form-control"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="image">Image (1440 x 400)<span class="text-danger">*</span></label>
                            <input type="file" name="image" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="sub_image">Sub Image (400 x 400)</label>
                            <input type="file" name="sub_image" class="form-control">
                        </div>
                        <hr>
                        <div class="mb-3">
                            <label for="mobile_image">Mobile Slider Image (472 x 678)</label>
                            <input type="file" name="mobile_slider_image" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="button_text">Button Text</label>
                            <input type="text" name="button_text" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="status">Status</label>
                            <input type="checkbox" name="status"> (Checked = Hidden, Unchecked = Visible)
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary btn-sm float-end">Save</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection
