@extends('layouts.app',['layout'=>'home'])

@section('title', $data->meta_title ?? 'Home')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)

@section('content')
@php
$useragent=$_SERVER['HTTP_USER_AGENT'];
     $isMob = preg_match('/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i',substr($useragent,0,4))
    @endphp


<!--on load popup-->
<div id="myModal" class="modal fade signup_section" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-body">
	  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		<div class="signup-col">
			<div class="signup-img">
				<img src="{{ asset('assets/images/popup-banner.jpg') }}" class="img-fluid" alt="img">
			</div>
			<div class="signup-content">
				<h2>Sign-up!</h2>
				<ul>
					<li>New subscribers get 20% OFF</li>
					<li>Receive exclusive deals</li> 
				</ul>
				<div class="signup-form">
				<div class="signup-form-inner mb-5 mt-4">
					 <form id="subscribeForm2" method="POST">
              @csrf
              <div class="">
                  <input class="input_f" placeholder="Enter Phone Number" type="number" id="phone_number" name="phone_number" required />
                  <span class="error-message" id="phone_error" style="color: red;"></span>
                  <div class="g-recaptcha" data-sitekey="{{ env('RECAPTCHA_SITE_KEY') }}"></div>
                  <span class="error-message" id="recaptcha_error"></span>
                  <button type="submit" class="subscribe_input text-light border-0 px-5">Submit</button>
              </div>
              <div class="message" id="subscribe_success_msg2" style="color: green;"></div>
          </form>
				
				</div>
				<small>By subscribing to our newsletter you agree to our Terms and Conditions and Privacy Policy</small>
				</div>
				
			</div>
		</div>
      </div>
    </div>
  </div>
</div>
<!--end on load popup-->



<!-- image slider -->
<section class="banner_block">
  <div class="container-fluid">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators custom_rounded">
        @foreach ($sliders as $key => $sliderItem)
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="{{ $key }}" class="{{ $key == 0 ? 'active' : '' }}"
               aria-current="true" aria-label="Slide 1"></button>
        @endforeach            
      </div>

      <div class="carousel-inner h-100">

        @foreach ($sliders as $key => $sliderItem)
          <div class="carousel-item {{ $key == 0 ? 'active' : '' }} hover-on" onclick="redirectToProduct('{{ $sliderItem->redirect_link }}' )">
            @if ($sliderItem->image)
              <img src="{{ asset("$sliderItem->image") }}" class="carousel_img d-block w-100" alt="img">
            @endif

            {{-- <div class="carousel-caption custom_carousel_caption d-md-block">
              <h1 class="fw-bold">{!! $sliderItem->title !!}</h1>
              <h1 class="fw-bold">{!! $sliderItem->sub_title !!}</h1>
              <p>{!! $sliderItem->description !!}</p>
              <button type="button" class="shop_btn fw-bold text-white border-0 p-2" onclick="redirectToProduct('{{ $sliderItem->redirect_link }}' )">
              {{ $sliderItem->button_text }}
              </button>
              <img src="{{ asset("$sliderItem->sub_image") }}" class="layer_sub_img d-block position-absolute top-50 start-100 translate-middle" alt="img" loading="lazy">
            </div> --}}

          </div>
        @endforeach 

      </div>


    {{-- old slider for web and mobile  --}}
	  {{-- @if($isMob == "true")

      <div class="carousel-inner mobile-carousel">
        @foreach ($sliders as $key => $sliderItem)
         
          <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
		  
            @if($sliderItem->mobile_slider_image)
              <img src="{{ asset("$sliderItem->mobile_slider_image") }}" class="carousel_img d-block w-100" alt="img">
            @endif
            <div class="carousel-caption custom_carousel_caption d-md-block">
			         <img src="{{ asset("$sliderItem->sub_image") }}" class="layer_sub_img" alt="img" loading="lazy">
              <h1 class="fw-bold">{!! $sliderItem->title !!}</h1>
              <h1 class="fw-bold">{!! $sliderItem->sub_title !!}</h1>
              <p>{!! $sliderItem->description !!}</p>
              <button type="button" class="shop_btn fw-bold text-white border-0 p-2" onclick="redirectToProduct('{{ $sliderItem->redirect_link }}' )">
              {{ $sliderItem->button_text }}
              </button>
             
            </div>
          </div>
        @endforeach 
      </div>
	  @else
	  <div class="carousel-inner h-100">
        @foreach ($sliders as $key => $sliderItem)
          <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
            @if ($sliderItem->image)
              <img src="{{ asset("$sliderItem->image") }}" class="carousel_img d-block w-100" alt="img">
            @endif

            <div class="carousel-caption custom_carousel_caption d-md-block">
              <h1 class="fw-bold">{!! $sliderItem->title !!}</h1>
              <h1 class="fw-bold">{!! $sliderItem->sub_title !!}</h1>
              <p>{!! $sliderItem->description !!}</p>
              <button type="button" class="shop_btn fw-bold text-white border-0 p-2" onclick="redirectToProduct('{{ $sliderItem->redirect_link }}' )">
              {{ $sliderItem->button_text }}
              </button>
              <img src="{{ asset("$sliderItem->sub_image") }}" class="layer_sub_img d-block position-absolute top-50 start-100 translate-middle" alt="img" loading="lazy">
            </div>
          </div>
        @endforeach 
      </div>
	  @endif --}}
    
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </div>
</section>



