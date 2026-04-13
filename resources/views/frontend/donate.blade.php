@extends('layouts.app',['layout'=>'donate'])

@section('title', $data[0]->meta_title ?? 'Donate')

@section('meta_keyword', $data[0]->meta_keyword)

@section('meta_description', $data[0]->meta_description)

@section('content')
<section class="custom_donatebg">
   <div class="container-fluid">
      <div class="row">
         <div class="col-sm-2 col-md-2 col-lg-2">
            <!--img class="w-100" src="{{ asset('assets/images/donate-bannerimg.png') }}"-->
         </div>
         <div class="in_service col-sm-8 col-md-8 col-lg-8 py-5 text-center">
            <span class="mx-auto d-block w-50">
               <span class="symbol_center fs-3"> ▼・ᴥ・▼ </span>
               <h1 class="category_heading fw-bold custom_donatetxt "> IN SERVICE OF </h1>
               <h1 class="category_heading fw-bold custom_donatetxt "> THE VOICELESS </h1>
               <p>Ensuring quality life for the overlooked </p>
               <button type="button" class="btn_donate text-white p-3 border-0 scrollToForm"> Donate Now </button>
            </span>
         </div>
         <div class="col-sm-2 col-md-2 col-lg-2">
            <img class="w-100" src="{{ asset('assets/images/donate-dogimg.webp') }}">
         </div>
      </div>
   </div>
</section>
<!--Bezubaan Animal Welfare Foundation-->
<section class="bezubaan-block2">
<div class="container">
	<div class="row">
	<div class="col-sm-12 col-md-12 col-lg-8">
		<div class="title-donate">
		 <h1 class="fw-bold category_heading custom_donatetxt">Bezubaan Animal Welfare Foundation </h1>
		  <img src="https://remediovet.com/assets/images/heading_border.png" alt="img">
		</div>
	
		<p> Welcome to the world of Bezubaan Animal Welfare Foundation (B.A.W.F) ! Based in Chandigarh, our foundation is dedicated to improving the lives of 
		animals in tri-city and surrounding areas . As humans, we have a responsibility to ensure that all animals, large and small, domesticated or wild, are 
		treated with kindness and respect.
		</p>
		<p>Animal welfare refers to the physical and mental health of animals. This includes shelter, nutrition and health care, and prevention of cruelty and neglect.
		Unfortunately, many animals are abused, neglected and abused every day. From the meat industry to pet ownership, there are myriad ways animals are harmed.
		Our foundation seeks to address these issues through education, advocacy and direct action.
		</p>
		<p> One of our main goals is to educate the public about animal welfare. We believe that knowledge is power and that by giving people the information they 
		need to make informed decisions, we can improve the lives of animals everywhere. This includes educating people about responsible pet ownership and 
		educating people about the impact of their dietary choices on animals and the environment. In addition to education, we also campaign for animal rights.
		That means opposing animal cruelty and supporting laws and policies that protect animals. We work with legislators, activists and other organizations to 
		advance animal welfare locally, nationally and globally.
		</p>
	</div>
	<div class="col-sm-12 col-md-12 col-lg-4">
		<img class="w-100" src="{{ asset('assets/images/donate-bannerimg.png') }}">
	</div>
	<div class="col-sm-12 col-md-12 col-lg-12">
		<p> Finally, our foundation directly supports animals in need. This includes providing shelter, medical care, food, and rescuing animals from dangerous 
		situations for homeless and abused animals. We believe that all animals have the right to live happy and healthy lives, and we work tirelessly to make this happen.
		</p>
		<p> At Bezubaan, we believe animal welfare is an issue that affects us all. If you’re a pet owner or animal lover interested in animal welfare, join us in our mission to
		make the world a better place for animals wherever you are. Together we can make a difference. 
		</p>
	</div>
	</div>
</div>
</section>
<!--Video-->


