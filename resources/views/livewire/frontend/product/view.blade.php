<!-- open product  -->
<section class="product-details-columns">
<div class="container">
    <div class="row">
        <div class="product-wraper col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
            <div class="bg-white" wire:ignore>
                @if (count($product->productImages) > 0)
                    {{-- <img src="{{ asset($product->productImages[0]->image) }}" class="w-100" alt="Img"> --}}
                    <div class="exzoom" id="exzoom">
                        <!-- Images -->
                        <div class="exzoom_img_box">
                            <ul class='exzoom_img_ul'>
                                @foreach ($product->productImages as $itemImg)
                                    <li
                                        class="popup d-flex justify-content-center align-items-center moreImages fs-5 p-2">
                                        <img src="{{ asset($itemImg->image) }}" /></li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="exzoom_nav"></div>
                        <!-- Nav Buttons -->
                        <p class="exzoom_btn">
                            <a href="javascript:void(0);" class="exzoom_prev_btn">
                                < </a>
                                    <a href="javascript:void(0);" class="exzoom_next_btn"> > </a>
                        </p>
                    </div>
                @else
                    <div class="exzoom" id="exzoom">
                        <div class="exzoom_img_box">
                            <ul class='exzoom_img_ul'>
                                <li
                                    class="popup d-flex justify-content-center align-items-center moreImages fs-5 p-2">
                                    <img src="{{ asset($product->featured_image) }}" /></li>
                            </ul>
                        </div>
                        <div class="exzoom_nav"></div>
                        <!-- Nav Buttons -->
                        <p class="exzoom_btn">
                            <a href="javascript:void(0);" class="exzoom_prev_btn">
                                < </a>
                                    <a href="javascript:void(0);" class="exzoom_next_btn"> > </a>
                        </p>
                    </div>
                @endif
            </div>
        </div>

   

        <div class="zoom-show">
            <div class="overlay"></div>
            <div class="img-show">
                <span class="close" title="Close">x</span>
                <span class="plus" title="ZoomIn" >+</span>
                <span class="minus" title="ZoomOut" >−</span>
                <span class="reset" title="Reset" >⟲</span>
                <img src="">
            </div>
        </div>

        <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 d-flex flex-column">
            <div class="product-title d-flex flex-column gap-1">
                <h1 class="fw-bolder">{{ $product->name }}</h1>

                <div class="mb-3 d-flex gap-4 align-items-center fs-5"><span
                        class="px-2 py-1 rounded orange brandName"><a class="text-decoration-none" href="{{ route('frontend.shop', ['brand[]' => $product->brand]) }}"> {{ $product->brand }}</a></span>
                    @php
                        $averageRating = getAverageRating($product->id);
                    @endphp

                    <span class="star-rating-icon orange">
                        {!! starRating($averageRating) !!}
                    </span>
                </div>
            </div>
            @if (count($product->productVariations) > 0)
                @php
                    $variationPrices = [];
                    foreach ($product->productVariations as $variation) {
                        $variationPrices[] = $variation->price;
                    }
                    $minPrice = min($variationPrices);
                    $maxPrice = max($variationPrices);
                @endphp

                <h4 class="fw-bolder">&#8377;{{ $minPrice }} - &#8377;{{ $maxPrice }}</h4>
            @else
                <h1 class="fw-bolder orange">&#8377;{{ $product->selling_price }} <span
                        class="fs-3 text-decoration-line-through text-dark">&#8377;{{ $product->original_price }}</span>
                </h1>
            @endif

            @php 
            $leftQuantity= getLeftProductQuantity($product->id,$product->quantity);
            @endphp

            @if(count($product->productAttributes->where('attribute_id', 2)) > 0)
                <div class="att_value">

                </div>
                @else
                <span class="left_quantity">Only {{ $product->quantity }} products left</span>
            @endif
            <span class="single_product_price" style="visibility: hidden;"></span>
            <!-- //Variation -->
            @if(count($product->productAttributes->where('attribute_id', 2)) > 0)
                <div class="product-configuration">
                    <div class="cable-config">
                        <span>Sizes:</span>
                        <div class="size-choose" name="variation_size">
                            @foreach ($product->productAttributes->where('attribute_id', 2) as $attributes)
								<div class="size_li"><input type="radio" name="size_field" id="size-{{ $attributes->value }}" value="{{ $attributes->value }}"><label for="size-{{ $attributes->value }}">{{ $attributes->value }}</label></div>
                            @endforeach                            
                        </div>
                    </div>
                </div>
            @endif


            @if(count($product->productAttributes->where('attribute_id', 1)) > 0)
                <div class="product-color">
                    <div class="cable-config">
                        <span>Colors:</span>
                        <div class="color-choose" name="variation_color">
                            @foreach ($product->productAttributes->where('attribute_id', 1) as $attributes)
                                <div class="color_li"><input type="checkbox" name="color_field" id="color-{{ $attributes->value }}" value="{{ $attributes->value }}" ><label for="color-{{ $attributes->value }}">{{ $attributes->value }}</label></div>
                            @endforeach                            
                        </div>
                    </div>
                </div>
            @endif

            @php
                $sizeAttributes = $product->productAttributes->where('attribute_id', 2);
                $colorAttributes = $product->productAttributes->where('attribute_id', 1);
            @endphp

            @if(count($sizeAttributes) > 0 || count($colorAttributes) > 0)
                <div id="selectedVariationPrice" ></div>
            @endif
			<!--@if(count($product->productAttributes->where('attribute_id', 2)) > 0)
                <div class="product-configuration">
                    <div class="cable-config">
                        <span>Sizes:</span>
                        <div class="size-choose">
							
                            <select class="form-control" name="variation_size" id="variation-size" >
                                <option value="">Please Choose Size</option>
                                @foreach ($product->productAttributes->where('attribute_id', 2) as $attributes)
                                    <option value="{{ $attributes->value }}">{{ $attributes->value }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div
            @endif-->

            <!-- @if(count($product->productAttributes->where('attribute_id', 1)) > 0)
                <div class="product-configuration">
                    <div class="cable-config">
                        <span>Color:</span>
                        <div class="color-choose">
                            <select class="form-control" name="variation_color" id="variation-color" >
                                <option value="">Please Choose Color</option>
                                @foreach ($product->productAttributes->where('attribute_id', 1) as $attributes)
                                    <option value="{{ $attributes->value }}">{{ $attributes->value }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
            @endif -->


            
            @auth
                {{-- <div id="cartButton" class="botton-add-to-cart-btn">
                    <button class="btn btn-primary topAddToCart" wire:click="addToCart({{ $product->id }})">Add to
                        Cart</button>
                </div> --}}
            @endauth
            <div class="qty-addtocart-col d-flex flex-column flex-md-row align-items-md-center gap-5 gap-md-2 fs-5">
                <div class="d-flex gap-2 align-items-center">
                    <div>Qty</div>

                    <div class="product-qty">
                        <button type="button" class="decrease-btn">-</button>
                        <!-- wire:click="quantityDecrement" -->

                        <input class="rounded-pill qty" id="quantity" type="text" min="1" max="{{ $leftQuantity }}" value="1">
                        <!-- wire:click="quantityIncrement" -->
                        <button type="button" class="increase-btn">+</button>
                    </div>

                </div>
                @php
                    $is_variation=count($product->productAttributes);

                @endphp

                <input type="hidden" id="variation_id" >

                <div class=" d-flex gap-2 align-items-center justify-content-center">
                    <button id="addToCartBtn" class="addToCartBtn rounded-pill fw-bolder topAddToCart finalAddToCart" {{ (($is_variation > 0)) ? '' : ''}}>Add to cart</button>
                   
                    <div class="wishlistButton">
                        @if ($product->isAddedToWishlist)
                            <button type="button" onclick="wishlist('{{ $product->id }}','remove')"
                                class="btn1 tertsdgdd border-0 bg-white">
                                <i class="fa-solid fa-heart" style="color: #FF852F;"></i>
                                <span style="display:none">
                                    Removing...
                                </span>
                            </button>
                        @else
                            <button type="button"  onclick="wishlist('{{ $product->id }}','add')" class="btn1 fsdfsdfs border-0 bg-white">
                                <i class="fa-regular fa-heart" style="color: #FF852F;"></i>
                                <span style="display:none">
                                    Adding...
                                </span>
                            </button>
                        @endif
                    </div>
                </div>
            </div>
            <hr />
            <!-- addon products  -->

            <h3><strong>Frequently Bought Together</strong></h3>
            @if (count($product->productAddons) > 0)
                @foreach ($product->productAddons as $addon)
                    <div class="d-flex gap-4 mb-3">
                        
                        <div class="addonProduct fs-5 orange position-relative">
						<div class="check-addonbutton">
                            <!-- Add the checkbox here -->
                            <input type="checkbox" class="form-check-input me-2" id="addonCheckbox{{ $addon->product->id }}" name="addonCheckbox[]" value="{{ $addon->product->id }}">
                        </div>
						<div class="pro-add-img border border-2 border-black">
                            @if ($addon->product->featured_image)
                                <img src="{{ asset($addon->product->featured_image) }}" width="90%" alt="product">
                            @else
                                <img src="{{ asset('assets/images/default-featured-image.jpg') }}" width="90%" alt="product">
                            @endif
                            <!-- <span class="position-absolute"><i class="fa-solid fa-circle-check"></i></span> -->
                        </div>
                        </div>
                        <div class="d-flex flex-column gap-2 addon-col">
                            <div>
                                <h5 class="addon-productname">{{ $addon->product->name }}</h5>
                            </div>
                            <div class="fs-5 fw-bolder orange">
                                &#8377; {{ $addon->product->selling_price }}
                                <span class="text-decoration-line-through text-dark">&#8377;{{ $addon->product->original_price }}</span>
                            </div>

                             <div>
								<label for="addonCheckbox{{ $addon->product->id }}" class="addonbtn-i"> Add On</label>
								
                            </div> 
                        </div>
                    </div>
                @endforeach
            @else
                <div class="d-flex gap-4 text-center">No Addon Products</div>
            @endif

        </div>

      </div> 
    </div>
</section>
<!-- videos section  -->

@if ($product->video_1 || $product->video_2 || $product->video_3)
    <section class="container">
        <div class="row my-5">
            @if ($product->video_1)
                <div class="video col-md-4 mt-2 p-3">
                    <div class="h-100 border">
                        <iframe width="100%" height="100%" src="{{ $product->video_1 }}" frameborder="0"
                            gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                    </div>
                </div>
            @endif
            @if ($product->video_2)
                <div class="video col-md-4 mt-2 p-3">
                    <div class="h-100 border">
                        <iframe width="100%" height="100%" src="{{ $product->video_2 }}" frameborder="0"
                            gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                    </div>
                </div>
            @endif
            @if ($product->video_3)
                <div class="video col-md-4 mt-2 p-3">
                    <div class="h-100 border">
                        <iframe width="100%" height="100%" src="{{ $product->video_3 }}" frameborder="0"
                            gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                    </div>
                </div>
            @endif
        </div>
    </section>
@endif
<!-- discription section  -->
<section class="container">
    <div class="description d-flex flex-column gap-4 my-5 p-2 p-md-5 border border-2 border-black">
        <div>
            <h2 class="fw-bolder">Description</h2>
            <img src="{{ asset('assets/images/heading_border.png') }}" alt="base-line">
        </div>
        <div class="d-flex flex-column gap-3">
            {!! $product->description !!}
        </div>
    </div>
</section>
<!-- pet banner  -->
<section class="pet-banner my-5 d-none">
    <img src="{{ asset('assets/images/Keep your pets away from parasites and worms_.jpg') }}" width="100%"
        alt="">
</section>
<!-- review section  -->
<section class="container my-5 right-section">

    <!-- heading  -->
    <div class="text-center mb-5">
        <h1 class="fw-bolder">Reviews</h1>
        <img src="{{ asset('assets/images/heading_border.png') }}" alt="">
    </div>

    <div class="row">

        <!-- left review section  -->
        <div class="col-md-6 d-flex flex-column gap-2 gap-md-4">
            <div>
                <h3>Add a Review</h3>
            </div>
            <div class="fs-5 d-flex gap-3">
                <p class="d-inline-block fw-semibold">Your rating:</p>
                <div class="rating">
                    <input type="radio" name="rating" id="rating-1" value="5">
                    <label for="rating-1"></label>
                    <input type="radio" name="rating" id="rating-2" value="4">
                    <label for="rating-2"></label>
                    <input type="radio" name="rating" id="rating-3" value="3">
                    <label for="rating-3"></label>
                    <input type="radio" name="rating" id="rating-4" value="2">
                    <label for="rating-4"></label>
                    <input type="radio" name="rating" id="rating-5" value="1">
                    <label for="rating-5"></label>
                </div>
            </div>
            <input type="hidden" name="product_id" id="product_id" value="{{ $product->id }}">
            <div>
                <textarea name="review" id="review" placeholder="Write your Review" class="text-box form-control fs-5"
                    rows="6"></textarea>
            </div>
            <div><button id="submit-review" class="mybtn btn py-3 px-5 fs-5 text-light fw-bolder rounded-pill"
                    type="button">Submit</button></div>
        </div>
        <!-- right review section  -->
        <div class="col-md-6 d-flex flex-column gap-5 custom_product_review">
            @if (count($product->productReviews) > 0)
                <!-- user one  -->
                @foreach ($product->productReviews as $review)
                    <!-- user two  -->
                    <div class="user d-flex gap-3 border border-2 border-black">
                        <div><img src="{{ asset('assets/images/user.png') }}" alt="user"></div>
                        <div class="d-flex flex-column gap-0">
                            <div>
                                <h3 class="fw-bolder">{{ $review->user->name }}</h3>
                                <p class="fs-5 text-secondary">
                                    {{ \Carbon\Carbon::parse($review->created_at)->format('j F, Y') }}</p>
                            </div>
                            <div>
                                <span class="orange">
                                    {!! starRating($review->rating) !!}
                                </span>
                                <p class="fs-5">{!! $review->comment !!}</p>
                            </div>
                        </div>
                    </div>
                @endforeach
            @else
                <div class="no-review text-center">
                    <img src="{{ asset('assets/images/no_review.jpg') }}" alt="No Reviews">
                    <p class="fs-5 text-secondary">No reviews found for this product yet.</p>
                </div>
            @endif

        </div>
    </div>
</section>



<!-- FAQ section  -->
@if (count($product->productFaqs) > 0)
    <section class="faq">
        <div class="container">
            <div class="row">
                <!-- accordion faq  -->
                <div class="col-12 col-md-12 col-lg-7">
                    <div>
                        <h1 class="fw-bolder">FAQ's</h1>
                        <img src="{{ asset('assets/images/heading_border.png') }}" alt="">
                    </div>
                    <!-- accordion  -->
                    <div class="mt-4">
                        <div class="accordion d-flex flex-column gap-3">
                            @foreach ($product->productFaqs as $key => $faq)
                                <div class="accordion-item px-3">
                                    <button id="accordion-button-{{ $key }}" aria-expanded="false"><span
                                            class="accordion-title fw-bold">{{ $faq->title }}</span><span
                                            class="icon" aria-hidden="true"></span></button>
                                    <div class="accordion-content">
                                        <p>{!! $faq->description !!}</p>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <!-- accordian image  -->
                <div class="col-12 col-md-12 col-lg-5 d-flex justify-content-center align-items-center pt-md-5">
                    <div>
                        @if($product->category_id ==1)
                            <img src="{{ asset('assets/images/LayerFaq.png') }}" width="100%" alt="">
                        @else
                            <img src="{{ asset('assets/images/Layer117.png') }}" width="100%" alt="">
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>
@endif

<!-- shiping & return section  -->
<section class="shiping">
    <div class="container py-5 d-flex flex-column gap-2 gap-md-4">
        <div>
            <h1 class="fw-bolder">Shipping & Returns</h1>
            <img src="{{ asset('assets/images/heading_border.png') }}" alt="heading-border">
        </div>
        <div>
            <p>Free Standard Shipping with any online purchase of INR 500 (merchandise subtotal excludes
                store pick-up products; merchandise subtotal is determined before taxes, before gift-wrap fees, and
                after
                any discounts or coupons).</p>
        </div>
        <div>
            <p>Large or heavy items will still be subject to shipping surcharges, which are listed on
                the
                relevant product description pages and appear in the shipping subtotal. It usually takes 3 to 10
                business
                days for orders to arrive.</p>
        </div>
        <!-- <div>
            <p>Wag & Love Nurture Low Grain Adult Dry Dog Food will advance your dog's journey to
                well-being.
                Join the almost 50,000 happy customers who rely on us to pro-vide their pet friends with premium food.
            </p>
        </div> -->
        <div>
            <h2 class="fw-bolder">Place your order with <span class="orange">Remediovet right now!</span></h2>
        </div>
    </div>
</section>


<!-- related Product section  -->
<section class="relatedProduct">
    <div class="container">
        <div class="text-center py-4">
            <h1 class="fw-bolder">Related Products</h1>
            <img src="{{ asset('assets/images/heading_border.png') }}" alt="baseline">
        </div>

        <div class="row mb-4">
            <!-- product one  -->
            @if ($related_products)
                @foreach ($related_products as $key => $related_product)
                    <div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
                        <div class="product_box">
                            <div class="img_box pointer"
                                onclick="redirectToProduct('{{ url('product/' . $related_product->slug) }}')">
                                <span class="bg_circle">
                                </span>
                                @if ($related_product->featured_image)
                                    <img src="{{ asset($related_product->featured_image) }}" class="product_img"
                                        alt="img">
                                @else
                                    <img src="{{ asset('assets/images/product.png') }}" class="product_img"
                                        alt="img">
                                @endif
                            </div>
                            <div class="product_details justify-content-center my-3">
                                <h5 class="fw-bold d-flex justify-content-center pointer"
                                    onclick="redirectToProduct('{{ url('product/' . $related_product->slug) }}')">
                                    {{ ucwords($related_product->name) }} </h5>
                                <div class="d-flex justify-content-center">
                                    <div>
                                        <p class="price fw-bold d-flex justify-content-center fs-3 custom_rating_txt">
                                            ₹{{ $related_product->selling_price }}</p>
                                    </div>
                                    <div>
                                        <p class="price fw-bold fs-4 text-decoration-line-through p-1 mx-2">
                                            ₹{{ $related_product->original_price }}</p>
                                    </div>
                                </div>
                                @php
                                    $averageRelatedRating = getAverageRating($related_product->id);
                                @endphp
                                <div class="text-center custom_rating_txt">
                                    {!! starRating($averageRelatedRating) !!}
                                </div>
                                <span><button type="button"
                                        onclick="redirectToProduct('{{ url('product/' . $related_product->slug) }}')"
                                        class="text-light submit_btn border-0 px-5 mx-auto d-block">
                                        Shop Now
                                    </button></span>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
</section>
<div id="imagePreviewModal" class="modal">
    <span class="close">&times;</span>
    <img class="modal-content" id="previewImage">
</div>




<script>
    var submitRatingUrl = "{{ route('submit.product.rating') }}";
    var variationPriceUrl = "{{ route('submit.variation.price') }}";
    var wishlistUrl = "{{ route('add.remove.wishlist') }}";
    var getVariationPriceUrl = "{{ route('frontend.get.variation.price') }}";
    var addToCartUrl="{{ route('frontend.add.to.cart') }}";
    var cartPageUrl="{{ route('frontend.cart') }}";
</script>
@push('scripts')
    <script>
        $(function() {
            $("#exzoom").exzoom({
                // thumbnail nav options
                "navWidth": 100,
                "navHeight": 100,
                "navItemNum": 5,
                "navItemMargin": 7,
                "navBorder": 1,
                // autoplay
                "autoPlay": false,
                // autoplay interval in milliseconds
                "autoPlayTimeout": 2000
            });
        });


        $(function () {
            $(".popup img").click(function () {
                let $src = $(this).attr("src");
                $(".zoom-show").fadeIn();
                $(".img-show img").attr("src", $src);

                // Disable scrolling when popup is open
                $("body").css("overflow", "hidden");
            });

            $("span.close").click(function () {
                $(".zoom-show").fadeOut();
                $('.img-show img').css({'width': '100%', 'height': '100%'});

                // Enable scrolling when popup is closed
                $("body").css("overflow", "auto");
            });

        $('.plus').on('click', function(){
            let img_widht = $('.img-show img').width()
            let new_widht = img_widht+100;
            $('.img-show img').width(new_widht);
            $('.img-show img').height('auto')
        })

        $('.minus').on('click', function(){
            let img_widht = $('.img-show img').width()
            let new_widht = img_widht-100;
            if(new_widht < 500) {
                new_widht = 500;
            }
            $('.img-show img').width(new_widht);
            $('.img-show img').height('auto')
        })

        $('.reset').on('click', function(){
            $('.img-show img').css({'width': '100%', 'height': '100%', 'top': '0', 'left': '0'});
        });


        // let ovrflow_width
     $(".img-show img").draggable({
    
    scroll: true,
        stop: function(){},  
        drag : function(e,ui){         
          
          let popup_img_width = $('.img-show img').width();
          let popup_width = $('.img-show').width();
          let new_img_width = popup_width - popup_img_width;
          
          let popup_img_height = $('.img-show img').height();
          let popup_height = $('.img-show').height();
          let new_img_height = popup_height - popup_img_height;
          
            if(ui.position.left > 0) {
              ui.position.left = 0;
            }
          if(ui.position.left < new_img_width) {
              ui.position.left = new_img_width;
            }
          
          if(ui.position.top > 0) {
              ui.position.top = 0;
            }
          if(ui.position.top < new_img_height) {
              ui.position.top = new_img_height;
            }
        }
  });

    });

        var $buttonPlus = $('.increase-btn');
        var $buttonMin = $('.decrease-btn');
        var $quantity = $('.rounded-pill');
        /*For plus and minus buttons*/
        $buttonPlus.click(function() {
            $quantity.val(parseInt($quantity.val()) + 1); 
            if ($('.product-configuration').length) {   
                updatePrice(parseInt($quantity.val()));
            }
        });
        $buttonMin.click(function() {

            var current_val = parseInt($quantity.val());
            if (current_val == 1 || current_val < 1) {
                $quantity.val(1);
            } else {
                $quantity.val(parseInt($quantity.val()) - 1);
                if ($('.product-configuration').length) {
                    updatePrice(parseInt($quantity.val()));
                }
            }
        });

        function convertPrice(priceString) {
            return parseFloat(priceString.replace(/[^0-9.]/g, ''));
        }

        function formatPrice(price) {
            return '₹' + price.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
        }

        function updatePrice(quantity) {

            var price = $('.single_product_price').text();
            var numericPrice = convertPrice(price);
            var totalPrice = numericPrice * quantity;
            var formattedTotalPrice = formatPrice(totalPrice);

            $('#selectedVariationPrice').html(formattedTotalPrice)
        }

        $(document).ready(function() {
            // Scroll to top function
            $(window).scroll(function() {
                if ($(this).scrollTop() > 100) {
                    $('#cartButton').fadeIn();
                } else {
                    $('#cartButton').fadeOut();
                }
            });


        });


   
    </script>


<script type="application/ld+json">
{
    "@context": "https://schema.org/", 
    "@type": "Product", 
      "id": "{{ $product->id }}",
      "name": "{{ $product->name }}",
      "image": "{{ $product->featured_image }}",
      "description": "{{ $product->description }}",
      "brand": {
        "@type": "Brand",
        "name": "{{ $product->brand }}"
      },
    "sku": "{{ $product->sku }}",
    "offers": {
        "@type": "",
        "url": "",
        "priceCurrency": "",
        "price": ""
      },
      "aggregateRating": {
        "@type": "AggregateRating",
        "ratingValue": "{{ $averageRating }}",
        "ratingCount": " ",
        "reviewCount": "{{ count($product->productReviews) }}"
      },
      "review": 
        @if (count($product->productReviews) > 0)
        [
            @foreach ($product->productReviews as $review)
            {
                "@type": "Review",
                "author": {
                    "@type": "Person",
                    "name": "{{ $review->user->name }}"
                },
                "datePublished": "{{ $review->datePublished }}",
                "description": "{{ $review->comment }}",
                "reviewRating": {
                    "@type": "Rating",
                    "bestRating": "5",
                    "ratingValue": "{{ $review->rating }}",
                    "worstRating": "1"
                }
            }@if (!$loop->last),@endif
            @endforeach
    ]
    @else
    "review": {
        "@type": "Review",
        "name": "",
        "reviewBody": " ",
        "reviewRating": {
          "@type": "Rating",
          "ratingValue": " "
        },
    @endif
      
       "author": {"@type": "Person", "name": " "},
        "publisher": {"@type": "Organization", "name": " "}
      }
}
</script>

@endpush
@include('livewire.frontend.product.modal-form')
