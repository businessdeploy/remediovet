@extends('layouts.app',['layout'=>'about'])

@section('title', $abouts[0]->meta_title ?? 'About Us')

@section('meta_keyword', $abouts[0]->meta_keyword)

@section('meta_description', $abouts[0]->meta_description)

@section('content')
      <!-- who we are section  -->
       @foreach ($abouts as $key => $about)
		<section class="inner-banner">
			<div class="container">
			<div class="inner-title text-center">
				<h1>About Us</h1>
			</div>
			</div>
		</section>
	  <section class="about-block01">
        <div class="container">
          <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 custom_mobile_img">
              <img class="aboutus_dog" src="{{ asset('assets/images/aboutusdog.jpg') }}" alt="img"/>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 mt-4">
              <h2 class="fw-bold d-flex">Who We Are</h2>
              <p class="fs-5 w-75 about_ustxt">                 
                  {!! $about->who_we_are !!}                 
              </p>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 custom_desktop_img">
              <img class="aboutus_dog" src="{{ asset($about->who_we_are_img) }}" alt="img" />
            </div>
          </div>
        </div>
      </section>
      
      <!-- Profit section  -->
      <section class="about-block2">
        <div class="container">
          <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
              <h2 class="d-flex justify-content-center">▼・ᴥ・▼</h2>
            </div>
            <div class="col-sm-12 col-md-2 col-lg-2"></div>
            <div class="col-sm-12 col-md-8 col-lg-8">
              <h1
                class="fw-bold d-flex justify-content-center category_heading custom_profittxt"
              >
                   {!! $about->we_proud !!}
              </h1>
            </div>
            <div class="col-sm-12 col-md-2 col-lg-2"></div>
            <div>
              <img
                class="dogs_grp w-100"
                src="{{ asset($about->we_proud_img) }}"
                alt="img"
              />
            </div>
          </div>
        </div>
      </section>
      <!-- our impact  -->
      <section>
        <div class="container">
          <div class="row py-5 mt-5">
            <div class="col-sm-12 col-md-6 col-lg-6">
              <img class="aboutus_dog" src="{{ asset($about->our_impact_img) }}" alt="img" />
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 mt-4">
              <h2 class="fw-bold d-flex">Our Impact</h2>
              <p class="fs-5 w-75 about_ustxt">
                   {!! $about->our_impact !!}
              </p>
            </div>
          </div>
        </div>
      </section>
      <!-- Mission and Promise  -->
      <section>
        <div class="container">
          <div class="row custom_mission mb-lg-5">
            <div class="col-sm-12 col-md-6 col-lg-6 custom_mobile_img ">
              <img class="aboutus_dog" src="{{ asset($about->mission_img) }}" alt="img" />
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 mt-4">
              <h2 class="fw-bold d-flex">Mission & Promise</h2>
              <p class="fs-5 w-75 about_ustxt">
                  {!! $about->mission !!}
              </p>              
              <a href="{{ route('frontend.shop') }}" class="text-decoration-none">
              <button
                type="button"
                class="relocate_btn my-3 px-4 py-2 fs-5 border-0"
              >Visit Our Shop              
              </button></a>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 custom_desktop_img">
              <img class="aboutus_dog" src="{{ asset('assets/images/bulldog.jpg') }}" alt="img" />
            </div>
          </div>
        </div>
      </section>
    @endforeach
@endsection