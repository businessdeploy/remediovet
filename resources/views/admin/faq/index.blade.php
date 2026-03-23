@extends('layouts.admin',['layout'=>'faq'])

@section('title', 'FAQ')

@section('content')

<div class="row">
    <div class="col-md-12">
        @if (session('message'))
            <div class="alert alert-success">{{session('message')}}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h4>
                    FAQ Types 
                    <a href="{{ url('admin/faq/create') }}" class="btn btn-primary btn-sm text-white float-end">Add Faq</a>
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>SR.No</th>
                            <th>Title</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($faqs as $faq)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $faq->title }}</td>
                                <td>{{ $faq->status == '1' ? 'Hidden':'Visible' }}</td>
                                <td>
                                    <a href="{{ url('admin/faq/edit/'.$faq->id) }}" class="btn btn-success btn-sm">
                                        Edit
                                    </a>
                                    <a onclick="return confirm('Are you sure to Delete?');"  href="{{ url('admin/faq/delete/'.$faq->id) }}" class="btn btn-danger btn-sm">
                                        Delete
                                    </a>
                                    <a href="{{ route('add_faq_item',[$faq->id]) }}" class="btn btn-success btn-sm">
                                        Add Item
                                    </a>
                                 </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

                <div>
                    {{ $faqs->links() }}
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
