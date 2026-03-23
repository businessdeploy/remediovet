@extends('layouts.admin',['layout'=>'specialoffer'])

@section('title', 'Special Offers')

@section('content')

<div class="row">
    <div class="col-md-12">
        @if (session('message'))
            <div class="alert alert-success">{{session('message')}}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h4>
                    Special Offers
                    <a href="{{ route('admin.specialoffers.create') }}" class="btn btn-primary btn-sm text-white float-end">Add New</a>
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>SR.No</th>
                            <th>Title</th> 
                            <th>Image</th> 
                            <th>URL</th>
                            <th>Time</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($specialoffers as $value)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $value->title }}</td>
                                <td><img id="featured_image_preview" src="{{ asset($value->featured_image)  ?? 'https://ami-sni.com/wp-content/themes/consultix/images/no-image-found-360x250.png' }}" width="150px"  alt="Featured Image Preview" style="max-width: 100%;"></td>
                                <td>{{ $value->product_name }}</td>
                                <td>{{ $value->time }}</td>
                                <td>
                                    <a href="{{ route('admin.specialoffers.edit',[$value->id]) }}" class="btn btn-success btn-sm">
                                        Edit
                                    </a>
                                    <a onclick="return confirm('Are you sure to Delete?');"  href="{{ route('admin.specialoffers.delete',[$value->id]) }}" class="btn btn-danger btn-sm">
                                        Delete
                                    </a>                                    
                                 </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

                
            </div>
        </div>
    </div>
</div>

@endsection
