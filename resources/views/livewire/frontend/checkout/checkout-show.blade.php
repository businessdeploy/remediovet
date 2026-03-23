<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <title>Checkout</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="theme-color" content="#ffffff">


    <link rel="apple-touch-icon" sizes="57x57" href="{{ asset('assets/images/favicon/apple-icon-57x57.png') }}">
    <link rel="apple-touch-icon" sizes="60x60" href="{{ asset('assets/images/favicon/apple-icon-60x60.png') }}">
    <link rel="apple-touch-icon" sizes="72x72" href="{{ asset('assets/images/favicon/apple-icon-72x72.png') }}">
    <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('assets/images/favicon/apple-icon-76x76.png') }}">
    <link rel="apple-touch-icon" sizes="114x114" href="{{ asset('assets/images/favicon/apple-icon-114x114.png') }}">
    <link rel="apple-touch-icon" sizes="120x120" href="{{ asset('assets/images/favicon/apple-icon-120x120.png') }}">
    <link rel="apple-touch-icon" sizes="144x144" href="{{ asset('assets/images/favicon/apple-icon-144x144.png') }}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{ asset('assets/images/favicon/apple-icon-152x152.png') }}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('assets/images/favicon/apple-icon-180x180.png') }}">
    <link rel="icon" type="image/png" sizes="192x192"  href="{{ asset('assets/images/favicon/android-icon-192x192.png') }}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('assets/images/favicon/favicon-32x32.png') }}">
    <link rel="icon" type="image/png" sizes="96x96" href="{{ asset('assets/images/favicon/favicon-96x96.png') }}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('assets/images/favicon/favicon-16x16.png') }}">
    <link rel="manifest" href="{{ asset('assets/images/favicon/manifest.json') }}">
    


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"  rel="stylesheet"/>
    
    <link href="{{ asset('assets/css/checkout.css') }}" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet"/>
   
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@633&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka&display=swap" rel="stylesheet" />

    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/custom.css') }}" rel="stylesheet">

     @livewireStyles
  </head>
  <body>

    <!-- checkout-section  -->
    <section class="overflow-hidden">

        <!-- checkout-banner  -->
        <div>
            <a href="{{ route('front.home') }}"><img src="{{ asset('assets/images/checkout-banner.png') }}" width="100%" alt="checkout-banner"></a>
        </div>

    <div class="row">
        <!-- left section  -->
    <div class="left-section col-lg-7 d-flex flex-column order-2 order-md-1">
        <div>
       
          @guest
            <p class="fs-5">Already have an account? <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#addBrandModal" class="login orange text-decoration-none">Login</a></p>
        @endguest
        </div>
        <!-- shipping info heading  -->
        <div>
          <div><h2><span class="orange">I </span>Billing Information</h2></div><!-- 
          <p class="fs-5">Already have an account? <a href="#" class="login orange text-decoration-none">Login</a> </p class="fs-5"> -->
        </div>

        @if($billingAddresses)
        <h5 class="address_same">Existing Address</h5>
        <div>            
            @foreach($billingAddresses as $address)
                <div class="border border-2 border-black rounded px-2 px-sm-4 fs-5 mx-5 mb-2 custom-mobile-exaddress">                 
                    <div class="form-check py-2 py-sm-3">
                        <input class="form-check-input radiobox_clr existing-address" type="radio" id="address{{ $address->id }}" value="{{ $address->id }}" data-full-name="{{ $address->full_name }}" data-email="{{ $address->email }}" data-phone="{{ $address->phone }}" data-country="{{ $address->country }}" data-state="{{ $address->state }}" data-city="{{ $address->city }}" data-apartment="{{ $address->apartment }}">
                        <label class="form-check-label" for="address{{ $address->id }}">{{ $address->full_name }} ({{ $address->email }})</label>
                    </div>
                </div>
            @endforeach            
        </div>
        @endif

        <h5 class="address_same">Add New</h5>
        <!-- user details  -->
        <form id="finalCheckout"  method="POST">
            @csrf
            <div>
                <div class="row mb-3 billing-info-fields">
                    <div class="form-group col-md-12">
                        <label for="fullName"></label>
                        <input type="text" class="form-control form-control-lg p-md-3" id="fullName" name="fullName" placeholder="Full Name" required>
                        <div class="invalid-feedback">Full Name is required.</div>
                    </div>
                </div>
                <div class="row mb-3 billing-info-fields">
                    <div class="form-group col-md-6">
                        <label for="email"></label>
                        <input type="email" class="form-control form-control-lg p-md-3" id="email" name="email" placeholder="E-mail" required>
                        <div class="invalid-feedback">Valid email is required.</div>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="phone"></label>
                      <input type="tel" class="form-control form-control-lg p-md-3 custom-mobile-margin" id="phone" title="Please enter a 10-digit mobile number" name="phone" min="10" max="10" placeholder="Phone" required>
                      <div class="invalid-feedback">10-digit phone number is required.</div>
                    </div>
                </div> 

                <div class="row mb-3 billing-info-fields">
                  <div class="form-group col-md-6">
                      <label for="state"></label>
                      <select class="form-control form-control-lg p-md-3" id="state" name="state" required>
                        <option value="">Select State</option>
                        @foreach($states as $state)
                            <option value="{{ $state->name }}" data-stateid = "{{ $state->id }}">{{ $state->name }}</option>
                        @endforeach
                    </select>
                      <div class="invalid-feedback">State is required.</div>
                  </div>
                  <div class="form-group col-md-6">
                      <label for="city"></label>
                      <select class="form-control form-control-lg p-md-3 custom-mobile-margin" id="city" name="city" required>
                        <option value="">Select City</option>
                        <!-- Cities will be populated here by JavaScript -->
                    </select>
                      <div class="invalid-feedback">City is required.</div>
                  </div>
                </div>

                <div class="row mb-3 billing-info-fields">
                    <div class="form-group">
                        <label for="inputAddress"></label>
                        <input type="text" class="form-control form-control-lg p-md-3" id="apartment" name="apartment" placeholder="Apartment, studio, or floor">
                        <div class="invalid-feedback">Apartment is required.</div>
                    </div> 
                </div>
                <hr class="hr">             
                <div class="col-md-12 mb-3">
                    <div ><h2><span class="orange">I </span>Shipping Information</h2></div>
                    <div class="custom-control custom-checkbox fs-5">
                        <input type="checkbox" class="custom-control-input" id="is_shipping_address_same" name="is_shipping_address_same" onchange="toggleShippingInfoFields(this.checked)">
                        <label class="custom-control-label" for="is_shipping_address_same"> Same as billing information</label>                        
                    </div>
                    <div class="shipping-info-fields">
                        @if($shippingAddresses)
                            <h5 class="address_same">Existing Address</h5>
                            <div>            
                                @foreach($shippingAddresses as $address)
                                    <div class="border border-2 border-black rounded px-2 px-sm-4 fs-5 mx-5 mb-2 custom-mobile-exaddress">                 
                                        <div class="form-check py-2 py-sm-3">
                                            <input class="form-check-input radiobox_clr existing-shipping-address" type="radio"  id="address{{ $address->id }}" value="{{ $address->id }}" data-full-name="{{ $address->full_name }}" data-email="{{ $address->email }}" data-phone="{{ $address->phone }}" data-country="{{ $address->country }}" data-state="{{ $address->state }}" data-city="{{ $address->city }}" data-apartment="{{ $address->apartment }}">
                                            <label class="form-check-label" for="address{{ $address->id }}">{{ $address->full_name }} ({{ $address->email }})</label>
                                        </div>
                                    </div>
                                @endforeach            
                            </div>
                        @endif
                        <h5 class="address_same">Add New</h5>
                        <div class="row mb-3">
                            <div class="form-group col-md-12">
                                <label for="shipping_name"></label>
                                <input type="text" class="form-control form-control-lg p-md-3" id="shipping_name" name="shipping_name" placeholder="Full Name">
                                <div class="invalid-feedback">Full Name is required.</div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="form-group col-md-6">
                                <label for="shipping_email"></label>
                                <input type="email" class="form-control form-control-lg p-md-3" id="shipping_email" name="shipping_email" placeholder="E-mail" >
                                <div class="invalid-feedback">Valid email is required.</div>
                            </div>
                            <div class="form-group col-md-6">
                              <label for="shipping_phone"></label>
                              <input type="tel" class="form-control form-control-lg p-md-3 custom-mobile-margin" id="shipping_phone" name="shipping_phone" placeholder="Phone" pattern="[0-9]{10}" >
                              <div class="invalid-feedback">10-digit phone number is required.</div>
                            </div>
                        </div> 

                        <div class="row mb-3">
                          <div class="form-group col-md-6">
                              <label for="shipping_state"></label>
                              <select class="form-control form-control-lg p-md-3" id="shipping_state" name="shipping_state">
                                <option value="">Select State</option>
                                @foreach($states as $state)
                                    <option value="{{ $state->name }}" data-stateid = "{{ $state->id }}">{{ $state->name }}</option>
                                @endforeach
                              </select>
                              <div class="invalid-feedback">State is required.</div>
                          </div>

                          <div class="form-group col-md-6">
                              <label for="shipping_city"></label>
                              <select class="form-control form-control-lg p-md-3 custom-mobile-margin" id="shipping_city" name="shipping_city">
                                <option value="">Select City</option>
                                <!-- Cities will be populated here by JavaScript -->
                            </select>
                            <div class="invalid-feedback">City is required.</div>
                          </div>
                        </div>

                        <div class="row mb-3">
                            <div class="form-group">
                                <label for="shipping_apartment"></label>
                                <input type="text" class="form-control form-control-lg p-md-3" id="shipping_apartment" name="shipping_apartment" placeholder="Apartment, studio, or floor">
                                <div class="invalid-feedback">Shipping Apartment is required.</div>
                            </div> 
                        </div>
                    </div>
                </div>
                @php
                    $coupon_name=$cartDiscount->coupon ?? "";
                    $coupon_type=$cartDiscount->coupon_type ?? "";
                    $coupon_value=$cartDiscount->coupon_value ?? "";
                    $shipping =calculateShipping($totalAmount);
                    $totalAmount=$totalAmount + $shipping + $itemTotalTax;
                    $totalSaveFromOriginal = 0;
                @endphp
                <input type="hidden" name="total_amount" value="{{ $totalAmount }}">
                <input type="hidden" name="shipping_amount" value="{{ $shipping }}">
                <input type="hidden" name="sub_total_amount" value="{{ $subTotalAmount }}">
                <input type="hidden" name="total_tax" value="{{ $itemTotalTax }}">
                <input type="hidden" name="total_discount" value="{{ $totalSaving }}">

                <input type="hidden" name="coupon_code" value="{{ $coupon_name }}">
                <input type="hidden" name="coupon_type" value="{{ $coupon_type }}">
                <input type="hidden" name="coupon_value" value="{{ $coupon_value }}">
                
                 <hr class="hr">        
                <div class="col-md-12 mb-3">
                    <div ><h2><span class="orange">I </span>Payment Method</h2></div>
                    <div class="border border-2 border-black rounded px-2 px-sm-4 fs-5"> 
                        @foreach($paymentMethods as $method)                
                        <div class="form-check py-2 py-sm-3">
                            <input class="form-check-input radiobox_clr" type="radio" name="paymentMethod" id="{{ $method->value }}" value="{{ $method->value }}" required>
                            <label class="form-check-label" for="{{ $method->value }}">{{ $method->name }}</label>
                        </div>
                        @endforeach                       
                    </div>                
                    <div class="d-flex flex-column flex-sm-row justify-content-between align-items-sm-center gap-4 mt-5">
                        <div class="fs-5">
                            <a href="{{ route('frontend.cart') }}" class="text-decoration-none text-dark"><i class="fa-solid fa-chevron-left orange"></i> Return to cart</a>
                        </div>
                        <div>
                            <button type="submit" class="continueBtn fs-3 fs-lg-4 btn rounded-pill custom_continueshp_btn">Continue to Payment</button>
                        </div>
                    </div>                            
                </div>
            </div>
        </form>           
    </div>

          <!-- right section  -->
          
          <div class="right-section checkout-right col-lg-5 order-1 order-md-2">
            <div class="d-flex flex-column">
                  <!-- product-box  -->
                  @foreach($cart as $cartItem)  
                  <div class="product_listing-checkout d-flex">
                    <div class="checkout-product-box p-2 d-flex justify-content-center align-items-center">

                      

                        @if($cartItem->product->featured_image)
                            <img src="{{ asset($cartItem->product->featured_image) }}" width="80%" alt="">
                        @else
                            <img src="{{ asset('assets/images/product.png') }}" width="80%" alt="">
                        @endif
                    </div>
                    <div>
                        <div class="d-inline-block">
                            <h3 class="fw-semibold text-light">{{ $cartItem->product->name }}</h3>
                            @if(isset($variationValuesArray[$cartItem->id]))
                                @foreach($variationValuesArray[$cartItem->id] as $variation)
                                    <p class="text-start">{{ $variation['attribute_id'] }}: {{ $variation['attribute_value'] }}</p>
                                @endforeach
                            @endif
                        </div> 
                        @if(!$cartItem->product_variation_id)
                            @php
                            $originalPrice = $cartItem->product->original_price;
                            $sellingPrice = $cartItem->product->selling_price;
                            $quantity = $cartItem->quantity;
                            $save = ($originalPrice - $sellingPrice) * $quantity;
                            $totalSaveFromOriginal += $save;
                            @endphp
                            <p class="fs-5 fw-bolder text-light">&#8377;{{ $cartItem->product->selling_price }} <span class=" text-decoration-line-through text-dark">&#8377;{{ $cartItem->product->original_price }}</span></p>
                        @else
                            <p class="fs-5 fw-bolder text-light">&#8377;{{ $cartItem->productVariation->price }}</p>
                        @endif
                    </div>
                  </div>
                @endforeach

              <hr>
              
              <div>
                <!-- coupon-code  -->
                <div class="coupon-box mb-4">
                    <form id="applyCoupons" method="POST">                      
                
                        <div class="input-container">
                            <input class="fs-5 px-2 py-3" type="text" id="couponName" placeholder="Discounted code or gift card" value="{{ $couponName }}">
                            <span class="clear-input @if(!$cartDiscount) d-none @endif remove_applied_coupon">&#10006;</span>
                        </div> 
                        <!-- @if(!$cartDiscount) 
                            <button type="submit" class="btn text-light">Apply</button>
                        @else
                            <button class="btn text-light" disabled>Applied</button>
                        @endif -->
                  
                  </form>
                  <span id="show_coupon_error" style="display: none;"></span>
                </div>

                <!-- special-offer  -->
                @foreach($allCoupons as $coupon)                   
                 
					<div class="coupon-code-panel">
					<div class="coupon-code-checkout">
                    <div class="d-flex justify-content-between">
                      <div>
                        <h5 class="special-offer p-2 d-inline-block fw-bolder">{{ $coupon->code }}</h5>
                        <p class="text-light fw-semibold">ALL SUPPLYMENTS AT {{ $coupon->discount_value }} {{ ($coupon->discount_type ==1) ? '%' : 'Rupees Flat' }} OFF</p>
                      </div>
                      <div>

                        <button class="fw-semibold pointer fw-bold px-3 py-1 border border-1 bg-white" onclick="selectCoupon('{{ $coupon->code }}')" @if($coupon->code === $couponName) disabled @endif>Select</button>
                        
                      </div>
                    </div>
                    </div>
                    </div>

                @endforeach
              </div>

              <hr>
              <!-- subtotal  -->
              <div class="d-flex flex-column gap-4">
                <div class="d-flex justify-content-between">
                  <div>
                    <h5 class="text-light fw-semibold">Base Price:</h5>
                  </div>
                  <div>
                    <h5 class="text-light fw-semibold">&#8377;{{ $subTotalAmount }}</h5>
                  </div>
                </div>
                    <div class="d-flex justify-content-between">
                        <div>

                            {{-- <h5 class="text-light fw-semibold">Total Discount <span class="applied-coupon">({{ $couponName }})</span></h5> --}}
                            <h5 class="text-light fw-semibold">
                              Total Discount 
                              @if($totalDiscount > 0)
                                  <span class="applied-coupon">({{ $couponName }})</span>
                              @endif
                            </h5>

                        </div>
                        <div>
                            {{-- <h5 class="text-light fw-semibold">&#8377;{{ $totalDiscount }}</h5> --}}
                            <h5 class="text-light fw-semibold">&#8377;{{ $totalSaveFromOriginal + $totalDiscount }}</h5>
                        </div>
                    </div>
                @php
                    $totalAfterDiscount = $subTotalAmount - $totalDiscount - $totalSaveFromOriginal;
                    $totalAfterTaxAdd = $totalAfterDiscount + $itemTotalTax;
                @endphp

                <div class="d-flex justify-content-between">
                  <div>
                    <h5 class="text-light fw-semibold">Total:</h5>
                  </div>
                  <div>
                    <h5 class="text-light fw-semibold">&#8377;{{ round($totalAfterDiscount,2) }}</h5>
                  </div>
                </div>

                <div class="d-flex justify-content-between">
                  <div>
                    <h5 class="text-light fw-semibold">Tax</h5>
                  </div>
                  <div>
                    <h5 class="text-light fw-semibold">&#8377;{{ round($itemTotalTax,2) }}</h5>
                  </div>
                </div>

                <div class="d-flex justify-content-between">
                  <div>
                    <h5 class="text-light fw-semibold">Total</h5>
                  </div>
                  <div>
                    <h5 class="text-light fw-semibold">&#8377;{{ round($totalAfterTaxAdd,2) }}</h5>
                  </div>
                </div>
                <div class="d-flex justify-content-between">
                  <div>
                    <h5 class="text-light fw-semibold">Shipping</h5>
                  </div>
                  <div>
                    <h5 class="text-light fw-semibold">&#8377;{{ $shipping }}</h5>
                  </div>
                </div>
               
              </div>

              <!-- total  -->
              <div class="total-checkout-list">
                <div class="d-flex justify-content-between">
                  <div>
                    <h5 class="text-light fs-3 fw-bolder">Total</h5>
                  </div>
                  <div>
                    <h5 class="text-light fs-3 fw-bolder">&#8377;{{ round($totalAfterTaxAdd + $shipping,2) }}</h5>
                  </div>
                </div>
              </div>

              <!-- saving  -->
              <div class="text-center saving_price">
                <h1 class="text-light fw-bolder">YOU SAVE &#8377;<span>{{ $totalSaveFromOriginal + $totalDiscount }}</span></h1>
              </div>
            </div>
            <!-- checkout-dog-img  -->
          <div>
                <img class="checkout-dog mx-auto d-block" src="{{ asset('assets/images/checkout-dog.png') }}" width="100%" alt="dog">
              </div>
          </div>
          
          
        </div>
        <!-- Back to top button -->
        <a href="https://api.whatsapp.com/send/?phone=919966633043&text=Hi&type=phone_number&app_absent=0" class="whatsapp-float-right" target="_blank" title="Chat with us"><i class="fa-brands fa-whatsapp whatsapp-my-float"></i></a>
    </section>

    
   
@include('livewire.frontend.checkout.modal-form')

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        $('#state').change(function() {
          var stateId = $(this).find(':selected').data('stateid');
          getCity(stateId, 'billing_address'); 
        });

        $('#shipping_state').change(function() {
          var stateId = $(this).find(':selected').data('stateid');
          getCity(stateId, 'shipping_address'); 
        });

        function getCity(stateId, from) {
          if(stateId) {
            if (stateId) {
                $.ajax({
                    url: '{{ route('getCitiesByState') }}', // Adjust this route according to your routes configuration
                    type: 'GET',
                    data: { state_id: stateId },
                    success: function(data) {
                      if (from == 'billing_address') {
                          $('#city').empty();
                          $('#city').append('<option value="">Select City</option>');
                          $.each(data.cities, function(key, city) {
                              $('#city').append('<option value="' + city.city + '">' + city.city + '</option>');
                          });
                      } else {
                        $('#shipping_city').empty();
                          $('#shipping_city').append('<option value="">Select City</option>');
                          $.each(data.cities, function(key, city) {
                              $('#shipping_city').append('<option value="' + city.city + '">' + city.city + '</option>');
                          });
                      }
                    },
                    error: function(xhr, status, error) {
                        console.error("Error fetching cities:", status, error);
                    }
                });
            } else {
              if (from == 'billing_address') {
                  $('#city').empty();
                  $('#city').append('<option value="">Select City</option>');
              } else {
                $('#shipping_city').empty();
                $('#shipping_city').append('<option value="">Select City</option>');
              }
            }
          }
        }
    });
</script>

<script>
    var codCheckoutUrl="{{ route('cod.checkout.order') }}";
    var cashFreeCheckoutUrl="{{ route('cash.free.checkout.order') }}";
    var thankyouPageUrl="{{ route('frontend.thank.you') }}";

var applyCouponNameUrl="{{ route('cart.apply.coupon') }}";
var removeApplyCouponNameUrl="{{ route('remove.cart.apply.coupon') }}";
</script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="{{ asset('assets/js/frontend/checkout.js') }}"></script> 
@yield('script')
    @livewireScripts    
@stack('scripts')  
</body>
</html>