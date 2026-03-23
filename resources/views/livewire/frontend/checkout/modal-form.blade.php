<!-- Brand Create Modal -->
<div wire:ignore.self class="modal fade" id="addBrandModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5>Sign In</h5>
                <button type="button" class="btn-close"  data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <!-- Tab Navigation -->
            <ul class="nav nav-tabs">
               <!--  <li class="nav-item">
                    <a class="nav-link active" data-bs-toggle="tab" href="#signInTab">Sign In</a>
                </li> -->
                <!-- <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="tab" href="#registerTab">Register</a>
                </li> -->
            </ul>

            <!-- Tab Content -->
            <div class="tab-content">
                <!-- Sign In Tab Content -->
                <div class="tab-pane fade show active" id="signInTab">
                    <form class="login-form p-3 border rounded" method="POST" action="{{ route('login') }}">
                        @csrf
                        <input type="hidden" name="return_url" value="checkout">
                        <!-- Sign In Form Fields -->
                        <div class="one">
                            <form class="login-form p-3 border rounded">
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
                                  <label for="InputPassword" class="form-label">Password</label>
                                  <input type="password" name="password" class="form-control form-control-lg @error('password') is-invalid @enderror" id="InputPassword" required autocomplete="current-password">
                                  @error('password')
                                      <span class="invalid-feedback" role="alert">
                                          <strong>{{ $message }}</strong>
                                      </span>
                                  @enderror
                                </div>
                                <button type="submit" class="btn btn-lg btn-primary w-100 px-4 rounded-pill">{{ __('Login') }} <i class="fa-solid fa-arrow-right"></i></button>
                            </form>
                        </div>
                    </form>
                </div>

                
        </div>
    </div>
</div>
