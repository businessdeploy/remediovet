@extends('layouts.admin',['layout'=>'dashboard'])

@section('title', 'Dashboard')

@section('content')
<style>
    .height-fix{
        min-height: 140px !important;
    }
</style>
<div class="row">
    <div class="col-md-12 grid-margin">
        @if(Session('message'))
            <h2 class="alert alert-success">{{ Session('message') }}</h2>
        @endif

        <div class="me-md-3 me-xl-5">
            <h2>Dashboard</h2>
            <p class="mb-md-0">Your analytics dashboard template.</p>
            <hr>
        </div>

        <div class="row">
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">Total Orders</label>
                    <h4 class="my-2">{{ $totalOrder }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/orders') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">Today's Orders</label>
                    <h4 class="my-2">{{ $todayOrder }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/orders') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">This Month's Orders</label>
                    <h4 class="my-2">{{ $thisMonthOrder }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/orders') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">This Year's Orders</label>
                    <h4 class="my-2">{{ $thisYearOrder }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/orders') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">Total Products</label>
                    <h4 class="my-2">{{ $totalProducts }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/product') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
        </div>
        <hr>

        <div class="row">
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">Total Categories</label>
                    <h4 class="my-2">{{ $totalCategories }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/category') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">Total Brands</label>
                    <h4 class="my-2">{{ $totalBrands }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/brands') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">All Users</label>
                    <h4 class="my-2">{{ $totalAllUsers }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/users') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">Total Users</label>
                    <h4 class="my-2">{{ $totalUser }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/users') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">Total Admins</label>
                    <h4 class="my-2">{{ $totalAdmin }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/users') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">Donate Forms</label>
                    <h4 class="my-2">{{ $donateFormCount }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/donate-forms') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">Pet Relocate Forms</label>
                    <h4 class="my-2">{{ $petRelocateCount }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/pet-flight-forms') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">Contact Us Forms</label>
                    <h4 class="my-2">{{ $contactUsCount }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/contact-us-forms') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div> 
            <div class="col-md-2">
                <div class="card card-body shadow-lg text-dark mb-3  rounded height-fix p-4">
                    <label class="fw-bold text-uppercase">Subscribe Forms</label>
                    <h4 class="my-2">{{ $subscribeFormCount }}</h4>
                    {!! auth()->user()->role_as != 3 ? '<a href="' . url('admin/subscribe-forms') . '" class="text-dark text-decoration-none">View</a>' : '' !!}
                </div>
            </div>             
        </div>
        <hr>
        <div class="row">
            
        </div>

    </div>
</div>

@endsection