<!-- detail section  -->
<section class="block2-h">
  <div class="container">
    <div class="custom_detail_bar">
    <div class="row">
      <div class="col-12 col-sm-6 col-md-6 col-lg-3">
        <span class="delivery-col d-flex">
          <div>
            <i class="detail_logo fa fa-truck" aria-hidden="true"></i>
          </div>
          <div>
            <p class="detail_txt m-0 px-3">PAN India Delivery,</p>
            <p class="detail_txt m-0 px-3">Same Day Dispatch</p>
          </div>
        </span>
      </div>
      <div class="col-12 col-sm-6 col-md-6 col-lg-3">
        <span class="delivery-col d-flex">
          <div>
            <i class="detail_logo fa fa-star" aria-hidden="true"></i>
          </div>
          <div>
            <p class="detail_txt m-0 px-3">Rating 4.8/5!</p>
            <p class="detail_txt m-0 px-3">from verified users</p>
          </div>
        </span>
      </div>
      <div class="col-12 col-sm-6 col-md-6 col-lg-3">
        <span class="delivery-col d-flex">
          <div>
            <i class="detail_logo fa fa-phone" aria-hidden="true"></i>
          </div>
          <div>
            <p class="detail_txt m-0 px-3">Call us: 9am - 5pm</p>
            <p class="detail_txt m-0 px-3"><a href="tel:8920578443">8920578443</a></p>
          </div>
        </span>
      </div>
      <div class="col-12 col-sm-6 col-md-6 col-lg-3">
        <span class="delivery-col d-flex">
          <div>
            <i class="detail_logo fa fa-comments" aria-hidden="true"></i>
          </div>
          <div>
			<a href="/contact-us">
            <p class="detail_txt m-0 px-3">Message Us,</p>
            <p class="detail_txt m-0 px-3">Fast response time</p>
			</a>
          </div>
        </span>
      </div>
    </div>
    </div>
  </div>
</section>
<!-- Shop By Pet Section  -->
<section class="shopbypet-block">
  <div class="container">
    <div class="footprint_bg p-5">
    <div class="row">
      <div>
        <h1 class="fw-bold d-flex justify-content-center category_heading">Shop By Pet</h1>
        <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
      </div>
	  <div class="mt-4">
      <div class="row d-flex justify-content-center align-item-center custom_mobile_shop">
        <div class="col-6 col-sm-6 col-md-6 col-lg-3 shop_by_pet" id="scrollToDog">
          <img src="{{ asset('assets/images/dogimg.jpg') }}" class="animal_images d-block w-75" alt="img">
          <p class=" px-5 mt-2 mx-2 pet_types_txt">DOGS</p>
        </div>
        <div class="col-6 col-sm-6 col-md-6 col-lg-3 shop_by_pet" id="scrollToCat">
         <img src="{{ asset('assets/images/kitten.jpg') }}" class="animal_images d-block w-75" alt="img">
          <p class="px-5 mt-2 mx-3 pet_types_txt">CATS</p>
        </div>
      </div>
      </div>
    </div>
    </div>
  </div>
</section>
<!-- Shop By Pet Section  -->
<section class="shopbyhealthissues-block">
  <div class="container">
	<div class="title-h">
        <h1 class="fw-bold d-flex justify-content-center category_heading">Shop By Health Issues</h1>
        <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
      </div>

	  <div class="health-issues-panel mt-4 text-center">
		<div class="health-issues-col">
			<a href="/product-category/others/dog-hairfall">
			  <img src="{{ asset('assets/images/healthissues-1.jpg') }}" class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Hairfall</h4>
			</a>
		</div>
		<div class="health-issues-col">
			<a href="/product-category/others/dog-dandruff">
			  <img src="{{ asset('assets/images/healthissues-2.jpg') }}" class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Dandruff</h4>
			 </a>
		</div>
		<div class="health-issues-col">
			<a href="/product-category/others/cat-appetite">
			  <img src="{{ asset('assets/images/healthissues-3.jpg') }}" class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Appetite</h4>
			</a>
		</div>
		<div class="health-issues-col">
			<a href="/product-category/others/dog-weight">
			  <img src="{{ asset('assets/images/healthissues-4.jpg') }}" class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Weight </h4>
			</a>
		</div>
		<div class="health-issues-col">
			<a href="/product-category/others/dog-joints-bones">
			  <img src="{{ asset('assets/images/healthissues-5.jpg') }}" class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Joints & Bones</h4>
			</a>
		</div>
		<div class="health-issues-col">
		<a href="/product-category/others/dog-dental">
			  <img src="{{ asset('assets/images/healthissues-6.jpg') }}" class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Dental</h4>
			  </a>
		</div>
		<div class="health-issues-col">
		<a href="/product-category/others/dog-skin-coat-supplement">
			  <img src="{{ asset('assets/images/healthissues-7.jpg') }}" class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Skin & Coat</h4>
			  </a>
		</div>
		<div class="health-issues-col">
		<a href="/product-category/others/dog-digestion">
			  <img src="{{ asset('assets/images/healthissues-8.jpg') }}" class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Digestion</h4>
			  </a>
		</div>
		<div class="health-issues-col">
		<a href="/product-category/others/dog-weakness">
			  <img src="{{ asset('assets/images/healthissues-9.jpg') }}" class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Weakness </h4>
			  </a>
		</div>
		<div class="health-issues-col">
		<a href="/product-category/others/dog-tick-n-fleas">
			  <img src="{{ asset('assets/images/healthissues-10.jpg') }}"  class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Tick n Fleas</h4>
			  </a>
		</div>
		<div class="health-issues-col">
		<a href="/product-category/others/cat-worms">
			  <img src="{{ asset('assets/images/healthissues-11.jpg') }}"  class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Worms </h4>
			  </a>
		</div>
		<div class="health-issues-col">
		<a href="/product-category/others/dog-ear-and-eye">
			  <img src="{{ asset('assets/images/healthissues-12.jpg') }}" class="health_issues_img" alt="img">
			  <h4 class="fw-bold">Ear and Eye </h4>
			  </a>
		</div>
      </div>
  </div>
</section>
<!-- Categories section  -->

