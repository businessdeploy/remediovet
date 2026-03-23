@extends('layouts.admin',['layout'=>'review'])

@section('title', 'Google review')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3>
                        Add Review
                        <a href="{{ url('admin/review') }}" class="btn btn-primary btn-sm text-white float-end">BACK</a>
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
                    <form action="{{ url('admin/review') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="name">Frist Name <span class="text-danger">*</span></label>
                                <input type="text" name="name" class="form-control" required>
                                @error('name') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="last_name">Last Name <span class="text-danger">*</span></label>
                                <input type="text" name="last_name" class="form-control" required>
                                @error('last_name') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="description">Comment <span class="text-danger">*</span></label>
                                <textarea name="comment" class="form-control" rows="3" required></textarea>
                                @error('comment') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="name">Rating <span class="text-danger">*</span></label>
                                <input type="number" name="rating" max="5" min="0" class="form-control" required>
                                @error('rating') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                             <div class="col-md-6 mb-3">
                                <label for="image">Profile Image (48 x 48)</label>
                                <input type="file" name="image" class="form-control">
                                @error('image') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="name">Review Date</label>
                                <input type="date" name="review_date" class="form-control">
                                @error('review_date') <small class="text-danger">{{ $message }}</small> @enderror
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
