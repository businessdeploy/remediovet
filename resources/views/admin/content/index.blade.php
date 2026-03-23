@extends('layouts.admin',['layout'=>'content_management'])

@section('title', 'Content Management')

@section('content')

<div class="row">
    <div class="col-md-12">
        @if (session('message'))
            <div class="alert alert-success">{{session('message')}}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h4>
                    Content Management
                    <!-- <a href="{{ route('admin.content.create') }}" class="btn btn-primary btn-sm text-white float-end">Add New</a> -->
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>SR.No</th>
                            <th>Title</th>
                            <th>Type</th> 
                            <th>Status</th>                          
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($content as $value)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $value->title }}</td>
                                <td>{{ $value->type }}</td> 
                                <td>{{ ($value->status) ? 'Enable' : 'Disable' }}</td>                                  
                                <td>
                                    <a href="{{ route('admin.content.edit',[$value->id]) }}" class="btn btn-success btn-sm">
                                        Edit
                                    </a>
                                    <a onclick="return confirm('Are you sure to Delete?');"  href="{{ route('admin.content.delete',[$value->id]) }}" class="btn btn-danger btn-sm">
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