<section class="categories-col">
  <div class="container">
    <div class="my-2">
      <h1 class="d-flex justify-content-center category_heading">Top Categories</h1>
      <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block mb-4" alt="img">
    </div>
    <div class="categories-panel text-center">     
      <div class="categories-list">
        <div class="sub_category_one" onclick="redirectToProduct('/product-category/dog/dog-food')">
          <img src="{{ asset('assets/images/category1.jpg') }}" class="category_img_mobile" alt="img">
          <img src="{{ asset('assets/images/secondcategory.jpg') }}" class="category_img" alt="img">
          <span class="custom_updated_categories">
            <p class="category_txt text-light fw-bold">Dog Food</p>
           <a class="text-decoration-none category_shop_btn" href="/product-category/dog/dog-food">Shop Now</a>
          </span>
        </div>
      </div>
      <div class="categories-list">
        <div class="sub_category_one" onclick="redirectToProduct('/product-category/dog/dog-accessories')">
			 <img src="{{ asset('assets/images/category2.jpg') }}" class="category_img_mobile" alt="img">
          <img src="{{ asset('assets/images/firstcategory.jpg') }}" class="category_img" alt="img">
          <span class="custom_updated_categories">
              <p class="category_txt fw-bold">Accessories</p>
			   <a class="text-decoration-none category_shop_btn" href="/product-category/dog/dog-accessories">Shop Now</a>
          </span>
        </div>
      </div>
      <div class="categories-list">
        <div class="sub_category_one" onclick="redirectToProduct('/product-category/dog/dog-accessories/dog-grooming')">
			 <img src="{{ asset('assets/images/category3.jpg') }}" class="category_img_mobile" alt="img">
          <img src="{{ asset('assets/images/thirdcategory.jpg') }}" class="category_img" alt="img">
          <span class="custom_updated_categories">
              <p class="category_txt fw-bold">Grooming</p>
				<a class="text-decoration-none category_shop_btn" href="/product-category/dog/dog-accessories/grooming">Shop Now</a>
          </span>
        </div>
      </div>
      <div class="categories-list">
        <div class="sub_category_one" onclick="redirectToProduct('/product-category/dog/dog-accessories/dog-toys')">
			 <img src="{{ asset('assets/images/category4.jpg') }}" class="category_img_mobile" alt="img">
          <img src="{{ asset('assets/images/fourthcategory.jpg') }}" class="category_img" alt="img">
          <span class="custom_updated_categories">
              <p class="category_txt fw-bold">Toys</p>
			<a class="text-decoration-none category_shop_btn" href="/product-category/dog/dog-accessories/toys">Shop Now</a>
          </span>
        </div>
      </div>
      <div class="categories-list">
        <div class="sub_category_one" onclick="redirectToProduct('/product-category/cat/cat-food')">
			 <img src="{{ asset('assets/images/category5.jpg') }}" class="category_img_mobile" alt="img">
          <img src="{{ asset('assets/images/fifthcategory.jpg') }}" class="category_img" alt="img">
          <span class="custom_updated_categories">
              <p class="category_txt fw-bold">Cat Food</p>
			  <a class="text-decoration-none category_shop_btn" href="/product-category/cat/cat-food">Shop Now</a>
          </span>
        </div>
      </div>
      <div class="categories-list">
        <div class="sub_category_one" onclick="redirectToProduct('/product-category/cat/cat-accessories')">
			 <img src="{{ asset('assets/images/category6.jpg') }}" class="category_img_mobile" alt="img">
          <img src="{{ asset('assets/images/sixthcategory.jpg') }}" class="category_img" alt="img">
          <span class="custom_updated_categories">
              <p class="category_txt fw-bold">Cat Accessories</p>
			<a class="text-decoration-none category_shop_btn" href="/product-category/cat/cat-accessories">Shop Now</a>
          </span>
        </div>
      </div>
      <div class="categories-list">
        <div class="sub_category_one" onclick="redirectToProduct('/product-category/dog/dog-food/dog-supplements')">
			 <img src="{{ asset('assets/images/category7.jpg') }}" class="category_img_mobile" alt="img">
          <img src="{{ asset('assets/images/seventhcategory.jpg') }}" class="category_img" alt="img">
          <span class="custom_updated_categories">
            <p class="category_txt fw-bold">Dog Medicine</p>
			       <a class="text-decoration-none category_shop_btn" href="/product-category/dog/dog-food/dog-supplements">Shop Now</a>
          </span>
        </div>
      </div>
      <div class="categories-list">
        <div class="sub_category_one" onclick="redirectToProduct('/product-category/cat/cat-health-issues')">
		 <img src="{{ asset('assets/images/category8.jpg') }}" class="category_img_mobile" alt="img">
          <img src="{{ asset('assets/images/eighthcategory.jpg') }}" class="category_img" alt="img">
          <span class="custom_updated_categories">
            <p class="category_txt fw-bold">Cat Medicine</p>
			<a class="text-decoration-none category_shop_btn" href="/product-category/cat/cat-health">Shop Now</a>
          </span>
        </div>
      </div>
	  <div class="categories-list display-mobile">
        <div class="sub_category_one" onclick="redirectToProduct('/shop?category[0]=29')">
		 <img src="{{ asset('assets/images/category9.jpg') }}" class="category_img_mobile" alt="img">
          <span class="custom_updated_categories">
            <p class="category_txt fw-bold">Treats</p>
			<a class="text-decoration-none category_shop_btn" href="/shop?category[0]=29">Shop Now</a>
          </span>
        </div>
      </div>
    </div>
  </div>
</section>  
<!-- Shop By Price  -->
<section class="shopbyprice-section">
  <div class="container">
      <div class="title-h">
        <h1 class="fw-bold d-flex justify-content-center category_heading">Shop By Price</h1>
        <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
      </div>
    <div class="row">
      <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3">
        <div class="custom_price_bgthree">
			<a class="text-decoration-none" href="/shop?price=199">
			<span class="price_circle"></span>
			<span class="pricing-tag">
				<h1 class="price_innertxt position-relative text-center lh-lg">₹ 199</h1>
				<h4 class="under-price-para">& Under</h4>
			</span>
			</a>
        </div>
      </div>
      <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3 mb-3">
        <div class="custom_price_bgtwo">
        <a class="text-decoration-none" href="/shop?price=299">
          <span class="price_circle"></span>
		  <span class="pricing-tag">
				<h1 class="price_innertxt position-relative text-center lh-lg">₹ 299</h1>
				<h4 class="under-price-para">& Under</h4>
			</span>
          </a>
        </div>
      </div>
      <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3 mb-3">
        <div class="custom_price_bgone">
        <a class="text-decoration-none" href="/shop?price=399">
          <span class="price_circle"></span>
		    <span class="pricing-tag">
				<h1 class="price_innertxt position-relative text-center lh-lg">₹ 399</h1>
				<h4 class="under-price-para">& Under</h4>
			</span>
          </a>
        </div>
      </div>
      <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3 mb-3">
        <div class="custom_price_bg">
        <a class="text-decoration-none" href="/shop?price=499">
          <span class="price_circle"></span>
		    <span class="pricing-tag">
				<h1 class="price_innertxt position-relative text-center lh-lg">₹ 499</h1>
				<h4 class="under-price-para">& Under</h4>
			</span>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
