@extends('layouts.admin',['layout'=>'pet_flight_form'])

@section('title', 'Pet Relocate')

@section('content')

<div class="row">
    <div class="col-md-12">
        @if (session('message'))
            <div class="alert alert-success">{{session('message')}}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h4>
                   Pet Relocate Forms                   
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped" id="form_datatable">
                    <thead>
                        <tr>
                            <th>SR.No</th>
                            <th>Owner Name</th>
                            <th>Phone Number</th> 
                            <th>Pet Type</th>  
                            <th>Pet Name</th>
                            <th>Pet Breed</th>
                            <th>Pet Age</th>
                            <th>Pet Gender</th>
                            <th>Origin</th> 
                            <th>Destination</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($forms as $form)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $form->owner_name }}</td>
                                <td>{{ $form->phone_number }}</td>
                                <td>{{ ucwords($form->pet_type) }}</td>
                                <td>{{ $form->pet_name }}</td>
                                <td>{{ $form->pet_breed }}</td>
                                <td>{{ $form->pet_age }}</td>
                                <td>{{ $form->pet_gender }}</td>
                                <td>{{ $form->origin }}</td>
                                <td>{{ $form->destination }}</td>                               
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                
            </div>
        </div>
    </div>
</div>

@endsection
