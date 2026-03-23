@extends('layouts.admin',['layout'=>'faq'])

@section('title', 'FAQ')

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Add FAQ
                    <a href="{{ url('admin/faq') }}" class="btn btn-danger btn-sm text-white float-end">BACK</a>
                </h4>
            </div>
            <div class="card-body">
                @if ($errors->any())
                    <div class="alert alert-warning">
                        @foreach ($errors->all() as $error)
                            <div>{{ $error }}</div>
                        @endforeach
                    </div>
                @endif
                <form action="{{ url('admin/faq/faq-item/') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="mb-3">
                            <label for="title">Title</label>
                            <input type="text" name="title" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="title">Description</label>
                            <textarea name="description" id="description" class="form-control"></textarea>
                           
                        </div>
                       
                        
                        <div class="mb-3">
                            <input type="hidden" name="faqid" value="{{ $faq->id }}" class="form-control">
                            <button type="submit" class="btn btn-primary btn-sm float-end">Save</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
           <div class="card-body">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>SR.No</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($faqitems as $faqitem)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $faqitem->title }}</td>
                                <td>{!! $faqitem->description !!}</td>
                                <td>
                                    <!--<a href="{{ url('admin/faq/faq-item/edit/'.$faqitem->id) }}" class="btn btn-success btn-sm">-->
                                    <!--    Edit-->
                                    <!--</a>-->
                                    <a onclick="return confirm('Are you sure to Delete?');"  href="{{ url('admin/faq/faq-item/delete/'.$faqitem->id) }}" class="btn btn-danger btn-sm">
                                        Delete
                                    </a>
                                    
                                 </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

                <div>
                    {{ $faqitems->links() }}
                </div>
            </div>
        
    </div>
</div>

@endsection