<!--Popular Dog Products  -->
<section class="shopping_section" id="popular-dog-products">
  <div class="container">
    <div class="row">
      <div class="col-12 col-sm-12 col-md-6 col-lg-8 col-xl-6">
        <h1 class="fw-bold d-flex category_heading mt-5 custom_center">Popular Dog Products</h1>
        <span>
          <img class="custom_center_border" src="{{ asset('assets/images/heading_border.png') }}"  alt="img">
        </span>
      </div>
      <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6 custom_viewmore_btn">
        <a class="d-flex justify-content-end text-decoration-none mt-5 fs-5 custom_view_txt" href="product-category/dog">View all
          products ></a>
      </div>
    </div>
    <div class="row py-3">
      @foreach ($productsByDog as $key => $product)
            <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                <div class="product_box">
                <div class="img_box pointer" onclick="redirectToProduct('{{ url('product/' . $product->slug) }}')">
                    <span class="bg_circle">
                    </span>
                    @if($product->featured_image)
                      <img src="{{ asset($product->featured_image) }}" class="product_img" alt="img">
                    @else
                      <img src="{{ asset('assets/images/product.png') }}" class="product_img" alt="img">
                    @endif
                </div>
                <div class="product_details justify-content-center my-3">                   
                    <h5 class="fw-bold d-flex justify-content-center pointer" onclick="redirectToProduct('{{ url('product/' . $product->slug) }}')">{{ ucwords($product->name) }} </h5>
                    <div class="d-flex justify-content-center">
                    <div>
                    <p class="price fw-bold d-flex justify-content-center fs-3 custom_rating_txt">₹{{ $product->selling_price }}</p>
                </div>
                <div>
                    <p class="price fw-bold fs-4 text-decoration-line-through p-1 mx-2">₹{{ $product->original_price }}</p>
                </div>
                </div>
                @php
                  $averageRating=getAverageRating($product->id);
                @endphp                
                    <div class="text-center custom_rating_txt">
                      {!! starRating($averageRating) !!}
                    </div>
                    <span><button type="button" onclick="redirectToProduct('{{ url('product/' . $product->slug) }}')" class="text-light submit_btn border-0 px-5 mx-auto d-block">
                    Shop Now
                    </button></span>
                </div>
                </div>
            </div>
        @endforeach 
    </div>
    <div class="view_more_products pb-5">
        <button class="view_more_border"><a class="d-flex justify-content-center text-decoration-none fs-5 custom_view_txt" href="{{ route('frontend.shop') }}?{{ http_build_query(['category[0]' => 1]) }}">View all
          products ></a></button>
      </div>
  </div>
</section>
<!--Furbaby Favourite  section  -->
<section class="FurbabyFavourite-block">
  <div class="container">
    <div class="row furbabyfavourite-bg p-5 text-center">
      <div class="title_furbaby mb-4">
        <h1 class="fw-bold d-flex justify-content-center category_heading">Furbaby Favourite</h1>
        <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
      </div>
      
      <div class="col-6 col-sm-6 col-md-6 col-lg-3">
        <a href="product-category/dog/dog-accessories/dog-collars-leashes" class="text-decoration-none text-dark">    
          <img src="{{ asset('assets/images/favpetone.jpg') }}" class="favanimal_images d-block w-75" alt="img">
          <p class="fw-bold mt-2 mx-2 furbaby_mobile_txt">Dog Leash</p>     
        </a>   
      </div>      
      <div class="col-6 col-sm-6 col-md-6 col-lg-3">
        <a href="product-category/dog/dog-accessories/dog-grooming" class="text-decoration-none text-dark">
          <img src="{{ asset('assets/images/favpettwo.jpg') }}" class="favanimal_images d-block w-75" alt="img">
          <p class="fw-bold  mt-2 mx-3 furbaby_mobile_txt">Dog Fur Coloring</p>
        </a>
      </div>     
      <div class="col-6 col-sm-6 col-md-6 col-lg-3">
        <a href="product-category/dog/dog-accessories/dog-clothes" class="text-decoration-none text-dark">
          <img src="{{ asset('assets/images/favpetthree.jpg') }}" class="favanimal_images d-block w-75" alt="img">
          <p class="fw-bold mt-2 furbaby_mobile_txt">Clothes</p>
        </a>
      </div>
      
      <div class="col-6 col-sm-6 col-md-6 col-lg-3">
        <a href="product-category/dog/dog-accessories/dog-travel-essentials" class="text-decoration-none text-dark"> 
          <img src="{{ asset('assets/images/dog-travel.jpg') }}" class="favanimal_images d-block w-75" alt="img">
          <p class="fw-bold mt-2  furbaby_mobile_txt">Travel Backpack</p>
        </a>
      </div>
      
      <span class="position-relative">
        <img src="{{ asset('assets/images/bannerside.png') }}" class="custom_side_bannerimg position-absolute top-50 start-100" alt="img">
      </span>
    </div>
  </div>
