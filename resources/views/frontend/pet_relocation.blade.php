@extends('layouts.app',['layout'=>'pet_relocate'])

@section('title', $flight->meta_title ?? 'Pet Relocation')

@section('meta_keyword', $flight->meta_keyword)

@section('meta_description', $flight->meta_description)

@section('content')
 <!-- top banner section  -->

    <style>
      .flight-banner:hover{
        cursor: pointer;
      }
    </style>
    <section>
      <div class="row m-0">
        <div class="col-sm-12 col-md-12 col-lg-12 p-0 flight-banner">
          <img class="w-100 scrollToQuote"  src="{{ asset($flight->main_banner) }}" alt="img">
        </div>
      </div>
    </section>
    <!-- Best Pet Relocation Service Section  -->
    <section class="custom_mobile_relocation pet-relcoation-block01">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-lg-6">
            <div>
              <h1 class="pet_service fw-bold">Best Pet Relocation Service</h1>
              <h3 class="fw-bold category_heading">{{ $flight->best_service_heading }}</h3>
              <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">
            </div>
            <span>
              <p>{!! $flight->best_service_content !!}</p>
            </span>
            <div class="border relocate_border">
              <p class="fw-bold">{{ $flight->best_service_sub_heading }}</p>
            </div>
          </div>
          <div class="col-sm-12 col-md-12 col-lg-6" >
            <img class="w-100" src="{{ asset($flight->best_service_image) }}" alt="img">
          </div>
        </div>
      </div>
    </section>
    <!-- Get A Quote Section  -->
<section class="pet-relocation-GetAQuote">
  <div class="container">
  <div class="pet-relocation-GetAQuote-panel">
	<div class="pet-location-title mb-3">
		<h1 class="fw-bold d-flex justify-content-center quotes_heading">Get A Quote</h1>
		<img src="{{ asset('assets/images/white-underline.png') }}" class="mx-auto d-block" alt="img">
	</div>
    <form id="saveRelocateForm" method="POST">
      @csrf 
    <div class="row">        
        <div class="col-sm-12 col-md-6 col-lg-4 py-2">
          <input class="custom_input_quote" type="text" placeholder="Name of Owner" id="owner_name" name="owner_name">
          <span class="error-message" id="owner_name_error"></span>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-4 py-2">
          <input class="custom_input_quote" type="email" placeholder="Email" id="email" name="email">
          <span class="error-message" id="email_error"></span>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-4 py-2">
          <input class="custom_input_quote" type="tel" placeholder="Phone Number" id="phone_number" name="phone_number"
            >
          <span class="error-message" id="phone_number_error"></span>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-4 py-2">
          <select class="form-select custom_input_quote" name="pet_type" id="pet_type" aria-label="Default select example">
            <option value="">Select Type of Pet</option>
            <option value="dog">Dog</option>
            <option value="cat">Cat</option>
            <option value="horse">Horse</option>
            <option value="cattle">Cattle</option>
            <option value="other">Others</option>
          </select>
          <span class="error-message" id="pet_type_error"></span>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-4 py-2">
          <input class="custom_input_quote" type="text" placeholder="Name of Pet" id="pet_name" name="pet_name">
          <span class="error-message" id="pet_name_error"></span>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-4 py-2">
          <input class="custom_input_quote" type="text" placeholder="Enter Pet Breed" id="pet_breed" name="pet_breed">
          <span class="error-message" id="pet_breed_error"></span>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-6 py-2">
          <input class="custom_input_quote custom_pet_age" type="number" placeholder="Enter Pet Age" id="pet_age"
            name="pet_age" min="1" max="50">
          <span class="error-message" id="pet_age_error"></span>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-6 py-2">
          <select class="form-select custom_input_quote custom_pet_age" name="pet_gender" id="pet_gender" aria-label="Default select example">
            <option value="">Select Pet Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
          </select>
          <span class="error-message" id="pet_gender_error"></span>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-4 py-2">
          <input class="custom_input_quote" type="text" placeholder="Origin" id="origin" name="origin">
          <span class="error-message" id="origin_error"></span>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-4 py-2">
          <input class="custom_input_quote" type="text" placeholder="Destination" id="destination" name="destination">
          <span class="error-message" id="destination_error"></span>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-4 py-2">
          <button type="button" id="submit_quote_btn_1" onclick="submitForm()" class="btn btn-lg custom_relocation_submit">Submit</button>
        </div>
        <div class="message" id="quote_1_success_msg" style="color: green;"></div>
        <span class="position-relative">
          <img src="{{ asset('assets/images/bannerside.png') }}" class="custom_side_bannerimg position-absolute top-50 start-100"
                alt="img">
        </span>
    </div>
    </form>
  </div>
  </div>
