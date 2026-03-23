@extends('layouts.app',['layout'=>'contactus'])

@section('title', $data->meta_title ?? 'Contact Us')

@section('meta_keyword', $data->meta_keyword)

@section('meta_description', $data->meta_description)

@section('content')

@foreach ($settings as $key => $setting)
<section class="contactinner-banner">
	<div class="container">
	<div class="inner-title text-center">
		<h1>Contact Us</h1>
	</div>
	</div>
</section>
<section class="contact-block2">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
			<p class="fs-4 contact_ustxt">We’d love to hear from you – please use the form to send us your message or ideas. Or simply pop
				 in for a cup of fresh tea and a cookie:</p>
			</div>
		</div>
		<div class="row custom_address mt-4">
			<div class="col-sm-12 col-md-4 col-lg-4">
				<p class="fs-5"> {{ $setting->address }} </p>
			</div>
			<div class="col-sm-12 col-md-4 col-lg-4">
				<p class="fs-5">Call us: <a href="tel:{{ $setting->phone1 }}">{{ $setting->phone1 }}</a><br> Email: <a href="mailto:{{ $setting->email1 }}">{{ $setting->email1 }}</a></p>
			</div>
			</div>
			<div class="text-center mt-5"><a href="/directory/vets" class="find-btn">Find a vet</a></div>
		</div>
	</div>
</section>
        <!-- Map section  -->
        <section>
            <div class="container">
                <iframe class="custom_map" src="https://maps.google.com/maps?q=Remedio%20Vet%20-%20Supplements%20%26%20Meds%20For%20Pets&t=m&z=12&output=embed&iwloc=near" 
                width="1300" height="450" style="border:0;" 
                allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </section>

        <!-- Query Section  -->
       <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6">
                        <h3 class="fw-bold query_heading m-5">Have a question or comment? Use the form below to send us a message.</h3>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6 py-5">
                        <form id="contactForm" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="form-row custom_form_row py-5">
                                <div class="col-sm-12 col-md-12 col-lg-12 mb-4">
                                    <input type="text" class="form-control form_input" placeholder="Your name" name="fname" required>
                                </div>
                                <div class="col-sm-12 col-md-12 col-lg-12 mb-4">
                                    <input type="email" class="form-control form_input" id="inputEmail" placeholder="Your email" name="email" required>
                                </div>
                                <div class="col-sm-12 col-md-12 col-lg-12 mb-4">
                                    <input type="tel" id="phone" class="form-control form_input" name="phone" placeholder="Your phone" required>
                                </div>
                                <div class="col-sm-12 col-md-12 col-lg-12 mb-4">
                                    <textarea name="message" class="form-control form_input text_area" id="exampleFormControlTextarea" placeholder="Your comment" rows="3" required></textarea>
                                </div>
								<div class="">
                                <div class="g-recaptcha mb-4" data-sitekey="{{ env('RECAPTCHA_SITE_KEY') }}"></div>
									<span class="error-message" id="recaptcha_error"></span>
								</div>
                                <button type="submit" class="relocate_btn my-3 px-4 py-2 fs-5 border-0">
                                    Submit
                                </button>
                                <div class="message" id="success_msg" style="color: green;"></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>    
  @endforeach

  <script>
    var submitContactUrl="{{ route('store-contact-us') }}";
  </script>
@endsection