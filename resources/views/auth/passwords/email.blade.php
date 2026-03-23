@extends('layouts.app',['layout'=>'forget_password'])

@section('content')
<section class="user-profile my-5">
    <div class="login-container py-5">
      
      <!-- detials header  -->
   
      <!-- which one to show  -->
      <div class="content">
       
        <!-- for dashboard  -->
        <div class="one">            
            
            <h1 class="fw-bolder text-center">{{ __('Reset Password') }}</h1>
            <form method="POST" action="{{ route('password.email') }}" class="login-form p-3 border rounded">
            @csrf            
                <div class="mb-3">
                    <label for="InputEmail" class="form-label">{{ __('Email Address') }}</label>
                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <button type="submit" class="btn btn-lg btn-primary w-100 px-4 rounded-pill">{{ __('Send Password Reset Link') }} <i class="fa-solid fa-arrow-right"></i></button>
                     
            </form>
            @if (session('status'))
                <div class="alert alert-success" role="alert">
                    {{ session('status') }}
                </div>
            @endif
        </div>
      </div>

    </div>
  </section>
@endsection
