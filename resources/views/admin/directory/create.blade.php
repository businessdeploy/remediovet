@extends('layouts.admin',['layout'=>'directory'])

@section('title', 'Directory')

@section('content')

<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4>
                    Add Directory
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
                <form action="{{ url('admin/directory') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row mb-3">
                        <div class="col-md-6">                            
                            <label for="title">Title <span class="text-danger">*</span></label>
                            <input type="text" name="title" class="form-control" placeholder="Title" required>            
                        </div>
                        <div class="col-md-6">                            
                            <label for="type">Type <span class="text-danger">*</span></label>
                            <select name="type"  class="form-control" required>
                                <option value="">Please Select Type</option>
                                <option value="vets">Vet</option>
                                <option value="training">Training</option>
                                <option value="grooming">Grooming</option>
                                <option value="adopt">Buy/Adopt</option>
                            </select>           
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12"> 
                            <label for="address">Address <span class="text-danger">*</span></label>
                            <input type="text" name="address" class="form-control" required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6"> 
                            <label for="phone">Phone <span class="text-danger">*</span></label>
                            <input type="text" name="phone" class="form-control" required>
                        </div>
                        <div class="col-md-6"> 
                            <label for="city">City <span class="text-danger">*</span></label>
                            <input type="text" name="city" class="form-control" required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-12"> 
                            <label for="url">Url</label>
                            <input type="text" name="url" class="form-control">
                        </div>
                    </div>
                    <hr>
                    <!-- Directory Hours Section -->
                    <div class="row">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <h3>Directory Hours</h3>
                            </div>
                            <div class="col-md-6 d-flex align-items-center justify-content-end">
                                <button type="button" class="btn btn-success btn-sm add-btn">Add More</button>
                            </div>
                        </div>
                        <div id="directoryHoursContainer" class="col-md-12">
                            <div class="row mb-3 directory-row">
                                <div class="col-md-4">
                                    <label for="day">Day</label>
                                    <input type="text" name="days[]" class="form-control">
                                </div>
                                <div class="col-md-4">
                                    <label for="timing">Timing</label>
                                    <input type="text" name="timings[]" class="form-control">
                                </div>
                                <div class="col-md-4 d-flex align-items-center justify-content-center">
                                    <!-- Remove button for existing row -->
                                    <button type="button" class="btn btn-danger btn-sm remove-btn">Remove</button>
                                </div>
                            </div>
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
