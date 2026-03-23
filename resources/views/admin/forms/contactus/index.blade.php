@extends('layouts.admin',['layout'=>'contact_us_forms'])

@section('title', 'Contact Us Forms')

@section('content')

<div class="row">
    <div class="col-md-12">
        @if (session('message'))
            <div class="alert alert-success">{{session('message')}}</div>
        @endif
        <div class="card">
            <div class="card-header">
                <h4>
                   Contact Us Forms                   
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped" id="form_datatable">
                    <thead>
                        <tr>
                            <th>SR.No</th>
                            <th>Name</th> 
                            <th>Email</th> 
                            <th>Phone</th> 
                            <th>Message</th>                           
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($forms as $form)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $form->fname }}</td>
                                <td>{{ $form->email }}</td>
                                <td>{{ $form->phone }}</td>
                                <td>{{ $form->message }}</td>
                               
                            </tr>
                        @endforeach
                    </tbody>
                </table>

                
            </div>
        </div>
    </div>
</div>

@endsection
