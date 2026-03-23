@extends('layouts.admin',['layout'=>'category'])

@section('title', 'Categories')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3>
                        Add Category
                        <a href="{{ url('admin/category/create') }}" class="btn btn-primary btn-sm text-white float-end">BACK</a>
                    </h3>
                </div>
                <div class="card-body">
                    @if ($errors->any())
                        <div class="alert alert-warning">
                            @foreach ($errors->all() as $error)
                                <div>{{ $error }}</div>
                            @endforeach
                        </div>
                    @endif
                    <form action="{{ url('admin/category') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="name">Name <span class="text-danger">*</span></label>
                                <input type="text" name="name" class="form-control" required>
                                @error('name') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="category">Category <span class="text-danger">*</span></label>
                                <select name="category" class="form-control" required>
                                    <option value="">Select Category</option>
                                    <option value="0">Main Category</option>
                                    @foreach ($allCategories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                                @error('category') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="description">Description <span class="text-danger">*</span></label>
                                <textarea name="description" class="form-control" rows="3" required></textarea>
                                @error('description') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="name">Banner URL <span class="text-danger">*</span></label>
                                <input type="text" name="banner_url" class="form-control" required>
                                @error('banner_url') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="image">Image (300 x 280)</label>
                                <input type="file" name="image" class="form-control">
                                @error('image') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>
                            
                            <div class="col-md-4 mb-3">
                                <label for="image">Banner Image (1296 x 354)</label>
                                <input type="file" name="banner_image" class="form-control">
                                @error('banner_image') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>
                            

                            <div class="col-md-4 mb-3">
                                <label for="status">Status</label><br>
                                <input type="checkbox" name="status"> (Checked = Hidden, Unchecked = Visible)
                                @error('status') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-4 mb-3">
                                <label for="top_category">Top Category</label><br>
                                <input type="checkbox" name="top_category"> (Checked = Top Category)
                                @error('top_category') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                             <div class="col md-12 mb-3">
                                <h4 class="card-header">SEO Tags</h4>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="meta_title">Meta Title</label>
                                <input type="text" name="meta_title" class="form-control">
                                @error('meta_title') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="meta_keyword">Meta Keyword</label>
                                <textarea name="meta_keyword" class="form-control" rows="3"></textarea>
                                @error('meta_keyword') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="meta_description">Meta Description</label>
                                <textarea name="meta_description" class="form-control" rows="3"></textarea>
                                @error('meta_description') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-12 mb-3">
                                <button type="submit" class="btn btn-primary float-end">Save</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
