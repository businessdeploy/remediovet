@extends('layouts.admin',['layout'=>'content_management'])
@section('title', 'Content Management')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Edit Content
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
                <form action="{{ route('edit.content',[$content->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="title">Title <span class="text-danger">*</span></label>
                            <input type="text" name="title" class="form-control" placeholder="Title" value="{{ $content->title }}" required>            
                        </div>
                                                   
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="type">Type <span class="text-danger">*</span></label>
                            <select  name="type" class="form-control" required>
                                <option value="">Select Type</option>
                                <option value="privacy" {{ ($content->type == 'privacy') ? 'selected' : ''}}>Privacy Policy</option>
                                <option value="shipping" {{ ($content->type == 'shipping') ? 'selected' : ''}}>Shipping Policy</option>
                                <option value="return" {{ ($content->type == 'return') ? 'selected' : ''}}>Return Policy</option>
                            </select>                                      
                        </div>                                                   
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12 mb-3">
                            <label for="description" class="mb-3"><strong>Description <span class="text-danger">*</span></strong></label>
                            <textarea id="description" name="description" rows="3" class="form-control" required>{{ $content->description }}  </textarea>                            
                        </div>  
                    </div>                    
                    <div class="row mb-3">
                        <div class="col-md-6">                             
                            <label for="status">Status</label>
                            <input type="checkbox" name="status" {{ ($content->status) ? 'checked' : '' }} > (Checked = Enable, Unchecked = Disable)                        
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
