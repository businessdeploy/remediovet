@extends('layouts.admin',['layout'=>'review'])

@section('title', 'Google Review')

@section('content')

<div>
    <div>
    <!-- Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Review Delete</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

               
                    <input type="hidden" name="review_id" id="review_id" value="">
                    <div class="modal-body">
                        <h6>Are you sure you want to delete this review?</h6>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary delete-review">Yes, Delete!</button>
                    </div>
            </div>
        </div>
    </div>
    <!-- Modal -->

    <div class="row">
        <div class="col-md-12">
            @if (session('message'))
                <div class="alert alert-success">{{ session('message') }}</div>
            @endif
            <div class="card">
                <div class="card-header">
                    <h3>
                        Google Review
                        <a href="{{ url('admin/review/create') }}" class="btn btn-primary btn-sm text-white float-end">Add
                            Review</a>
                    </h3>
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-striped" id="category_datatable">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Frist Name</th>
                                <th>Last Name</th>
                                <th>Comment</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>

                            @if($reviews && $reviews->count() > 0)

                                @foreach ($reviews as $review)

                                    <tr>
                                        <td>{{ $review->id }}</td>
                                        <td>{{ $review->name }}</td>
                                        <td>{{ $review->last_name }}</td>
                                        <td>  @php $commentPreview = implode(' ', array_slice(explode(' ', $review->comment), 0, 15)); echo $commentPreview;@endphp</td>
                                        <td>
                                            @if($review->profile_image)
                                                <img src="{{ asset($review->profile_image) }}" height="70px" width="70px" alt="image">
                                            @else
                                                <img src="{{ asset('assets/images/default-featured-image.jpg') }}" height="70px" width="70px" alt="Default Image">
                                            @endif
                                        </td>
                                        <td>
                                            <a href="{{ url('admin/review/' . $review->id . '/edit') }}"
                                                class="btn btn-success btn-sm">
                                                Edit
                                            </a>
                                            <a href="#" data-bs-toggle="modal" data-bs-target="#deleteModal" class="btn btn-danger btn-sm" onclick="setDeleteAction({{ $review->id }})"
                                            >Delete</a>

                                            
                                        </td>
                                    </tr>
                                @endforeach
                                @else
                                    <tr><td colspan="5" class="text-center">No reviews found.<td></tr>
                                @endif
                        </tbody>
                    </table>
                    <div>
                        {{ $reviews->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@push('script')
<script>
    window.addEventListener('close-modal', event => {
        $('#deleteModal').modal('hide');
    });

     function setDeleteAction(reviewId) {
        document.getElementById('review_id').value = reviewId;
    }

    document.addEventListener('DOMContentLoaded', function() {
            var deleteButtons = document.querySelectorAll('.delete-review');
            
            deleteButtons.forEach(function(button) {
                button.addEventListener('click', function(event) {
                    event.preventDefault();
                    var reviewId = document.getElementById('review_id').value;
                    
                    if (reviewId) {
                        fetch('/admin/review/' + reviewId, {
                            method: 'DELETE',
                            headers: {
                                'Content-Type': 'application/json',
                                'X-CSRF-TOKEN': '{{ csrf_token() }}'
                            },
                        })
                        .then(function(response) {
                        
                            location.reload();
                        
                        })
                        .catch(function(error) {
                            alert('Error deleting review: ' + error.message);
                        });
                    }
                });
            });
    });

   


</script>
@endpush

</div>

@endsection