</section>
<!-- Popular Cat Products  -->
<section class="shopping_section" id="popular-cat-products">
  <div class="container">
    <div class="row">
      <div class="col-12 col-sm-12 col-md-6 col-lg-8 col-xl-6">
        <h1 class="fw-bold d-flex category_heading mt-5 custom_center">Popular Cat Products</h1>
        <span>
          <img class="custom_center_border"  src="{{ asset('assets/images/heading_border.png') }}"  alt="img">
        </span>
      </div>
      <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6 custom_viewmore_btn">
        <a class="d-flex justify-content-end text-decoration-none mt-5 fs-5 custom_view_txt" href="product-category/cat">View all
          products ></a>
      </div>
    </div>
    <div class="row py-3">
      @if($productsByCat)
        @foreach($productsByCat as $product)
          <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3">
            <div class="product_box">
              <div class="img_box pointer" onclick="redirectToProduct('{{ url('product/' . $product->slug) }}')">
                <span class="bg_circle">
                </span>
                @if($product->featured_image)
                  <img src="{{ asset($product->featured_image) }}" class="product_img" alt="img">
                @else
                  <img src="{{ asset('assets/images/product.png') }}" class="product_img" alt="img">
                @endif
              </div>
              <div class="product_details justify-content-center my-3">
                <h5 class="fw-bold d-flex justify-content-center pointer">{{ $product->name }}</h5>
                <div class="d-flex justify-content-center">
                  <div>
                  <p class="price fw-bold d-flex justify-content-center fs-3 custom_rating_txt">₹{{ $product->selling_price }}</p>
                </div>
                <div>
                  <p class="price fw-bold fs-4 text-decoration-line-through p-1 mx-2">₹{{ $product->original_price }}</p>
                </div>
              </div>
              @php
                  $averageRating=getAverageRating($product->id);
                @endphp  
                <div class="rating d-flex justify-content-center custom_rating_txt">
                   {!! starRating($averageRating) !!}
                </div>
                <span><button type="button" class="text-light submit_btn border-0 px-5 mx-auto d-block" onclick="redirectToProduct('{{ url('product/' . $product->slug) }}')">
                  Shop Now
                </button></span>
              </div>
            </div>
          </div>
        @endforeach
      @endif 
    </div>
    <div class="view_more_products pb-5">
    <button class="view_more_border"><a class="d-flex justify-content-center text-decoration-none fs-5 custom_view_txt" href="{{ route('frontend.shop') }}?{{ http_build_query(['category[0]' => 2]) }}">View all
          products ></a></button>
      </div>
  </div>
</section>
<!-- Sale Banner Section  -->
<section class="flashsale-2">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 col-md-12 col-lg-12 mt-5 custom_mobilebanner_margin">
        <h1 class="fw-bold d-flex justify-content-center category_heading">Flash Sale</h1>
        <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
      </div>
    </div>
    <div class="row py-3">
      <div class="col-sm-12 col-md-12 col-lg-12">.
        <div class="slideshow-container">
            @foreach($topBanners as $key => $banner)
            <div class="mySlides" style="display: {{ $key == 0 ? 'block' : 'none' }}">
                <a href="{{ $banner->link }}">
                  <img src="{{ asset($banner->image) }}" class="sale_image" alt="Banner Image">
                </a>
				<img src="{{ asset($banner->mobile_banner_image) }}" class="sale_image-m" onclick="redirectToProduct('{{ $banner->link }}')" alt="Banner Image">
            </div>
            @endforeach
        </div>
        <div class="d-flex justify-content-center py-4 custom_mobiledot_padding">
          <span class="dot mx-2 dotactive" onclick="currentSlide(1)"></span> 
          <span class="dot mx-2" onclick="currentSlide(2)"></span> 
          <span class="dot mx-2" onclick="currentSlide(3)"></span> 
        </div>  
      </div>
    </div>
  </div>
</section>
<!-- Seasonal Special Section  -->
<section class="shopping_section">
  <div class="container">
  <div class="row">
      <div class="col-12 col-sm-12 col-md-6 col-lg-8 col-xl-6">
        <h1 class="fw-bold d-flex category_heading custom_center">Seasonal Special</h1>
        <span>
          <img class="custom_center_border" src="{{ asset('assets/images/heading_border.png') }}"  alt="img">
        </span>
      </div>
      <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6 custom_viewmore_btn">
        <a class="d-flex justify-content-end text-decoration-none fs-5 custom_view_txt" href="{{ route('frontend.shop') }}?{{ http_build_query(['seasonal' => 1]) }}">View all
          products ></a>
      </div>
    </div>
    <div class="row py-3">
      @if($productsBySeasonal)
        @foreach($productsBySeasonal as $seasonalproduct)
          <div class="col-6 col-sm-6 col-md-6 col-lg-3 col-xl-3">
            <div class="product_box" >
              <div class="img_box pointer"  onclick="redirectToProduct('{{ url('product/' . $seasonalproduct->slug) }}')"> 
                <span class="bg_circle"></span>
                @if($seasonalproduct->featured_image)
                  <img src="{{ asset($seasonalproduct->featured_image) }}" class="product_img" alt="img">
                @else
                  <img src="{{ asset('assets/images/product.png') }}" class="product_img" alt="img">
                @endif
              </div>
              <div class="product_details justify-content-center my-3">
                <h5 class="fw-bold d-flex justify-content-center pointer" onclick="redirectToProduct('{{ url('product/' . $seasonalproduct->slug) }}')">{{ $seasonalproduct->name }}</h5>
                <div class="d-flex justify-content-center">
                  <div>
                    <p class="price fw-bold d-flex justify-content-center fs-3 custom_rating_txt">₹{{ $seasonalproduct->selling_price }}</p>
                  </div>
                  <div>
                    <p class="price fw-bold fs-4 text-decoration-line-through p-1 mx-2">₹{{ $seasonalproduct->original_price }}</p>
                  </div>
                </div>
                @php
                  $averageRating=getAverageRating($seasonalproduct->id);
                @endphp  
                <div class="rating d-flex justify-content-center custom_rating_txt">
                   {!! starRating($averageRating) !!}
                </div>                
                <span>
                  <button type="button" class="text-light submit_btn border-0 px-5 mx-auto d-block" onclick="redirectToProduct('{{ url('product/' . $seasonalproduct->slug) }}')">
                  Shop Now
                </button>
              </span>
          </div>
        </div>
      </div>
      @endforeach
      @endif 
    </div>
    <div class="view_more_products pb-5">
    <button class="view_more_border"><a class="d-flex justify-content-center text-decoration-none fs-5 custom_view_txt" href="{{ route('frontend.shop') }}?{{ http_build_query(['seasonal' => 1]) }}">View all
          products ></a></button>
      </div>
  </div>
