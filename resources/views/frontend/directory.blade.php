@extends('layouts.app',['layout'=>'directory'])
@section('title', 'RemedioVet - Directory')
@section('content')
  <!--section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12 mt-5">
                        <h1 class="fw-bold d-flex justify-content-center category_heading mb-5 directory_subtypes splash-logo">{{ $type }}</h1>    
                    </div>
                </div>
            </div>
        </section-->
		 
		 <section class="inner-banner">
			<div class="container">
			<div class="inner-title text-center">
				<h1>{{ $type }}</h1>
			</div>
			</div>
		</section>
         <section class="map-directory">
            <div class="container">
                <iframe class="custom_map_1" src="https://maps.google.com/maps?q=Remedio%20Vet%20-%20Supplements%20%26%20Meds%20For%20Pets&t=m&z=12&output=embed&iwloc=near" 
                width="100%" height="400" style="border:0;" 
                allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </section>
        <!-- city search section  -->
        <section class="py-5 my-5">
            <div class="container">
                <form action="{{ route('frontend.directory',[$type]) }}" method="post">       
                @csrf         
                    <div class="row px-5 g-4">
                        <div class="col-sm-12 col-md-10 col-lg-10">
                            <input type="text" name="city" id="city-search" class="form-control vet_form_input" placeholder="Enter City Name"  required>
                        </div>
                        <div class="col-sm-12 col-md-2 col-lg-2">
                        <button type="submit" class="relocate_btn px-4 py-2 fs-5 border-0 d-block mx-auto">
                            Submit
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- Hospital detail section  -->
        <section>
            <div class="container">
                <div class="d-flex flex-column gap-4">
                    <!-- address one  -->
                    @foreach($getDirectories as $value)
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-5 col-xl-6">
                            <span><img src="{{ asset('assets/images/location-icon.png') }}" alt="icon"></span>
                            <div>
                                <a href="{{ $value->url }}" target="_blank" class="d-flex align-items-center gap-1 text-decoration-none text-dark"><h2 class="fw-bolder">{{ $value->title }}</h2></a>
                                <p>{{ $value->address }}</p>
                                <a href="{{ $value->url }}" target="_blank" class="d-flex align-items-center gap-1 text-decoration-none text-dark"> <span>Get direction</span> <i class="fa-solid fa-chevron-right fa-xs"></i> </a>
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
							<div class="directory-contact">
							   @if($value->phone)
                                <h3><span><img src="{{ asset('assets/images/phone.png') }}" alt=""> <span class="fw-bolder">Contact No.</span></span>  </h3>                          
                                <span>{{ $value->phone }}</span>
                            @endif
							</div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-3">
                            <h3 class="fw-bolder">Hours</h3>
                            <div class="d-flex flex-column gap-2">
                                @foreach($value->hours as $hour)
                                <div class="d-flex directory-hours gap-4">
                                    @if($hour->days)
                                        <span>{{ $hour->days }}</span>
                                    @endif
                                    <span>{{ $hour->timing }}</span>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <hr>
                    @endforeach                  
                  <br>
                </div>
            </div>

        </section>
@endsection