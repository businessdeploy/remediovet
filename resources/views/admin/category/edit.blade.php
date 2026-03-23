@extends('layouts.admin',['layout'=>'category'])

@section('title', 'Categories')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3>
                        Edit Category
                        <a href="{{ url('admin/category') }}" class="btn btn-primary btn-sm text-white float-end">BACK</a>
                    </h3>
                </div>
                <div class="card-body">
                    <form action="{{ url('admin/category/'.$category->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="name">Name<span class="text-danger">*</span></label>
                                <input type="text" name="name" value="{{ $category->name }}" class="form-control">
                                @error('name') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="category">Category<span class="text-danger">*</span></label>
                                <select name="category" class="form-control">
                                    <option value="">Select Category</option>
                                    <option value="0">Main Category</option>
                                    @foreach ($allCategories as $value)
                                        <option value="{{ $value->id }}" {{ ($category->parent_id == $value->id) ? 'selected' : '' }}>{{ $value->name }}</option>
                                    @endforeach
                                </select>
                                @error('category') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="description">Description<span class="text-danger">*</span></label>
                                <textarea name="description" class="form-control" rows="3">{{ $category->description }}</textarea>
                                @error('description') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="name">Banner URL<span class="text-danger">*</span></label>
                                 <input type="text" name="banner_url" value="{{ $category->banner_url }}" class="form-control">
                                @error('banner_url') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="image">Image (300 x 280)</label>
                                <input type="file" name="image" class="form-control"><br>
                                <img src="{{ asset("$category->image") }}" height="70px" width="70px" alt="image">
                                @error('image') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>
                            
                            <div class="col-md-4 mb-3">
                                <label for="image">Banner Image (1296 x 354)</label>
                                <input type="file" name="banner_image" class="form-control"><br>
                                <img src="{{ asset("$category->banner_image") }}" height="70px" width="70px" alt="image">
                                @error('banner_image') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>
                            

                            <div class="col-md-4 mb-3">
                                <label for="status">Status</label><br>
                                <input type="checkbox" name="status" {{ $category->status == '1' ? 'checked':'' }} >
                                (Checked = Hidden, Unchecked = Visible)
                                @error('status') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-4 mb-3">
                                <label for="top_category">Top Category</label><br>
                                <input type="checkbox" name="top_category" {{ $category->is_top == '1' ? 'checked':'' }} >
                                (Checked = Top Category)
                                @error('top_category') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col md-12 mb-3">
                                <h4 class="card-header">SEO Tags</h4>
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="meta_title">Meta Title</label>
                                <input type="text" name="meta_title" class="form-control"  value="{{ $category->meta_title }}">
                                @error('meta_title') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="meta_keyword">Meta Keyword</label>
                                <textarea name="meta_keyword" class="form-control" rows="3"> {{ $category->meta_keyword }}</textarea>
                                @error('meta_keyword') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="meta_description">Meta Description</label>
                                <textarea name="meta_description" class="form-control" rows="3">{{ $category->meta_description }} </textarea>
                                @error('meta_description') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-12 mb-3">
                                <button type="submit" class="btn btn-primary float-end">Update</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
