<section>
    <div class="row custom-top-bgimg">
        <div class="col-sm-12 col-md-12 col-lg-12 mt-5">
            <h1 class="fw-bold d-flex justify-content-center quotes_heading">My Cart</h1>
            <img src="{{ asset('assets/images/white-underline.png') }}" class="mx-auto d-block" alt="img">
        </div>
    </div>
    @if(count($cart) > 0)
    <div class="cart-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="shopping-cart payment_section">
                        <table class="table">


                            <thead class="product-list-header">
                                <tr>
                                    <th scope="col" class="text-uppercase">Products</th>                                
                                    <th scope="col" class="text-uppercase">Price</th>
                                    <th scope="col" class="text-uppercase">Quantity</th>
                                    <th scope="col" class="text-uppercase">Discount</th>
                                    <th scope="col" class="text-uppercase">Action</th>
                                </tr>
                            </thead>
                            <tbody class="custom-table-body">

                                @php 
                                $subTotalPrice=0;
                                $changedsubTotalPrice=0;
                                $itemTotalTax=0;
                                $getTotalSaving=0;
                                $totalDiscount=0;
                                $withoutTaxPrice = 0;
                                $withoutTaxTotalPrice=0;
                                $newTotalPrice=0;
                                $afterDiscountPrice=0;
                                $totalDiscount1=0;
                                
                                // new variables 
                                $totalOriginalNotTax = 0;
                                $totalSaveFromOriginal = 0;
                                $newTotalTax = 0;
                                $totalCouponDiscount = 0;

                                @endphp

                                @forelse ($cart as $cartItem) 
                                    @if ($cartItem->product)
                                        @php 
                                            
                                            // quantity is common
                                            $quantity = $cartItem->quantity;
                                        
                                            if($cartItem->productVariation){
                                                
                                                // Product variation price 
                                                $price = $cartItem->productVariation->price;

                                                $totalPrice = $price * $quantity;
                                                //$totalPriceNotTax = $totalPrice - ($totalPrice * $cartItem->product->tax/100);

                                                $totalPriceNotTax = getWithoutTaxPrice($totalPrice,  $cartItem->product->tax);

                                                $newTax = $totalPriceNotTax * $cartItem->product->tax/100;
                                                $newTotalTax += $newTax;

                                                $totalOriginalNotTax += $totalPriceNotTax;

                                                if($cartDiscount){
                                                    if($cartDiscount->coupon_type == 1){       
                                                        $totalCouponDiscount += $totalPriceNotTax * ($cartDiscount->coupon_value/100);          
                                                    }else{
                                                        $totalCouponDiscount = $cartDiscount->coupon_value;
                                                    }
                                                }

                                                // echo $totalCouponDiscount;
                                                // die('-------');



                                                $withoutTaxPrice = getWithoutTaxPrice($cartItem->productVariation->price,$cartItem->product->tax);

                                                $updated_tax = $withoutTaxPrice * $cartItem->quantity;

                                                if($cartDiscount){
                                                    if($cartDiscount->coupon_type == 1){
                                                        
                                                        $totalDiscount1 =$updated_tax * $cartDiscount->coupon_value / 100;                                                                  
                                                    }else{
                                                        $totalDiscount1 =$cartDiscount->coupon_value;
                                                    }
                                                }else{
                                                    $totalDiscount1 =0;
                                                } 

                                                $updated_tax1 = $updated_tax - $totalDiscount1;
                                                $itemTax=getItemTax($updated_tax1,$cartItem->product->tax);
                                                $getTotalSaving+=getTotalSavings($cartItem->productVariation->price,$cartItem->productVariation->price, $cartItem->quantity);

                                            }else{

                                                // Product without variation price 
                                                $originalPrice = $cartItem->product->original_price;
                                                $sellingPrice = $cartItem->product->selling_price;

                                                $priceDifference = ($originalPrice - $sellingPrice) * $quantity;

                                                $save = ($originalPrice - $sellingPrice) * $quantity;
                                                $totalSaveFromOriginal += $save;

                                                $totalOriginalPrice = $originalPrice * $quantity;
                                               // $totalOriginalPriceNotTax = $totalOriginalPrice - ($totalOriginalPrice * $cartItem->product->tax/100);

                                                $totalOriginalPriceNotTax = getWithoutTaxPrice($totalOriginalPrice,  $cartItem->product->tax);

                                                $afterDifference = $totalOriginalPriceNotTax - $priceDifference;

                                                $newTax = $afterDifference * ($cartItem->product->tax/100);

                                                $newTotalTax += $newTax;

                                                $totalOriginalNotTax += $totalOriginalPriceNotTax;

                                                if($cartDiscount){
                                                    if($cartDiscount->coupon_type == 1){       
                                                        $totalCouponDiscount += $totalOriginalPriceNotTax * ($cartDiscount->coupon_value/100);          
                                                    }else{
                                                        $totalCouponDiscount = $cartDiscount->coupon_value;
                                                    }
                                                }

                                                // echo $totalCouponDiscount;
                                                // die('-------');


                                                $withoutTaxPrice = getWithoutTaxPrice($cartItem->product->original_price,$cartItem->product->tax);
                                                $updated_tax = $withoutTaxPrice * $cartItem->quantity;

                                                if($cartDiscount){
                                                    if($cartDiscount->coupon_type == 1){
                                                        
                                                        $totalDiscount1 =$updated_tax * $cartDiscount->coupon_value / 100;                                                                  
                                                    }else{
                                                        $totalDiscount1 =$cartDiscount->coupon_value;
                                                    }
                                                }else{
                                                    $totalDiscount1 =0;
                                                } 

                                                $sav = $cartItem->product->original_price - $cartItem->product->selling_price;
                                                $updated_tax1 = $updated_tax - $totalDiscount1 - $sav;

                                                $itemTax=getItemTax($updated_tax1,$cartItem->product->tax);
                                                $getTotalSaving+=getTotalSavings($cartItem->product->selling_price,$cartItem->product->original_price, $cartItem->quantity);
                                            }
                                           
                                        @endphp

                                  
                                        <tr>
                                            <td data-label="Products" class="product-box px-sm-4">
                                                    @if(count($cartItem->product->productImages) > 0)
                                                        <img class="custom-cartimg-border" src="{{ asset($cartItem->product->productImages[0]->image) }}" style="width: 75px; height: 75px" alt="">
                                                    @else
                                                        <img class="custom-cartimg-border" src="{{ asset('assets/images/default-featured-image.jpg') }}" height="70px" width="70px" alt="Default Image">
                                                    @endif
                                                 <div class="cart-product-items">
                                                     
                                                   
                                                <a class="custom-selected-product fw-bold" href="{{ url('product/' . $cartItem->product->slug) }}">
                                                    {{ $cartItem->product->name }}
                                                   
                                                </a>
                                                @if(isset($variationValuesArray[$cartItem->id]))
                                                    @foreach($variationValuesArray[$cartItem->id] as $variation)
                                                        <p class="cart-variation-i">{{ $variation['attribute_id'] }}: {{ $variation['attribute_value'] }}</p>
                                                    @endforeach
                                                @endif
                                                </div> 
                                            </td> 
                                                                                  
                                            <td data-label="Price" class="custom-lineheight">
                                                @if(!$cartItem->product_variation_id)
                                                <span class="price fs-3 fw-bold">
                                                    <span class="offer-price custom_offer_txt">&#8377;{{ $cartItem->product->selling_price }}</span>
                                                </span> 
                                                <span class="text-decoration-line-through">
                                                    <span class="actual-price fw-bold text-muted">&#8377;{{ $cartItem->product->original_price }}</span>
                                                </span>
                                                @else
                                                    <span class="price fs-3 fw-bold">
                                                         <span class="offer-price custom_offer_txt">&#8377;{{  $cartItem->productVariation->price }}</span>
                                                    </span>   
                                                @endif
                                            </td>
                                            <td data-label="Quantity" class="quantity-box">
                                                <div class="quantity custom-quantity">
                                                    <div class="input-group border rounded-pill">
                                                        <button type="button" wire:loading.attr="disabled" wire:click="decrementQuantity({{ $cartItem->id }})" class="btn btn1 rounded-left"><i class="fa fa-minus custom-dec"></i></button>
                                                        <input type="text" wire:onchange="$emitTo('cart', 'add', {{ $cartItem->id }}, '5')"  value="{{ $cartItem->quantity }}" min="1" max="99" value="1" class="input-quantity align-items-center border-0 w-50" />
                                                        <button type="button" wire:loading.attr="disabled" wire:click="incrementQuantity({{ $cartItem->id }})" class="btn btn1 rounded-right"><i class="fa fa-plus custom-inc"></i></button>
                                                    </div>
                                                </div>
                                            </td>
                                            <td data-label="Tax" class="custom-lineheight fw-bold ps-4">&#8377;{{ $cartItem->productVariation ? 0 : $priceDifference }}</td>

                                             @php
                                                        if(!$cartItem->product_variation_id){
                                                            $subTotalPrice += $cartItem->product->selling_price * $cartItem->quantity;
                                                            $changedsubTotalPrice += $withoutTaxPrice * $cartItem->quantity;
                                                            $itemTotalTax+=$itemTax;
                                                            $totalPrice += $cartItem->product->selling_price * $cartItem->quantity + $itemTax;
                                                            $newTotalPrice += $withoutTaxPrice * $cartItem->quantity;
                                                        }else{
                                                            $subTotalPrice += $cartItem->productVariation->price * $cartItem->quantity;
                                                            $changedsubTotalPrice += $withoutTaxPrice * $cartItem->quantity;
                                                            $itemTotalTax+=$itemTax;
                                                            $totalPrice += $cartItem->productVariation->price * $cartItem->quantity + $itemTax;
                                                            $newTotalPrice += $withoutTaxPrice * $cartItem->quantity;
                                                        }



                                                         if($cartDiscount){
                                                                if($cartDiscount->coupon_type == 1){
                                                                    
                                                                    $totalDiscount =$changedsubTotalPrice * $cartDiscount->coupon_value / 100;                                                                  
                                                                }else{
                                                                    $totalDiscount =$cartDiscount->coupon_value;
                                                                }
                                                            }else{
                                                                $totalDiscount =0;
                                                            } 
                                                           
                                                           $afterDiscountPrice = $changedsubTotalPrice - $totalDiscount;
                                                         
                                                    @endphp
                                        <!-- <td><span>{{$changedsubTotalPrice}}</span></td>
                                        <td><span>{{$totalDiscount}}</span></td>
                                        <td><span>{{$afterDiscountPrice}}</span></td> -->

                                            <!-- <td data-label="Total" class="custom-lineheight">
                                                <span class="fs-4 fw-bold">
                                                    @if(!$cartItem->product_variation_id)
                                                    <span class="total-price">
                                                        &#8377;{{ $cartItem->product->selling_price * $cartItem->quantity + $itemTax }}
                                                    </span>
                                                    @else
                                                    <span class="total-price">
                                                        &#8377;{{ $cartItem->productVariation->price * $cartItem->quantity + $itemTax }}
                                                    </span>

                                                    @endif
                                                   
                                                </span>
                                            </td> -->

                                            <td data-label="Action" class="custom-lineheight">
                                                <button type="button" wire:loading.attr="disabled" wire:click="removeCartItem({{ $cartItem->id }})" class="btn btn-danger btn-sm">
                                                    <span wire:loading.remove wire:target="removeCartItem({{ $cartItem->id }})">X Remove</span>
                                                    <span wire:loading wire:target="removeCartItem({{ $cartItem->id }})"><i class="fa fa-trash"></i> Removing</span>
                                                </button>
                                            </td>
                                        </tr>
                                    @endif
                                @empty
                                    <tr>
                                        <td colspan="6">
                                            <div class="container empty-cart">
                                                <h1 class="fw-bolder d-flex justify-content-center">Your Cart is Empty!</h1>
                                                <button type="submit" class="subscribe_input text-light border-0 px-5">Continue Shopping</button>
                                            </div>
                                        </td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="coupon-colouns">
            <div class="">
                <form id="applyCoupons" method="POST">
                    <div class=" coupon-box">
                        <div class="d-flex gap-3 flex-wrap">
                            <div class="input-container">
                                <input class="fs-5 px-2 py-3" type="text" id="couponName" value="{{ $couponName }}" placeholder="Discount code or gift card">
                                <span class="clear-input @if(!$cartDiscount) d-none @endif remove_applied_coupon">&#10006;</span>
                            </div> 
                            @if(!$cartDiscount)                         
                                <button type="submit" class="btn btn-primary py-3 px-5 fs-5 custom-gift-btn">Apply</button>
                            @else
                                <button  class="btn btn-primary py-3 px-5 custom-gift-btn" disabled>Applied</button>
                            @endif
                        </div>                    
                    </div>                    
                </form>
                <span id="show_coupon_error" style="display: none;"></span>
                
                <div class="col-md-4 mt-3">
                </div>                
            </div>
            </div>
          
                
                <div class="row" >
                    <div class="col-md-7 " >
                        @if($specialoffer)
					  <div class="coupon-box" id="specialofer">
                        <div class="d-flex justify-content-between">
                          <div><h3 class="fw-bold fs-4">You have limited time offer</h3> <img src="{{ asset('assets/images/heading_border.png') }}" alt="">
                          </div>
                          <div><span id="examplecontent" class="time fw-bold fs-4 custom_offer_txt"></span>  </div>
                        </div>
                        <input type="hidden" id="specialofferId" value="{{ $specialoffer->id }}">
                        <input type="hidden" id="hiddenproductid" value="{{ $specialoffer->product }}">
                        <!--<a id="offer-link" href="{{ $specialoffer->product_url }}">-->
                            <div class="border border-2 border-black">
                              <button  onclick="addToCart1()"><img id="featured_image_preview" src="{{ asset($specialoffer->featured_image)  ?? 'https://ami-sni.com/wp-content/themes/consultix/images/no-image-found-360x250.png' }}" width="100%"  alt="Featured Image Preview">  
                            </button></div>
                        <!--</a>-->
                    </div>
                    @else
                    
                     <div class="coupon-box" id="nooffer" style="display:none;">
                         <!--<h2>No Offer Exist for you.</h2>-->
                         
                         </div>
                    @endif
                    
                    
					<div class="continue-shopping-button">
						<a href="{{ route('frontend.shop') }}" class="continue-shopping-btn-border mt-5">Continue Shopping</a>
					</div>
                    </div>
                    <!--$totalDiscount =$totalPrice * $cartDiscount->coupon_value / 100;-->
                @php

                    // if($cartDiscount){
                    //     if($cartDiscount->coupon_type == 1){
                            
                    //         $totalDiscount =$newTotalPrice * $cartDiscount->coupon_value / 100;                                                                  
                    //     }else{
                    //         $totalDiscount =$cartDiscount->coupon_value;
                    //     }
                    // }else{
                    //     $totalDiscount =0;
                    // }  

                    $totalPrice=$totalPrice - $totalDiscount;
                    $shipping =calculateShipping($totalPrice);
                    $totalPrice=$totalPrice + $shipping; 
                    $getTotalSaving = $totalDiscount;

                    // variable used in frontend cart
                    $basePrice = $totalOriginalNotTax;
                    
                    $couponAndSaving = $totalSaveFromOriginal + $totalCouponDiscount;
                    $subTotal = $basePrice - $couponAndSaving;
                    $subTotalTax = $newTotalTax;
                    $total = $subTotal + $itemTotalTax;
                    $grandTotal = $total + $shipping;

                @endphp
                <div class="col-md-5 mt-3 ">
                    <div class=" cart_total_panel">
                    <h2 class="fw-bolder">CART TOTALS</h2>
                    <hr>
                    <div class="bg-white">
                        <h5 class="py-2">Base Price: <span class="float-end">&#8377;{{ $basePrice }}</span></h5>
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h5 class="fw-semibold text-success">
                                        Total Discount 
                                        @if($totalDiscount > 0)
                                            <span class="applied-coupon">({{ $couponName }})</span>
                                        @endif
                                    </h5>
                                </div>
                                <div>
                                    <h5 class="fw-semibold text-success">&#8377;{{ round($couponAndSaving,2) }}</h5>
                                </div>
                            </div>

                        <h5 class="py-2">Total: <span class="float-end">&#8377; {{ round($subTotal,2) }}</span></h5>

                        <h5 class="py-2">Tax: <span class="float-end">&#8377; {{ $itemTotalTax }}</span></h5>
                        <h5 class="py-2">Total: <span class="float-end">&#8377; {{ round($total, 2) }}</span></h5>
                        <h5 class="py-2">Shipping: <span class="float-end">&#8377;{{ $shipping }}</span></h5>
                        <!--h5 class="py-2 @if(!$totalDiscount) d-none @endif">Total Discount  :  ({{ $couponName }}) <span class="float-end">&#8377;{{ $totalDiscount }}</span></h5-->
                        
                        <hr>
                        <h4 class="my-2">Grand Total:
                            <span class="float-end">&#8377; {{ round($grandTotal, 2) }}</span>
                        </h4>                      
                    </div>
                    </div>
                    <h2 class="text-center mt-3">YOU SAVE <span class="orange fw-bolder">&#8377;<span class="discount">{{ round($couponAndSaving,2) }}</span></span></h2>
                    <a href="{{ url('/checkout') }}" class="btn btn-warning w-100 checkout-btn rounded-pill ms-sm-auto mt-5 text-center fs-3 fs-sm-2 py-2 px-4 py-sm-3 px-sm-5 fw-semibold">Proceed to Checkout</a>
                </div>
            </div>
			
        </div>
    </div>
    @else
    <div class="container empty-cart text-center">
        <h1 class="fw-bolder d-flex justify-content-center">Your Cart is Empty!</h1>
		<a href="{{ route('frontend.shop') }}" class="continue-shopping-btn mt-4">Continue Shopping</a>
    </div>
    @endif
