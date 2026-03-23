@extends('layouts.app',['layout'=>'thankyou'])

@section('title', 'Thank You for Shopping')

@section('content')

    <div class="thank-you-page d-flex justify-content-center align-items-center my-5">
        <div class="d-flex flex-column align-items-center gap-md-3 px-2">
            <h1>Thank YOU!</h1>
            <p class="text-center">Your order has been placed successfully. You will receive an email confirmation shortly.</p>
            <div class="text-center">
                <img src="{{ asset('assets/images/tick.jpg') }}" alt="" style="max-width: 100px; max-height: 100px;">
            </div>
            <h3>Check your Email</h3>
            <p class="text-center">If you did't receive any mail contact info@remediovet.com</p>
        </div>
    </div>
@endsection