</section>

 <section class="pet-relcoation-block02 text-center">
      <div class="container">
            <div>
              <h2 class="pet_service fw-bold">Pet Flights</h2>
              <h1 class="fw-bold category_heading">{{ $flight->pet_flight_heading }}</h1>
              <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">
            </div>
            <p>{{ $flight->pet_flight_content }}</p>
			<div class="mx-auto image_pet"><img src="{{ asset($flight->pet_flight_image) }}" class="img-fluid" alt="Pet Relocation image"></div>
      </div>
    </section>
	
	<!-- Our Services Section  -->
    <section class="relocate-services brands_bg mt-5">
      <div class="container">
        <div class="">
          <div class="mb-3">
            <h3 class="pet_service fw-bold text-center">Relocate your pet with care</h3>
            <h1 class="fw-bold d-flex justify-content-center category_heading">Our Services</h1>
            <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
          </div>
          <div class="row justify-content-center">
            <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-4">
              <div class="white_box bg-white">
                <div class="custom_pet_img">
                  <img class="custom_international" src="{{ asset('assets/images/international_pet_relocation.webp') }}">
                </div>
                <div class="position-relative custom_box_content">
                    <h4 class="text-center fw-bold">International Pet Relocation</h4>
                    <p class="text-center">For your convenience, we pick up, relocate, and deliver your pet from one doorstep to next.</p>
                </div>
              </div>
            </div>
			<div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-4">
              <div class="white_box bg-white">
                <div class="custom_pet_img">
                  <img class="custom_international" src="{{ asset('assets/images/door_to_door_service.webp') }}">
                </div>
                <div class="position-relative custom_box_content">
					<h4 class="text-center fw-bold">Door to Door <br>Service</h4>
					<p class="text-center">For your convenience, we pick up, relocate, and deliver your pet from one doorstep to next.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
	  <section class="pet-relcoation-block03">
      <div class="container">
    
            <div class="text-center petlocation-title-03">
              <h1 class="fw-bold category_heading">{{ $flight->transport_heading }}</h1>
              <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">
			  <p>{{ $flight->transport_content }}</p>
            </div>
             
				<div class="row d-flex justify-content-center text-center">
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
						<div class="border-petlocation-inner mb-3">
						<h5 class="fw-bold">{{ $flight->transport_tab_1_heading }}</h5>
						<p>{{ $flight->transport_tab_1_content }}</p>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
						<div class="border-petlocation-inner mb-3">
						<h5 class="fw-bold">{{ $flight->transport_tab_2_heading }}</h5>
						<p>{{ $flight->transport_tab_2_content }}</p>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
						<div class="border-petlocation-inner mb-3">
						<h5 class="fw-bold">{{ $flight->transport_tab_3_heading }}</h5>
						<p>{{ $flight->transport_tab_3_content }}</p>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
						<div class="border-petlocation-inner mb-3">
						<h5 class="fw-bold">{{ $flight->transport_tab_4_heading }}</h5>
						<p>{{ $flight->transport_tab_4_content }}</p>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
						<div class="border-petlocation-inner mb-3">
						<h5 class="fw-bold">{{ $flight->transport_tab_5_heading }}</h5>
						<p>{{ $flight->transport_tab_5_content }}</p>
						</div>
					</div>
					
				</div>
      </div>
    </section>

    
    <!-- Contact Us Today Section -->
    <section class="custom_beloved_bg">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-8 col-lg-8">
            <h1 class="fw-bold text-center text-white relocate_txt">{{ $flight->beloved_heading }}</h1>
            <h3 class="fw-bold text-center">{{ $flight->beloved_sub_heading }}</h3>
              <div class="d-flex mt-4 are-looking-getaquote">
                <div class="d-flex dashed_border">
                  <div>
                    <i class="fa fa-phone fs-1 text-white p-3" aria-hidden="true"></i>
                  </div>
                  <div>
                    <p class="text-white fw-bold mb-0">Contact Us Today</p>
                    <a href="tel:{{ $flight->beloved_phone }}" class="number-text text-decoration-none">{{ $flight->beloved_phone }}</a>
                  </div>
                </div>
                <div class="">
                  <div>
               <button class="custom_getbtn text-white scrollToQuote">
                <i class="fa fa-paper-plane fs-3" aria-hidden="true"></i>
                <div>Get A Quote</div></button>
              </div>
                  </div>
                </div>
              </div>
          <div class="col-sm-4 col-md-4 col-lg-4">
            <img src="{{ asset($flight->beloved_image) }}"
              class="position-relative custom_quote_img" alt="img">
          </div>
        </div>
      </div>
  </section>
  
	
	
	 <!-- Types of Pet Section  -->
	<section class="types-pet-section">
	<div class="container">
		<div class="mb-4">
		  <h1 class="fw-bold d-flex justify-content-center category_heading">Types of Pet</h1>
		  <img class="mx-auto d-block" src="{{ asset('assets/images/heading_border.png') }}" alt="img">
	  </div>
	  <div class="typespet-columns">
		<div class="animal_type" onclick="redirect('/shop/dog')">
			  <div class="custom_img_border">
			<img class="mx-auto d-block" src="{{ asset('assets/images/dog-pet.png') }}" alt="img">
			<p class="custom_pet_txt fs-6 fw-bold text-center mt-3">DOG</p>
		  </div>
		</div>
		<div class="animal_type" onclick="redirect('/shop/cat')">
				<div class="custom_img_border">
					<img class="mx-auto d-block" src="{{ asset('assets/images/cat-pet.png') }}" alt="img">
					<p class="custom_pet_txt fs-6 fw-bold text-center mt-3">CAT</p>
				</div>
		</div>
		<div class="animal_type">
				<div class="custom_img_border">
					<img class="mx-auto d-block" src="{{ asset('assets/images/horse-pet.png') }}" alt="img">
					<p class="custom_pet_txt fs-6 fw-bold text-center mt-3">HORSE</p>
				</div>
		</div>
		<div class="animal_type">
				<div class="custom_img_border">
					<img class="mx-auto d-block" src="{{ asset('assets/images/cattle-pet.png') }}" alt="img">
					<p class="custom_pet_txt fs-6 fw-bold text-center mt-3">COW</p>
				</div>
		</div>
		<div class="animal_type">
				<div class="custom_img_border">
					<img class="mx-auto d-block" src="{{ asset('assets/images/habitat.png') }}" alt="img">
					<p class="custom_pet_txt fs-6 fw-bold text-center mt-3">Others</p>
				</div>
		</div>
	  </div>
	</div>
	</section>
	
	<section class="pet-relcoation-block06 pt-5 pb-5">
      <div class="container">
		<div class="text-center content_pet-relcoation-block06">
            <div>
              <h1 class="fw-bold category_heading">Ensure Your Dog's Safe Move by Hiring the Best Relocation Company in India</h1>
              <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">
            </div>
              <p>Many companies in India claim to ensure safe international & domestic pet relocation but fail to do so in some way or another. </p>
				<p>But our team's years of experience and thousands of successful pet transportation stories allow you to trust us whenever you are worried about your dogs on planes.</p>
			</div>	

      {{-- location button  --}}
      <div class="d-flex flex-wrap gap-4 justify-content-center px-5 my-5">
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Chandigarh</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Kolkata</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Mumbai</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Hyderabad</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Pune</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Banglore</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Gurgaon</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Delhi</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Punjab</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Ahmedabad</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Gujrat</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Surat</div>
        </a>
        <a href="#" class="text-decoration-none">
          <div class="py-2 px-4 rounded-pill border border-2 fs-5 fw-bold border-secondary text-secondary">Chennai</div>
        </a>
      </div>

      </div>
    </section>
	
  <!-- Get A Quote Second Section  -->