</section>   
<!-- directory section  -->
<section class="directory-section mt-4 mb-4">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 col-md-12 col-lg-12 py-4">
        <div>
          <h1 class="fw-bold d-flex justify-content-center category_heading">Directory</h1>
          <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
        </div>
      </div>
    </div>
    <!-- directory cards  --> 
    <div class="row">
      
        <div class="col-6 col-sm-6 col-md-6 col-lg-3">
          <a href="/directory/adopt" class="text-decoration-none text-dark">
          <div class="bg_buy">
            <div class="img_section">
              <img src="{{ asset('assets/images/directory-icon1.png') }}" class="d-block mx-auto mobile_dir_cardimg" alt="img">
            </div>
            <div class="heading_txt">
              <h1 class="text-center dir_inner_content fw-bold">Buy/Adopt</h1>
            </div>
            <div class="content">
              <p class="text-center card_inner_txt">Planning on getting a new family member ? Here's a list of responsible breeders and adoption centres.</p>
            </div>
          </div>
          </a>
        </div>

		<div class="col-6 col-sm-6 col-md-6 col-lg-3">
          <a href="/directory/grooming" class="text-decoration-none text-dark">
            <div class="bg_groom">
              <div class="img_section">
                <img src="{{ asset('assets/images/directory-icon2.png') }}" class="d-block mx-auto mobile_dir_cardimg" alt="img">
              </div>        
              <div class="heading_txt">
                <h1 class="text-center dir_inner_content fw-bold">Grooming</h1>
              </div>
              <div class="content">
                <p class="text-center directory_card_txt">Hair Cuts, Medicated Baths, Nail Trimming, Anal Gland Expression, Tooth Brushing & more for your furbaby.</p>
              </div>        
            </div>
          </a>
        </div>
      
      <div class="col-6 col-sm-6 col-md-6 col-lg-3">
        <a href="/directory/training" class="text-decoration-none text-dark">
          <div class="bg_training">
            <div class="img_section">
              <img src="{{ asset('assets/images/directory-icon3.png') }}" class=" d-block mx-auto mobile_dir_cardimg" alt="img">
            </div>            
            <div class="heading_txt">
              <h1 class="text-center dir_inner_content fw-bold">Training</h1>
            </div>
            <div class="content">
              <p class="text-center directory_card_txt">Be it basic behavioural training or security, browse through a list of the best dog trainers in your city.</p>
            </div>            
          </div>
        </a>
      </div>
      

      
      <div class="col-6 col-sm-6 col-md-6 col-lg-3">
        <a href="/directory/vets" class="text-decoration-none text-dark">
          <div class="bg_vets">
            <div class="img_section">
              <img src="{{ asset('assets/images/directory-icon4.png') }}" class="d-block mx-auto mobile_dir_cardimg" alt="img">
            </div>
            
            <div class="heading_txt">
              <h1 class="text-center dir_inner_content fw-bold">Vets</h1>
            </div>
            <div class="content">
              <p class="text-center directory_card_txt">Healthy pet is a happy pet. Here's a list of the best veterinary practitioners in your city.</p>
            </div>          
          </div>
        </a>
      </div>
      
    </div>
  </div>
</section>
<!-- World wide relocation Section  -->
<section class="world-wide-section">
  <div class="container">
    <div class="worldwide_img">
    <div class="row">
      <div class="col-sm-12 col-md-8 col-lg-8">
        <div class="custom_mobile_subscribe">
			<div class="petflight-logo mb-3"><img src="{{ asset('assets/images/petflights.png') }}" class="" alt="img"></div>
			<h1 class="fw-bold d-flex justify-content-start category_heading text-light custom_wrldwide_txt">WorldWide Pet <br> Relocation Service</h1>
			<p class=" m-0 text-light worldwide_txt">Planning an international travel ? We can handle all documents and paperwork for your fur baby
            including:Microchip Implantation,Vaccibation & Blood Tests,IATA Approved Crates,Flight Bookings,Manifest Cargo/Accompained Baggage,Health Certificates,
            Local Transportation,Boarding & Home Stays and More.</p>
        <form id="pet_flight_Form" method="POST">
          @csrf
        <div class="row my-3 custom_mobile_worldwide">          
            <div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
              <input type="text" class="form-control form_input border-0" placeholder="Name" name="name" required>
            </div>
            <div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4 custom_worldwide_input">
              <input type="tel" id="phone-number" class="form-control form_input border-0" name="phone" placeholder="Phone number" required>
            </div>
            <div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
              <button type="submit"  class="text-light get_quotebtn border-0 px-5">Get A Quote</button>
            </div>
      
          <div class="message" id="success_msg" style="color: green;"></div>
          <span class="py-4">
            <div class="d-flex dashed_border_worldwide">
              <div>
                <i class="fa fa-phone fs-1 text-white p-3" aria-hidden="true"></i>
              </div>
              <div class="contact-d-panel">
                <p class="text-white fw-bold mb-0">Contact Us Today</p>
                <a href="tel:892-057-8443" class="text-decoration-none contact-number">892-057-8443</a>
              </div>
            </div>
          </span>
        </div>
        </form>
        </div>
      </div>
      <div class="col-sm-12 col-md-4 col-lg-4">
        <img class="my-5 custom_worldwidedog" src="{{ asset('assets/images/worldwide-dog.png') }}" alt="img">
      </div>
    </div>
    </div>
  </div>
</section>

