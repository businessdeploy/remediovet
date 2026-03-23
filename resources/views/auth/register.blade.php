@extends('layouts.app',['layout' =>'login'])
@section('title', 'Register')
@section('content')
  <!-- user-profile-section  -->
  <section class="user-profile my-5">
    <div class="login-container py-5">
      <h1 class="fw-bolder text-center">Create Account</h1>
      <!-- detials header  -->
      <!-- <ul
        class="tabs profile-header-box d-flex my-5">
        <li class="active px-4 py-3 text-dark text-center" data-cont=".one">Sign In</li>
        <li class="px-4 py-3 text-dark text-center" data-cont=".two">Register</li> 
      </ul> -->

      <!-- which one to show  -->
      <div class="content">

        <!-- for dashboard  -->
        <!-- <div class="one">
            <div class="text-center">                
                <p>Please Sign in to access your full Account</p>
            </div>
            <form method="POST" action="{{ route('login') }}" class="login-form p-3 border rounded">
            @csrf            
                <div class="mb-3">
                    <label for="InputEmail" class="form-label">{{ __('Email Address') }}</label>
                    <input type="email" name="email" class="form-control form-control-lg @error('email') is-invalid @enderror" id="email" aria-describedby="emailHelp" value="{{ old('email') }}" autocomplete="email" autofocus>
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="InputPassword" class="form-label">{{ __('Password') }}</label>
                    <input type="password" name="password" class="form-control form-control-lg @error('password') is-invalid @enderror" id="InputPassword" required autocomplete="current-password">
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror                    
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                    <label class="form-check-label" for="ForCheck">{{ __('Remember Me') }}</label>
                </div>
                    <button type="submit" class="btn btn-lg btn-primary w-100 px-4 rounded-pill">{{ __('Login') }}</button>
                     @if (Route::has('password.request'))
                        <div class="my-4 text-center">
                            <a href="{{ route('password.request') }}" class="my-4 text-decoration-none text-dark">{{ __('Forgot Your Password?') }}</a>
                        </div>
                    @endif
            </form>
        </div> -->

        <!-- for orders  -->
        <div class="two">
          <div class="text-center">
                <!-- <h3>Welcome to Remedio Vet</h3> -->
                <p>Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our privacy policy.</p>
            </div>

            <form id="registrationForm" method="POST" action="{{ route('register') }}" class="login-form p-3 border rounded">
            @csrf
                <div class="mb-3">
                    <label for="exampleInputName1" class="form-label">{{ __('Name') }}</label>
                    <input type="text" id="name" class="form-control form-control-lg @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus >
                    @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">{{ __('Email Address') }}</label>
                    <input type="email" class="form-control form-control-lg @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" id="email" aria-describedby="emailHelp">

                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">{{ __('Password') }}</label>
                    <input type="password" class="form-control form-control-lg @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" id="password">

                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword2" class="form-label">{{ __('Confirm Password') }}</label>
                    <input  id="password-confirm" type="password" class="form-control form-control-lg" name="password_confirmation" required autocomplete="new-password">
                </div>
                <div class="g-recaptcha mb-3" data-sitekey="{{ env('RECAPTCHA_SITE_KEY') }}" data-callback="enableRegisterButton"></div>
                <span class="error-message mb-3" id="recaptcha_error" style="color:red;"></span>
                <!-- <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div> -->
                <button id="registerButton" type="submit" class="btn btn-lg btn-primary w-100 px-4 rounded-pill">{{ __('Register') }} <i class="fa-solid fa-arrow-right"></i></button>
            </form>
            <div class="container mt-5">
                <div class="col-md-12 row-block">
                    <a href="{{ route('google.login') }}" class="btn btn-google btn-block">
                        <i class="fab fa-google"></i>
                        <strong>Login With Google</strong>
                    </a>
                </div>
            </div>
        </div>

      </div>

    </div>
  </section>
<!-- <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Login') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="row mb-3">
                            <label for="email" class="col-md-4 col-form-label text-md-end">{{ __('Email Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>

                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div> -->
@endsection