<section class="custom_quotes_bg petrelocation-quote2" id="submit-quote-to-form">
  <div class="container">
  <div class="custom_quotes_second ">
    <form id="saveRelocateForm2" method="POST">
      @csrf 
      <div class="row p-5 custom_mobile_quotes">
        <div class="col-sm-12 col-md-9 col-lg-9">
          <div>
            <h1 class="fw-bold d-flex justify-content-center quotes_heading_clr">Get A Quote</h1>
            <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
          </div>
          <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-4 py-2">
              <input class="custom_input_quote" type="text" placeholder="Name of Owner" id="owner_name2" name="owner_name">
              <span class="error-message" id="owner_name_error2"></span>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 py-2">
              <input class="custom_input_quote" type="email" placeholder="Email" id="email2" name="email">
              <span class="error-message" id="email_error2"></span>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 py-2">
              <input class="custom_input_quote" type="tel" placeholder="Phone Number" id="phone_number2" name="phone_number"
            >
              <span class="error-message" id="phone_number_error2"></span>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 py-2">
              <select class="form-select custom_input_quote" name="pet_type" id="pet_type2" aria-label="Default select example">
                <option value="">Select Type of Pet</option>
                <option value="dog">Dog</option>
                <option value="cat">Cat</option>
                <option value="horse">Horse</option>
                <option value="cattle">Cattle</option>
                <option value="other">Others</option>
              </select>
              <span class="error-message" id="pet_type_error2"></span>      
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 py-2">
              <input class="custom_input_quote" type="text" placeholder="Name of Pet" id="pet_name2" name="pet_name">
              <span class="error-message" id="pet_name_error2"></span>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 py-2">
              <input class="custom_input_quote" type="text" placeholder="Enter Pet Breed" id="pet_breed2" name="pet_breed">
              <span class="error-message" id="pet_breed_error2"></span>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 py-2">
              <input class="custom_input_quote custom_pet_age" type="number" placeholder="Enter Pet Age" id="pet_age2"
            name="pet_age" min="1" max="50">
              <span class="error-message" id="pet_age_error2"></span>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 py-2">
              <select class="form-select custom_input_quote custom_pet_age" name="pet_gender" id="pet_gender2" aria-label="Default select example">
                <option value="">Select Pet Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
              </select>
              <span class="error-message" id="pet_gender_error2"></span>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 py-2">
              <input class="custom_input_quote" type="text" placeholder="Origin" id="origin2" name="origin">
              <span class="error-message" id="origin_error2"></span>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 py-2">
              <input class="custom_input_quote" type="text" placeholder="Destination" id="destination2" name="destination">
              <span class="error-message" id="destination_error2"></span>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 py-2">
              <button type="button" id="submit_quote_btn_2"  onclick="submitForm2()" class="btn btn-lg custom_relocation_submit">Submit</button>
            </div>
          </div>
          <div class="message" id="quote_2_success_msg" style="color: green;"></div>
        </div>

        <div class="col-sm-12 col-md-3 col-lg-3">
          <img class="w-100" src="{{ asset('assets/images/quote-dog.webp') }}" alt="img">
        </div>
      </div>
    </form>
  </div>
  </div>
