@extends('layouts.app',['layout'=>'thankyou'])

@section('title', 'Payment Cancel')

@section('content')

    <div class="thank-you-page d-flex justify-content-center align-items-center my-5">
        <div class="d-flex flex-column align-items-center gap-md-3 px-2">
            <h1>Payment Failed</h1>
            <p class="text-center">Your order payment has been failed. Please try again</p>
            <div class="text-center">
                <i class="fa-solid fa-ban" style="font-size: 100px; color: #ff852f;"></i>
                <!-- <img src="{{ asset('assets/images/tick.jpg') }}" alt="" style="max-width: 100px; max-height: 100px;"> -->
            </div>
            <!-- <h3>Check your Email</h3>
            <p class="text-center">If you did't receive any mail contact info@remediovet.com</p> -->
        </div>
    </div>
@endsection
