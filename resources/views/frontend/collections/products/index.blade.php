@extends('layouts.app',['layout'=>'products'])

@section('title')
    Shop
@endsection

@section('meta_keyword')
    {{ $category->meta_keyword }}
@endsection

@section('meta_description')
    {{ $category->meta_description }}
@endsection

@section('content')
    <section class="custom-top-bgimg">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12 py-5">
                    <h1 class="fw-bold d-flex justify-content-center quotes_heading">Shop</h1>
                    <img src="{{ asset('assets/images/white-underline.png') }}" class="mx-auto d-block" alt="img">
                    @include('frontend.breadcrumb')  
                </div>
            </div>
        </div>
    </section>
    <div class="py-3 py-md-5">
        <div class="container">
            <!-- <div class="row">             -->

                <livewire:frontend.product.index :category="$category"/>

            <!-- </div> -->
        </div>
    </div>

@endsection