</section>
	
 
 <!-- Why Chooose Remediovet  -->
	<section class="WhyChooseRemediovet py-5">
		<div class="container">
			<div class="mb-4">
				<h1 class="fw-bold d-flex justify-content-center category_heading">Why Choose Pet Flights</h1>
				<img class="mx-auto d-block" src="{{ asset('assets/images/heading_border.png') }}" alt="img">
			</div>
			<div class="row">
				<div class="col-sm-12 col-md-4 col-lg-4">
					<div class="custom_choosecard">
						<img class="image-print" src="{{ asset('assets/images/paw_print.webp') }}" alt="img">
						<h5>EXPERT PET HANDLERS</h5>
						<p>{!! $flight->expert_handlers !!}</p>
					</div>
				</div>
				<div class="col-sm-12 col-md-4 col-lg-4">
					<div class="custom_choosecard">
					<img class="image-print" src="{{ asset('assets/images/paw_print.webp') }}" alt="img">
					  <h5>SAFE AND COMFORTABLE TRAVEL</h5>
					  <p>{!! $flight->safe_travel !!}</p>
					</div>
				</div>
				<div class="col-sm-12 col-md-4 col-lg-4">
					<div class="custom_choosecard">
					<img class="image-print" src="{{ asset('assets/images/paw_print.webp') }}" alt="img">
						<h5>PET-FRIENDLY TRAVEL</h5>
						<p>{!! $flight->pet_friendly_travel !!}</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	

  <!-- FAQ's Section  -->
