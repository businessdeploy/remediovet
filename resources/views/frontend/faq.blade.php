@extends('layouts.app',['layout'=>'faq'])
@section('title', 'FAQ')
@section('content')
<section class="contactinner-banner">
	<div class="container">
	<div class="inner-title text-center">
		<h1>FAQ</h1>
	</div>
	</div>
</section>
<section class="faq-block2">
      <div class="container">
        <div class="row mt-4">
          <div class="col-sm-12 col-md-4 col-md-4 position-relative">
            <h1 class="fw-bold d-flex justify-content-start category_heading mobile_faq mb-5">
              FAQ
            </h1>
            <div class="custom_list" id="custom_faqid">
              <ol>
                @foreach ($faqs as $key => $faq)
                <a class="text-decoration-none text-dark fw-bold fs-5" href="#firstFaq{{ $faq->id }}">
                  <li class="faq_list">{{ $faq->title }}</li>
                </a>
                @endforeach
              </ol>
            </div>
          </div>

          <div class="col-sm-12 col-md-8 col-md-8">			
            @foreach ($faqs as $key => $faq) 
            <h1 class="fw-bold category_heading" id="firstFaq{{ $faq->id }}">
              {{ $faq->title }}
            </h1>
            <!-- Accordian section one  -->
            <div class="mt-4">
              <div class="accordion d-flex flex-column gap-3 mb-3">
                @foreach($faq->items as $key => $value)
                <div class="accordion-item px-3">                  
                  <button id="accordion-button-1" aria-expanded="false"><span class="accordion-title fs-4 fw-bold">{{ $value->title}}</span><span class="icon"
                      aria-hidden="true"></span></button>
                  <div class="accordion-content">
                    <p class="fs-5"> {!! $value->description !!}</p>
                  </div>
                </div>
                @endforeach
             
              </div>
            </div>
            @endforeach
          </div>
        </div>
      </div>
    </section>

@endsection