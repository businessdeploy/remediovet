@extends('layouts.admin',['layout'=>'subscribeform'])

@section('title', 'Subscibe Forms')

@section('content')

<div class="row">
    <div class="col-md-12">
        @if (session('message'))
            <div class="alert alert-success">{{session('message')}}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h4>
                   Subscribe Forms                   
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped" id="form_datatable">
                    <thead>
                        <tr>
                            <th>SR.No</th>
                            <th>Phone Number</th>                           
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($forms as $form)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $form->phone_number }}</td>
                               
                            </tr>
                        @endforeach
                    </tbody>
                </table>

              
            </div>
        </div>
    </div>
</div>

@endsection
