@extends('layouts.admin',['layout'=>'review'])

@section('title', 'Google Review')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h3>
                        Edit Review
                        <a href="{{ url('admin/review') }}" class="btn btn-primary btn-sm text-white float-end">BACK</a>
                    </h3>
                </div>
                <div class="card-body">
                    <form action="{{ url('admin/review/'.$review->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="name">Frist Name <span class="text-danger">*</span></label>
                                <input type="text" name="name" value="{{ $review->name }}" class="form-control" required>
                                @error('name') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="last_name">Last Name <span class="text-danger">*</span></label>
                                <input type="text" name="last_name" value="{{ $review->last_name }}" class="form-control" required>
                                @error('last_name') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>
                           

                            <div class="col-md-6 mb-3">
                                <label for="description">Comment <span class="text-danger">*</span></label>
                                <textarea name="comment" class="form-control" rows="3" required>{{ $review->comment }}</textarea>
                                @error('comment') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="name">Rating <span class="text-danger">*</span></label>
                                 <input type="number" name="rating" value="{{ $review->rating }}" class="form-control" required>
                                @error('rating') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="image">Profile Image (48 x 48)</label>
                                <input type="file" name="image" class="form-control"><br>
                                @if($review->profile_image !="")
                                    <img src="{{ asset("$review->profile_image") }}" height="70px" width="70px" alt="image">
                                @endif
                                @error('profile_image') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label for="name">Review Date</label>
                                <input type="date" name="review_date" class="form-control" value="{{ old('review_date', $review->review_date) }}">
                                @error('review_date') <small class="text-danger">{{ $message }}</small> @enderror
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