<!-- steal deal section  -->
<section class="steal-deal-block">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-lg-12">
            <div class="py-4">
              <h1 class="fw-bold d-flex justify-content-center category_heading">Steal Deal</h1>
              <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
            </div>
          </div>
        </div>

        <div class="hover-on bg-yellow" onclick="redirectToProduct('{{ url('product/nutricoat-advance-omega6-and-omega3-fatty-acids-liquid-supplement') }}')">
        <div class=" row">
          <div class="d-flex flex-column flex-md-row gap-3 gap-md-1 align-items-center pt-3 px-3" >

            <div class="ratio-44 text-center order-1 order-md-1">
              <img src="{{ asset('assets/images/steal-week-deal.webp') }}" width="70%" class="display-web" alt="dog">
              <img src="{{ asset('assets/images/DealoftheWeek2.png') }}" class="display-mob steal-deal-m" width="70%" alt="dog">
            </div>

            <div class="ratio-56 d-flex align-items-center justify-content-center order-2 order-md-2">
              <div class="d-flex align-items-center p-2 pe-md-5 flex-remover">
                <div class="ratio-20">
                  <img src="{{ asset('assets/images/petcarenew.png') }}" width="100%" alt="img">
                </div>
                <div class="ms-3 mx-md-5 ratio-80">
                  <h3 class="steal-heading">Nutricoat Advance - Omega6 and Omega3 Fatty Acids Liquid Supplement</h3>
                  <h3 class="steal-heading mt-2 orange">₹360.00 <span class="text-decoration-line-through text-dark">₹470.00</span></h3>
                  <button class="btn btn-dark btn-md-lg rounded-pill mt-2 mt-md-4">Shop Now</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        </div>
      </div>
    </section>
<!-- Brands Section -->
<section class="brands_bg">
    <div class="container">
		<div class="title-h">
			<h1 class="fw-bold d-flex justify-content-center category_heading">Shop By Brands</h1>
			<img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
		</div>

  
         
                <div class="d-flex flex-wrap justify-content-center align-items-center custom_brand_slider" id="brandContainer">
                    @foreach($brands->take(13) as $brand)  
                      <div class="brand-logo @if(strtolower($brand->name) == 'remediovet') remediovet-logo @endif" >
                          <a href="/shop?brand[0]={{ $brand->name }}">
                              <img src="{{ asset($brand->image) }}" class="brands_images d-block " alt="{{ $brand->name }}" loading="lazy">
                          </a>
                      </div>
                    @endforeach
                </div>
 

            <div class=" text-center viewbrnands">
                <button type="button" class="custom_brand_btn text-light border-0 px-5 py-2" id="toggleBrands">
                    View All Brands
                </button>
            </div>
    </div>
</section>
<!-- Advertise Banner  -->
<section class="flashsale-3">
  <div class="container">
    <div class="row py-5 custom_banner_padding">
      <div class="col-sm-12 col-md-12 col-lg-12">
        @foreach($bottomBanners as $key => $banner)
          <div class="myAdSlides" style="display: {{ $key == 0 ? 'block' : 'none' }}">
              <img src="{{ asset($banner->image) }}" class="sale_image " onclick="redirectToProduct('{{ $banner->link }}')"  alt="Banner Image" loading="lazy">
              <img src="{{ asset($banner->mobile_banner_image) }}" class="sale_image-m" onclick="redirectToProduct('{{ $banner->link }}')"  alt="Banner Image" loading="lazy">
          </div>
        @endforeach      
        
        <!-- <a class="prev" onclick="plusSlides(-1)">❮</a>
        <a class="next" onclick="plusSlides(1)">❯</a> -->
        <div class="d-flex justify-content-center py-4">
          <span class="dotAd  mx-2 dotAdactive" onclick="currentAdSlide(1)"></span> 
          <span class="dotAd  mx-2" onclick="currentAdSlide(2)"></span> 
          <span class="dotAd  mx-2" onclick="currentAdSlide(3)"></span> 
        </div>  
      </div>
    </div>
  </div>
</section>
<!-- Blog Section  -->
<section class="blog-section">
  <div class="container">
    <div class="row">
      <div class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-6">
	  <div class="blog-title">
        <h1 class="fw-bold d-flex category_heading custom_center">Latest News & Blog</h1>
        <span>
          <img class="custom_center_border" src="{{ asset('assets/images/heading_border.png') }}"  alt="img">
        </span>
      </div>
      </div>
      <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-6 custom_viewmore_btn">
        <a class="d-flex justify-content-end text-decoration-none mt-5 fs-5 custom_view_txt" href="{{ route('frontend.blogs') }}">View all
          Blogs ></a>
      </div>
      @if($blogs)
         @foreach($blogs as $blog)
           <div class="col-sm-12 col-md-4 col-lg-4  custom_blog_width">
            <a href="{{ route('frontend.view.blog',[encrypt($blog->id)]) }}" class="text-decoration-none">
            <div class="card custom_card">
              <img class="card-img-top custom_cardimg" src="{{ asset($blog->featured_image) }}" alt="img" loading="lazy">
                <div class="card-body">
                  <h4 class="card-title fw-bold custom_cardtxt">{!! Str::limit($blog->title, 50) !!}</h4>
                  <p class="card-textcustom_cardtxt text-decoration-none" >{!! Str::limit($blog->description, 50) !!}</p>
                  <h6 class="card_readmore">Read More >></h6>
                </div>
              </div>
            </a>
          </div>
          @endforeach
      @endif 
    </div>
    <div class="view_more_products">
    <button class="view_more_border"><a class="d-flex justify-content-center text-decoration-none fs-5 custom_view_txt" href="{{ route('frontend.blogs') }}">View all
          Blog ></a></button>
      </div>
  </div>
