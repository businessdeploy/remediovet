@extends('layouts.admin',['layout'=>'directory'])

@section('title', 'Directory')

@section('content')

<div class="row">
    <div class="col-md-12">
        @if (session('message'))
            <div class="alert alert-success">{{session('message')}}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h4>
                    Directories
                    <a href="{{ route('admin.directory.create') }}" class="btn btn-primary btn-sm text-white float-end">Add New</a>
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>SR.No</th>
                            <th>Title</th>
                            <th>Type</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($directories as $value)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $value->title }}</td>
                                <td>{{ ucwords($value->type) }}</td>
                                <td>{{ $value->address }}</td>
                                <td>{{ $value->city }}</td>
                                <td>
                                    <a href="{{ url('admin/directory/edit/'.$value->id) }}" class="btn btn-success btn-sm">
                                        Edit
                                    </a>
                                    <a onclick="return confirm('Are you sure to Delete?');"  href="{{ url('admin/directory/delete/'.$value->id) }}" class="btn btn-danger btn-sm">
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