<section class="pet-relocation-GetAQuote donate_section_form">
  <div class="container">
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
			<div class="">
				<iframe width="100%" height="450" src="https://www.youtube.com/embed/LXsjr1_RFBc?autoplay=0" frameborder="0" gesture="media" allow="encrypted-media"  class="lazyloaded" allowfullscreen></iframe>
			</div>
		</div>
		<div class="col-sm-12 col-md-12 col-lg-8 col-xl-8">
			<div class="pet-relocation-GetAQuote-panel">
			<div class="pet-location-title mb-3">
			<h1 class="fw-bold text-center quotes_heading">Bezubaan Animal Welfare Foundation </h1>
			<img src="https://remediovet.com/assets/images/white-underline.png" class="mx-auto d-block" alt="img">
			</div>
			<form id="donateFormSubmit" method="POST">
			@csrf
			<div class="row">        
			<div class="col-sm-12 col-md-6 col-lg-6 py-2">
			<input type="text" class="form-control form_input" id="donate_name" placeholder="Name" name="name">
			<span class="error-message" id="donate_name_error"></span>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 py-2">
			<input type="text" class="form-control form_input" id="donate_age" placeholder="Age" name="donate_age">
			<span class="error-message" id="donate_age_error"></span>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 py-2">
			<input type="tel" id="phone_number" class="form-control form_input"  name="phone_number" placeholder="Phone Number">
			<span class="error-message" id="phone_number_error"></span>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-6 py-2">
			<input type="city" id="donate_city" class="form-control form_input" name="city" placeholder="Your City">
			<span class="error-message" id="donate_city_error"></span>
			</div>
			<div class="col-sm-12 col-md-6 col-lg-12 py-2">
			<select class="data-form w-100" name="service" id="donate_service" aria-label="Default select example">
			<option class="w-50" value="" >How Would you like to help</option>
			<option value="1">I can volunteer time</option>
			<option value="2">I can donate money</option>
			<option value="3">I can do both</option>
			</select>
			<span class="error-message" id="donate_service_error"></span>
			</div>
			<div class="col-sm-12 col-md-12 col-lg-12 py-2">
			<div class="g-recaptcha" data-sitekey="{{ env('RECAPTCHA_SITE_KEY') }}"></div>
			<input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
			<span class="error-message" id="recaptcha_error"></span>
			<div class="message" id="donate_success_msg" style="color: green;"></div>
			<button type="button" id="submit_donate_form" onclick="submitForm()"  class="btn btn-lg custom_relocation_submit mt-3">
			Submit
			</button>
			</div>
			<div class="message" id="quote_1_success_msg" style="color: green;"></div>
			<span class="position-relative">
			<img src="https://remediovet.com/assets/images/bannerside.png" class="custom_side_bannerimg position-absolute top-50 start-100" alt="img">
			</span>
			</div>
			</form>
			</div>
		</div>
	</div>
		
  </div>
</section>
<!--section class="pb-5" id="donate_form">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-4">
				<iframe width="320" height="515" src="https://www.youtube.com/embed/LXsjr1_RFBc?autoplay=0" frameborder="0" gesture="media" allow="encrypted-media"  class="lazyloaded" allowfullscreen></iframe>
			</div>
			<div class="col-sm-12 col-md-12 col-lg-8">
				<div class="">
				<h1 class="fw-bold category_heading">Bezubaan Animal Welfare Foundation </h1>
			</div>   
				<div class="bezubaan-col-form">
				 <form id="donateFormSubmit" method="POST">
				  @csrf
					<div class="form-row custom_form_row">
					   <div class="form-grid mb-4">
						  <input type="text" class="form-control form_input" id="donate_name" placeholder="Name" name="name">
						  <span class="error-message" id="donate_name_error"></span>
					   </div>
					   <div class="form-grid mb-4">
						  <input type="text" class="form-control form_input" id="donate_age" placeholder="Age" name="donate_age">
						  <span class="error-message" id="donate_age_error"></span>
					   </div>
					   <div class="form-grid mb-4">
						  <input type="tel" id="phone_number" class="form-control form_input"  name="phone_number" placeholder="Phone Number">
						  <span class="error-message" id="phone_number_error"></span>
					   </div>
					   <div class="form-grid mb-4">
						  <input type="city" id="donate_city" class="form-control form_input" name="city" placeholder="Your City">
						  <span class="error-message" id="donate_city_error"></span>
					   </div>
					   <div class="form-grid mb-4">
						  <select class="data-form w-100" name="service" id="donate_service" aria-label="Default select example">
							 <option class="w-50" value="" >How Would you like to help</option>
							 <option value="1">I can volunteer time</option>
							 <option value="2">I can donate money</option>
							 <option value="3">I can do both</option>
						  </select>
						  <span class="error-message" id="donate_service_error"></span>
					   </div>
					   <div class="g-recaptcha" data-sitekey="{{ env('RECAPTCHA_SITE_KEY') }}"></div>
					   <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
					   <span class="error-message" id="recaptcha_error"></span>
					   <div class="message" id="donate_success_msg" style="color: green;"></div>
					   <button type="button" id="submit_donate_form" onclick="submitForm()"  class="relocate_btn my-3 px-4 py-2 fs-5 border-0 d-block">
					   Submit
					   </button>
					</div>
				 </form>

			  </div>
			</div>
		</div>
	
   </div>
