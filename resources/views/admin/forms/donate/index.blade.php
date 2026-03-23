@extends('layouts.admin',['layout'=>'donate'])

@section('title', 'Donate Forms')

@section('content')

<div class="row">
    <div class="col-md-12">
        @if (session('message'))
            <div class="alert alert-success">{{session('message')}}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h4>
                   Donate Forms                   
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped" id="form_datatable">
                    <thead>
                        <tr>
                            <th>SR.No</th>
                            <th>Name</th>
                            <th>Age</th> 
                            <th>Phone Number</th>   
                            <th>City</th>
                            <th>Service</th>                             
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($forms as $form)
                            @php
                                $list=[
                                    '1'=>"I can volunteer time",
                                    '2'=>"I can donate money",
                                    '3'=>"I can do both",
                                ];
                            @endphp
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $form->name  }}</td>
                                <td>{{ $form->age  }}</td>
                                <td>{{ $form->phone_number  }}</td>
                                <td>{{ $form->city  }}</td>
                                <td>{{ $list[$form->service] ?? $form->service  }}</td>
                               
                            </tr>
                        @endforeach
                    </tbody>
                </table>

            
            </div>
        </div>
    </div>
</div>

@endsection
