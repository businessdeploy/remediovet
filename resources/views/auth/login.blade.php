@extends('layouts.app',['layout' =>'login'])
@section('title', 'Login')
@section('content')
  <!-- user-profile-section  -->
  <section class="user-profile my-5">
    <div class="login-container py-5">
      <h1 class="fw-bolder text-center">Login</h1>
      <!-- detials header  -->
   
      <!-- which one to show  -->
      <div class="content">

        <!-- for dashboard  -->
        <div class="one">
            <div class="text-center">
                <!-- <h3>Welcome Back</h3> -->
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
                    <!-- <div class="g-recaptcha" data-sitekey="{{ env('RECAPTCHA_SITE_KEY') }}"></div> -->
                    <input type="checkbox" class="form-check-input" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                    <label class="form-check-label" for="ForCheck">{{ __('Remember Me') }}</label>
                </div>
                    <button type="submit" class="btn btn-lg btn-primary w-100 px-4 rounded-pill">{{ __('Login') }} <i class="fa-solid fa-arrow-right"></i></button>
                     @if (Route::has('password.request'))
                        <div class="my-4 text-center">
                            <a href="{{ route('password.request') }}" class="my-4 text-decoration-none text-dark">{{ __('Forgot Your Password?') }}</a>
                        </div>
                    @endif
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

        <!-- for orders  -->
       <!--  <div class="two">
          <div class="text-center">
                <h3>Welcome to Remedio Vet</h3>
                <p>Please Register to Sign in</p>
            </div>

            <form class="login-form p-3 border rounded">
                <div class="mb-3">
                    <label for="exampleInputName1" class="form-label">Name</label>
                    <input type="text" class="form-control form-control-lg" id="exampleInputName1">
                  </div>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Email address</label>
                  <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" aria-describedby="emailHelp">
                  <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                </div>
                <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label">Password</label>
                  <input type="password" class="form-control form-control-lg" id="exampleInputPassword1">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword2" class="form-label">Re-Enter Your Password</label>
                    <input type="password" class="form-control form-control-lg" id="exampleInputPassword2">
                  </div>
                <div class="mb-3 form-check">
                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                  <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div>
                <button type="submit" class="btn btn-lg btn-primary w-100 px-4 rounded-pill">Register</button>
            </form>

        </div> -->

      </div>

    </div>
  </section>
@endsection