<section class="faq-testimonials-section mb-5">
  <div class="container">
    <div class="row justify-content-center m-0">
      <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
        <h1 class="fw-bold category_heading">FAQ'S</h1>
        <img class="d-block" src="{{ asset('assets/images/heading_border.png') }}" alt="img">
        <div class="accordion mt-5" id="accordionExample">
          <div class="mt-4">
              <div class="accordion d-flex flex-column gap-3">
                <div class="accordion-item px-3">
                  <button id="accordion-button-1" aria-expanded="false"><span class="accordion-title fw-bold"><span class="icon" aria-hidden="true"></span> How much does it cost to relocate my pet ?</span></button>
                  <div class="accordion-content">
                    <p> Pet relocation is relocating your pet from one location to another, locally or abroad. This can be a complicated process due to the 
                  numerous regulations and requirements that must be met.
                   A pet relocation service can assist you in navigating this process and ensuring that your pet travels safely and comfortably</p>
                  </div>
                </div>
                <div class="accordion-item px-3">
                  <button id="accordion-button-2" aria-expanded="false"><span class="accordion-title fw-bold"><span class="icon" aria-hidden="true"></span> Which pets can I take along ?</span></button>
                  <div class="accordion-content">
                    <p>The majority of pet relocation services carry a wide range of pets, including dogs, cats, birds, reptiles, and small mammals. 
                  Certain breeds or types of pets may be prohibited by specific services. It is critical to confirm with 
                  the provider you are considering whether they can transport your pet.</p>
                  </div>
                </div>
                <div class="accordion-item px-3">
                  <button id="accordion-button-3" aria-expanded="false"><span class="accordion-title fw-bold"><span class="icon" aria-hidden="true"></span> How much does it cost to relocate my pet ?</span></button>
                  <div class="accordion-content">
                    <p>The cost of pet relocation services varies according to several factors, including the type of pet, the distance traveled, and the level of service you want. 
                  Air travel, for example, is usually more expensive than ground transit.
                   Furthermore, services that provide extra services, such as door-to-door pickup and delivery or pet boarding and grooming, often demand a higher fee.</p>
                  </div>
                </div>
              </div>
            </div>
        </div>  
      </div>
      <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6 custom_slider_bg d-flex">

        <!-- slick Slider -->
<section role="complementary" class="simple white-back quotes no-fouc custom-slick-section">
  @if($reviews)
    @foreach($reviews as $review)
    <blockquote>
      <div class="custom_reviewcard  bg-white p-3">
            <img class="client_img mx-auto d-block" src="{{ $review['profile_photo_url']; }}" alt="img">
            <h5 class="fw-bold text-center py-1">{{ $review['author_name']}}</h5>
            <p class="text-center py-1">{{ substr($review['text'], 0, 500) }}
            </p>
              <div class="rating d-flex justify-content-center custom_rating_txt py-1">
                {!! starRating($review['rating']) !!}
              </div>
          </div>
    </blockquote>
    @endforeach
  @endif

</section>
</section>