</section>
 
<script>

var applyCouponNameUrl="{{ route('cart.apply.coupon') }}";
var removeApplyCouponNameUrl="{{ route('remove.cart.apply.coupon') }}";
var getRandomSpecialOffer="{{ route('get.special.offer') }}";
var timer = '';
 @if(isset($specialoffer))
        timer = "{{ $specialoffer->time }}";
@endif


    
function addToCart1() {
        var addToCartUrl="{{ route('frontend.add.to.cart') }}";
        var  cartPageUrl="{{ route('frontend.cart') }}";
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        var product_id=$('#hiddenproductid').val();
        var selectedQuantity=1;
        var variation_id='';
        var addons='';
        $.ajax({
            url: addToCartUrl,
            type: "POST",
            headers: {
                'X-CSRF-TOKEN': csrfToken
            },
            data: {
                product_id: product_id,
                selectedQuantity: selectedQuantity,
                variation_id: variation_id,
                addons: addons
            },
            success: function(response) {
                Livewire.emit('cartAddedUpdated');
                $.toast({
                    heading: 'Success',
                    text: response.message,
                    position: 'top-right',
                    icon: 'success'
                });

                setTimeout(function() {
                    window.location.href = cartPageUrl;
                }, 3000);
            },
            error: function(xhr) {
                console.log(xhr.responseText);
            }
        });
    }


</script>
 