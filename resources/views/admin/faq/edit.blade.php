@extends('layouts.admin',['layout'=>'faq'])

@section('title', 'FAQ')

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Edit FAQ
                    <a href="{{ url('admin/faq') }}" class="btn btn-danger btn-sm text-white float-end">BACK</a>
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
                <form action="{{ route('editfaq',[$faq->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        
                        <div class="mb-3">
                            <label for="title">Title <span class="text-danger">*</span></label>
                            <input type="text" name="title" class="form-control" value="{{ $faq->title }}" required>
                        </div>
                        <div class="col md-12 mb-3">
                                <h4 class="card-header">SEO Tags</h4>
                        </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_title">Meta Title</label>
                        <input type="text" name="meta_title" class="form-control" value="{{ $faq->meta_title }}">
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_keyword">Meta Keyword</label>
                        <textarea name="meta_keyword" class="form-control" rows="3">{{ $faq->meta_keyword }}</textarea>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="meta_description">Meta Description</label>
                        <textarea name="meta_description" class="form-control" rows="3">{{ $faq->meta_description }}</textarea>
                    </div>

                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary btn-sm float-end">Update</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
     
@endsection