<section class="pet-relcoation-block05">
      <div class="container-fluid">
				<div class="row">
					<div class="col-sm-12 col-md-6 col-lg-6">
						<div class="content_expert">
							<h2 class="fw-bold category_heading">{{ $flight->expert_heading}}</h2>
							<div>
								<p>Here are a few of the ways we can help you with pet transportation:</p>
								<ul style="margin-left: 17px;">
									<li>Obtain the required licenses and health certifications</li>
									<li>Make reservations for pet-friendly transit</li>
									<li>Assign comfortable and secure travel kennels or carriers</li>
									<li>Provide individualized guidance on pet adjustments and relocation</li>
								</ul>
								<p>By receiving such guidance and support from the best Pet Relocation Company, you can relax knowing that your pet will receive excellent care with our assistance during moving. We will handle everything, allowing you to enjoy your new home with your beloved pet.</p>
							</div>
						</div>
						
					</div>
					
					<div class="col-sm-12 col-md-6 col-lg-6">
						<img src="{{ asset($flight->expert_image) }}" class="img-fluid" alt="relocate-image">
					</div>
			</div>
    </section>
<!-- Happy Client Videos Section  -->
<section class="client-videos">
    <div class="container">
        <div class="mb-3">
            <h1 class="fw-bold category_heading">Happy Client's Videos</h1>
            <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">
        </div>
        <div class="row">
            <div class="col-6 col-sm-6 col-md-4 col-lg-4">
                <div class="client-videos-block">
                    <a data-fancybox="gallery" href="{{ asset('assets/videos/1711592363470717.mp4') }}" data-caption="Happy Client Video 1">
                        <img class="w-100 custom_gallery_img" src="{{ asset('assets/videos/img-petflight.jpg') }}">
                    </a>
                </div>
            </div>
			 <!--div class="col-6 col-sm-6 col-md-4 col-lg-4">
                <div class="client-videos-block">
                    <a data-fancybox="gallery" href="https://remediovet.com/wp-content/uploads/2024/01/Lens_17049469633031.mp4#t=,35" data-caption="Happy Client Video 1">
                        <img class="w-100 custom_gallery_img" src="{{ asset('assets/images/dog-video.webp') }}">
                    </a>
                </div>
            </div-->
            <div class="col-6 col-sm-6 col-md-4 col-lg-4">
                <div class="client-videos-block">
                    <a data-fancybox="gallery" href="https://remediovet.com/wp-content/uploads/2024/01/dog.mp4#t=,35" data-caption="Happy Client Video 2">
                        <img class="w-100 custom_gallery_img" src="{{ asset('assets/images/dogs-group.webp') }}">
                    </a>
                </div>
            </div>
            <div class="col-6 col-sm-6 col-md-4 col-lg-4">
                <div class="client-videos-block">
                    <a data-fancybox="gallery" href="https://remediovet.com/wp-content/uploads/2024/01/Lens_17049469633031.mp4#t=,35" data-caption="Happy Client Video 3">
                        <img class="w-100 custom_gallery_img" src="{{ asset('assets/images/Dog-gallery.webp') }}">
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- image gallery section  -->

<section class="gallery_bg p-5">
    <div class="container">
        <div class="mb-3">
            <h1 class="fw-bold category_heading">Gallery</h1>
            <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">
        </div>
        <div class="row">
            <!-- <div class="col-6 col-sm-6 col-md-4 col-lg-4">
                <div class="client-videos-block">
                    <a data-fancybox="gallery" href="{{ asset('assets/images/cat_gallery.webp') }}" data-caption="Cat Gallery">
                        <img class="w-100 custom_gallery_img" src="{{ asset($flight->gallery_img_1) }}">
                    </a>
                </div>
            </div> -->
            <div class="col-6 col-sm-6 col-md-4 col-lg-4">
                <div class="client-videos-block">
                    <a data-fancybox="gallery" href="{{ asset('assets/images/Dog-gallery.webp') }}" data-caption="Dog Gallery">
                        <img class="w-100 custom_gallery_img" src="{{ asset($flight->gallery_img_2) }}">
                    </a>
                </div>
            </div>
            <div class="col-6 col-sm-6 col-md-4 col-lg-4">
                <div class="client-videos-block">
                    <a data-fancybox="gallery" href="{{ asset('assets/images/dog-gallery-img.webp') }}" data-caption="Dog Gallery Image">
                        <img class="w-100 custom_gallery_img" src="{{ asset($flight->gallery_img_3) }}">
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
  var saveRelocateFormUrl="{{ route('frontend.save.relocation.form') }}";
</script>
@endsection