@extends('layouts.admin',['layout'=>'blog'])

@section('title', 'Blogs')

@section('content')

<div class="row">
    <div class="col-md-12">
        @if (session('message'))
            <div class="alert alert-success">{{session('message')}}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h4>
                    Blogs
                    <a href="{{ route('admin.blogs.create') }}" class="btn btn-primary btn-sm text-white float-end">Add New</a>
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped" id="form_datatable">
                    <thead>
                        <tr>
                            <th>SR.No</th>
                            <th>Title</th> 
                            <th>Category</th>                        
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $list=[
                                'pet_flight' => "Pet Flight"
                            ];
                        @endphp
                        @foreach ($blogs as $value)

                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $value->title }}</td> 
                                <td>{{ $value->category }}</td>                                
                                <td>
                                    <a href="{{ route('admin.blogs.edit',[$value->id]) }}" class="btn btn-success btn-sm">
                                        Edit
                                    </a>
                                    <a onclick="return confirm('Are you sure to Delete?');"  href="{{ route('admin.blogs.delete',[$value->id]) }}" class="btn btn-danger btn-sm">
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