</section>
<!-- Subscribe Section  -->
<section class="subscribe-section">
  <div class="container">
	  <div class="subcribe_img">
        <div class="custom_mobile_subscribe">
          <h1 class=" category_heading mt-5">Subscribe Now!!!</h1>
          <img src="{{ asset('assets/images/heading_border.png') }}" class="" alt="img">
		  
		  <div class="newsletter-panel">
          <p class="m-0 shipping_txt mt-3">FREE Shipping on orders over 500</p>
          <p class="m-0 shipping_txt">New subscribers get 50% OFF</p>
          <p class="m-0 shipping_txt">Receive exclusive deals</p>        

          <form id="subscribeForm" method="POST">
            @csrf
                  <label>Enter Phone Number</label><br/>
            <div class="d-flex align-item-center custom_mobile_input">
                <div>
                    <input class="input_f input_field" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="(123-456-7890)" type="tel" id="phone_number" name="phone_number" required />
                    <span class="error-message" id="phone_error" style="color: red;"></span>
                    <!-- <div class="g-recaptcha" data-sitekey="{{ env('RECAPTCHA_SITE_KEY') }}"></div> -->
                </div>
                <button type="submit" class="subscribe_btn text-light border-0 px-5">Submit</button>
            </div>
            <div class="message" id="subscribe_success_msg" style="color: green;"></div>
        </form>
           </div>
           </div>
    </div>
  </div>
</section>


<section class="custom_reviews_section">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 col-md-12 col-lg-12 mt-4">
          <h1 class="fw-bold d-flex justify-content-center category_heading">Raving Reviews</h1>
          <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
      </div>
    </div>

    <div class="home-demo">
      <div class="review_section slick-slider">
          @foreach ($updatedData as $review)
            <div class="element element-1">
                <div class="review_content">
                  <span class="short-full_name">
                  @if($review['profile_image'])                                                               
                     <img class="client_img mx-auto d-block" src="{{$review['profile_image']}}" alt="img" loading="lazy">
                    @else
                    {{$review['short_full_name']}}
                    @endif
                    </span>
                    <span class="d-flex justify-content-center">
                        <p class="fw-bold custom_name">{{$review['full_name']}}</p>
                        <i class="fa fa-check py-1 mx-1 custom_check" aria-hidden="true"></i>
                    </span>
                    <div class="rating d-flex justify-content-center text-warning">
                      {!! $review['rating'] !!}
                        
                    </div>
                    <span><p class="d-flex justify-content-center custom_name">{{$review['formatted_review_date']}}</p></span>
                    <p class="text-center comments_txt">{{ \Illuminate\Support\Str::words($review['comment'], 10, '...') }}</p>
                </div>
            </div>
          @endforeach
      </div>
    </div>
  </div>
</section>
<!-- <button id="openModalBtn">Open Modal</button> -->
<!-- Google review section  -->

<!-- <section class="custom_reviews_section">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 col-md-12 col-lg-12 mt-4">
          <h1 class="fw-bold d-flex justify-content-center category_heading">Raving Reviews</h1>
          <img src="{{ asset('assets/images/heading_border.png') }}" class="mx-auto d-block" alt="img">
      </div>
    </div>
    <div class="row py-4">
      <div id="google-reviews"></div>
        <div class="review_sections d-flex"> 
        <div class="elfsight-app-b8a76eea-f30d-49b4-827b-7c449c2b13a0" data-elfsight-app-lazy></div>



       
        </div>
    </div>
  </div>
</section> -->


<!-- Modal Trigger Button -->



@endsection
@section('script')
<script>
  var subscribeFormUrl="{{ route('submit.frontend.subscribe.form') }}";
  var petFlightFormUrl="{{ route('submit.frontend.pet_flight.form') }}";
  var getGoogleReviewsUrl="{{ route('get.google.reviews') }}";
</script>
<script>




document.addEventListener('DOMContentLoaded', function() {
    const brandContainer = document.getElementById('brandContainer');
    const toggleBrandsButton = document.getElementById('toggleBrands');
    const brandsToShowInitially = 12; // Number of brands to show initially
    let isShowingAllBrands = false;

    // Function to toggle visibility of brands
    function toggleBrandsVisibility() {
        const brands = document.querySelectorAll('.custom_brand_slider > div');
        brands.forEach((brand, index) => {
            if (index < brandsToShowInitially || isShowingAllBrands) {
                brand.style.display = 'block';
            } else {
                brand.style.display = 'none';
            }
        });

        // Toggle button text based on visibility
        toggleBrandsButton.textContent = isShowingAllBrands ? 'View Less' : 'View All Brands';
    }

    toggleBrandsButton.addEventListener('click', function() {
        isShowingAllBrands = !isShowingAllBrands;
        toggleBrandsVisibility();
    });

    // Initial visibility setup
    toggleBrandsVisibility();
});


// Function to get a cookie by name
    function getCookie(name) {
        let cookieArr = document.cookie.split(";");

        for (let i = 0; i < cookieArr.length; i++) {
            let cookiePair = cookieArr[i].split("=");

            if (name == cookiePair[0].trim()) {
                return decodeURIComponent(cookiePair[1]);
            }
        }

        return null;
    }

    // // Function to set a cookie
    function setCookie(name, value, days) {
        let date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        let expires = "expires=" + date.toUTCString();
        document.cookie = name + "=" + encodeURIComponent(value) + ";" + expires + ";path=/";
    }

    // Function to check and show modal
    function checkAndShowModal() {
        let visits = getCookie("modalVisits");
        let today = new Date().toISOString().split('T')[0];

        if (visits) {
            visits = JSON.parse(visits);

            if (visits.date === today) {
              

                if (visits.count < 2) {
                    visits.count++;
                    setCookie("modalVisits", JSON.stringify(visits), 1);
                    $('#myModal').modal('show');
                }
            } else {
                visits = { date: today, count: 1 };
                setCookie("modalVisits", JSON.stringify(visits), 1);
                $('#myModal').modal('show');
            }
        } else {
            visits = { date: today, count: 1 };
            setCookie("modalVisits", JSON.stringify(visits), 1);
            $('#myModal').modal('show');
        }
        console.log(visits.count)
    }

    $(document).ready(function () {
        checkAndShowModal();
    });


  </script>
@endsection

