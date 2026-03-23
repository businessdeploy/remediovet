@extends('layouts.admin',['layout'=>'payMethod'])

@section('title', 'Payment Method')

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Add Payment Method
                    <a href="{{ url('admin/payment.methods') }}" class="btn btn-danger btn-sm text-white float-end">BACK</a>
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
                <form action="{{ route('admin.store.payment.methods') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-12">                            
                            <label for="name">Title <span class="text-danger">*</span></label>
                            <input type="text" name="name" class="form-control" placeholder="Name" required>            
                        </div>                        
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12"> 
                            <label for="address">Published Key</label>
                            <input type="text" name="published_key" class="form-control">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12"> 
                            <label for="address">Secret Key</label>
                            <input type="text" name="secret_key" class="form-control">
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
