@extends('layouts.app',['layout'=>'content'])
@section('title', 'Shipping Policy')
@section('content')

<div class="content_management container py-5">

      <div class="text-center">
        <div class="content-management-heading my-5 d-inline-block position-relative">
          <h1 class="fw-bold d-inline-block position-relative">{{ $shipping->title }}</h1>
          <span class="splash position-absolute"><img src="{{ asset('assets/images/splash.png') }}" alt=""></span>
        </div>
      </div>

      <div class="d-flex flex-column gap-2 gap-lg-4">
        <div class="d-flex flex-column gap-1 gap-lg-3 content_descrip">
            {!! $shipping->description !!} 
        </div>
        
      </div>
    </div>  
@endsection