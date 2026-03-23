@extends('layouts.admin',['layout'=>'content_management'])
@section('title', 'Content Management')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Add Content
                    <a href="{{ route('admin.content.list') }}" class="btn btn-danger btn-sm text-white float-end">BACK</a>
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
                <form action="{{ route('admin.store.content') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Title</label>
                            <input type="text" name="title" class="form-control" placeholder="Title" required>            
                        </div>                                                   
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="type">Type</label>
                            <select  name="type" class="form-control" required>
                                <option value="">Select Type</option>
                                <option value="privacy">Privacy Policy</option>
                                <option value="shipping">Shipping Policy</option>
                                <option value="return">Return Policy</option>
                            </select>                                      
                        </div>                                                   
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12 mb-3">
                            <label for="description" class="mb-3"><strong>Description</strong></label>
                            <textarea id="description" name="description" rows="3" class="form-control"></textarea>                        
                        </div>  
                    </div>                    
                    <div class="row mb-3">
                        <div class="col-md-6">                             
                            <label for="status">Status</label>
                            <input type="checkbox" name="status"> (Checked = Enable, Unchecked = Disable)                        
                        </div>                        
                    </div> 
                    <hr>
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <div class="mb-3 text-center">
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Save</button>
                            </div>
                        </div>
                    </div>                                                  
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