</section-->
<!--Form-->
<section class="faq-bazubaan">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-4 col-md-4 position-relative">
            <h1 class="fw-bold d-flex justify-content-start category_heading mobile_faq mb-5">
              FAQ
            </h1>
            <div class="custom_list_donate" id="custom_faqid">
              <ol>	
				<li class="">
                <a class="text-decoration-none  fw-bold fs-5" href="#firstFaq">
                  Activities of Bezubaan
                </a>
				</li>
				<li class="">
                <a class="text-decoration-none fw-bold fs-5" href="#secondFaq">
                 Being part of Bezubaan.
                </a>
				</li>
				<li class="">
                <a class="text-decoration-none  fw-bold fs-5" href="#thirdFaq">
                Donation
                </a>
				</li>
				<li class="">
                <a class="text-decoration-none fw-bold fs-5" href="#fourthFaq">
                  About Bezubaan
                </a>
				</li>
              </ol>
            </div>
          </div>

          <div class="col-sm-12 col-md-8 col-md-8">
            <h1 class="fw-bold category_heading desktop_faq mb-3" id="firstFaq">
            Activities of Bezubaan
            </h1>
            <!-- Accordian section one  -->
            <div class="mt-4">
              <div class="accordion d-flex flex-column gap-3">
                <div class="accordion-item px-3">
                  <button id="accordion-button-1" aria-expanded="false"><span class="accordion-title fw-bold">What animal welfare activities are carried out by Bezubaan ?</span><span class="icon"
                      aria-hidden="true"></span></button>
                  <div class="accordion-content">
                    <p class="fs-5">
                      Our activities include:
                     <li>Vaccinations of stray dogs.</li>
                     <li>Spay/Neuter drives of stray dogs and cats.</li>
                     <li>Transportation of injured animals to nearest government or private hospitals or clinics.</li>
                     <li>Donation of medicines and food for stray animals.</li>
                     <li>Vouching for animals in reported cases of cruelty.</li>
                     <li>Donation drives in Chandigarh, Tri-city area and nearby towns and villages. </li>
                     <li>Helping other animal welfare organizations in India to achieve their goals.</li></p>
                  </div>
                </div>
              </div>
            </div>

            <!-- Accordian section two  -->
            <div>
              <h1 class="fw-bold d-flex justify-content-start category_heading my-3" id="secondFaq">
              Being part of Bezubaan.
              </h1>
            </div>
            <div class="mt-4">
              <div class="accordion d-flex flex-column gap-3">
                <div class="accordion-item px-3">
                  <button id="accordion-button-1" aria-expanded="false"><span class="accordion-title fw-bold">How can I support activities of Bezubaan ?</span><span class="icon"
                      aria-hidden="true"></span></button>
                  <div class="accordion-content">
                    <p class="fs-5"> If you have the time you can support in many ways:
                     <li>Report injured animals / cruelty cases.</li>
                     <li> your time to help out in our day to day activities.</li>
                     <li> food or medicines. </li></p>
                  </div>
                </div>
              </div>
            </div>
            <!-- Accordian section three  -->
            <div>
              <h1 class="fw-bold d-flex justify-content-start category_heading my-3" id="thirdFaq">
              Donation
              </h1>
            </div>
            <div class="mt-4">
              <div class="accordion d-flex flex-column gap-3">
                <div class="accordion-item px-3">
                  <button id="accordion-button-1" aria-expanded="false"><span class="accordion-title fw-bold">How can I donate ?</span><span class="icon"
                      aria-hidden="true"></span></button>
                  <div class="accordion-content">
                    <p class="fs-5"> Our Paytm number is 8920578443. You can either make a one time donation or 
                        for maximum benefit of strays and to assist in our efforts, you can make a regular donation of a fixed amount every month.</p>
                  </div>
                </div>
                <div class="accordion-item px-3">
                  <button id="accordion-button-2" aria-expanded="false"><span class="accordion-title fw-bold">How much should I donate ?</span><span class="icon" aria-hidden="true"></span></button>
                  <div class="accordion-content">
                    <p class="fs-5"> Any amount that you are comfortable donating is a good amount. For reference a vaccination for a stray dog costs a few hundred rupees,
                        hospitalisation and treatment is costlier, food donation requires a steady monthly flow so we can keep feeding on a regular basis.</p>
                  </div>
                </div>
                <div class="accordion-item px-3">
                  <button id="accordion-button-3" aria-expanded="false"><span class="accordion-title fw-bold">What percentage of my donation is actually used for welfare ?</span><span class="icon" aria-hidden="true"></span></button>
                  <div class="accordion-content">
                    <p class="fs-5">  100% of the donations received by Bezubaan are used towards animal welfare.</p>
                  </div>
                </div>
              </div>
            </div>
            <!-- Accordian section four  -->
            <div>
              <h1 class="fw-bold d-flex justify-content-start category_heading my-3" id="fourthFaq">
              About Bezubaan
              </h1>
            </div>
            <div class="my-4">
              <div class="accordion d-flex flex-column gap-3">
                <div class="accordion-item px-3">
                  <button id="accordion-button-1" aria-expanded="false"><span class="accordion-title fw-bold">Is Bezubaan a Registered Organisation ?</span><span class="icon"
                      aria-hidden="true"></span></button>
                  <div class="accordion-content">
                    <p class="fs-5">Yes, Bezubaan Animal Welfare Foundation is registered under section 8 of the companies act 2013,
                     carrying license number 134904 by the registrar of companies, Ministry of Corporate Affairs, Government of India.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
</section>
<script>
  var saveDonateFormUrl="{{ route('save-donate-form') }}";
</script>
@endsection