<?php

namespace App\Http\Livewire\Frontend\Cart;

use App\Models\{Cart,CartCoupons,Specialoffers,GuestCart,GuestCartCoupons};
use Livewire\Component;
use Illuminate\Support\Facades\Auth;
class CartShow extends Component
{
    public $cart, $totalPrice = 0;

    public function incrementQuantity(int $cartId)
    {
        if (Auth::check()) {
            $cartData = Cart::where('id', $cartId)->where('user_id', auth()->user()->id)->first();
            if ($cartData) {
                if ($cartData->productColor()->where('id', $cartData->product_color_id)->exists()) {                
                    $productColor = $cartData->productColor()->where('id', $cartData->product_color_id)->first();
                    if ($productColor->quantity > $cartData->quantity) {
                        $cartData->increment('quantity');
                        $this->dispatchBrowserEvent('message', [
                            'text' => 'Quantity Updated',
                            'type' => 'success',
                            'status' => 200
                        ]);
                    } else {
                        $this->dispatchBrowserEvent('message', [
                            'text' => 'Only '.$productColor->quantity.' Products Available',
                            'type' => 'warning',
                            'status' => 404
                        ]);
                    }

                } else {
                   
                    if ($cartData->product->quantity > $cartData->quantity) {                    
                        $cartData->increment('quantity');
                        $cartData->saving=$cartData->quantity * ($cartData->product->original_price - $cartData->product->selling_price);
                       
                        $this->dispatchBrowserEvent('message', [
                            'text' => 'Quantity Updated',
                            'type' => 'success',
                            'status' => 200
                        ]);
                    } else {
                        $this->dispatchBrowserEvent('message', [
                            'text' => 'Only '.$cartData->product->quantity.' Products Available',
                            'type' => 'warning',
                            'status' => 404
                        ]);
                    }
                }
            } else {
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Something Went Wrong!',
                    'type' => 'error',
                    'status' => 404
                ]);
            }
        }else{
            $cartItemSession = session()->get('cartSessionId');

            $cartData = GuestCart::where('id', $cartId)->where('session_id', $cartItemSession)->first();
            if ($cartData) {
                if ($cartData->product->quantity > $cartData->quantity) {                    
                        $cartData->increment('quantity');
                        $cartData->saving=$cartData->quantity * ($cartData->product->original_price - $cartData->product->selling_price);
                       
                        $this->dispatchBrowserEvent('message', [
                            'text' => 'Quantity Updated',
                            'type' => 'success',
                            'status' => 200
                        ]);
                    } else {
                        $this->dispatchBrowserEvent('message', [
                            'text' => 'Only '.$cartData->product->quantity.' Products Available',
                            'type' => 'warning',
                            'status' => 404
                        ]);
                    }
            }
        }
    }

   public function decrementQuantity(int $cartId)
    {
        if (Auth::check()) {
            $cartData = Cart::where('id', $cartId)->where('user_id', auth()->user()->id)->first();
        } else {
            $cartItemSession = session()->get('cartSessionId');
            $cartData = GuestCart::where('id', $cartId)->where('session_id', $cartItemSession)->first();
        }

        if ($cartData) {
            if ($cartData->quantity > 1) {
                $cartData->decrement('quantity');
                $cartData->saving = $cartData->quantity * ($cartData->product->original_price - $cartData->product->selling_price);
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Quantity Updated',
                    'type' => 'success',
                    'status' => 200
                ]);
            } else {
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Quantity cannot be less than 1',
                    'type' => 'warning',
                    'status' => 404
                ]);
            }
        } else {
            $this->dispatchBrowserEvent('message', [
                'text' => 'Something Went Wrong!',
                'type' => 'error',
                'status' => 404
            ]);
        }
    }

    public function removeCartItem(int $cartId)
    {
        if (Auth::check()) {
            $removeCartData = Cart::where('user_id', auth()->user()->id)->where('id', $cartId)->first();            

            if($removeCartData){
                $mainId = $removeCartData->product_id;
               
                if($mainId){
                    // Delete all cart items with the same main_id
                    Cart::where('user_id', auth()->user()->id)
                        ->where('addon_main_id', $mainId)
                        ->delete();
                    $removeCartData->delete();
                }else{
                    $removeCartData->delete();
                }
                


                // $removeCartData->delete();

                $this->emit('cartAddedUpdated');
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Cart Item Removed Successfully',
                    'type' => 'success',
                    'status' => 200
                ]);
            } else {
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Something Went Wrong!',
                    'type' => 'error',
                    'status' => 500
                ]);
            }
        }else{
            
            $cartItemSession = session()->get('cartSessionId');
            
            $removeCartData = GuestCart::where('session_id', $cartItemSession)->where('id', $cartId)->first();
            if($removeCartData){
                $mainId = $removeCartData->product_id;
                if($mainId){
                    // Delete all cart items with the same main_id
                    GuestCart::where('session_id', $cartItemSession)
                         ->where('addon_main_id', $mainId)
                         ->delete();
                    $removeCartData->delete();
                }else{
                    $removeCartData->delete();
                }
                $this->emit('cartAddedUpdated');
                $this->dispatchBrowserEvent('message', [
                        'text' => 'Cart Item Removed Successfully',
                        'type' => 'success',
                        'status' => 200
                    ]);
            } else {
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Something Went Wrong!',
                    'type' => 'error',
                    'status' => 500
                ]);
            }
        }
    }

    public function render()
    {
        
        if (Auth::check()) {

            $user_id=auth()->user()->id;
            $cartDiscount=CartCoupons::where('user_id',$user_id)->first();
                        // echo "<pre>";
                        // print_r($cartDiscount);
                        // die('===');
            if($cartDiscount){
                $couponName=$cartDiscount->coupon;
                $cartDiscount=$cartDiscount;
            }else{
                $couponName="";
                $cartDiscount=$cartDiscount;
            }
            

            $variationValuesArray = [];
            
            $this->specialoffer = Specialoffers::leftJoin('carts', function($join) use ($user_id) {
            $join->on('specialoffers.product', '=', 'carts.product_id')
                 ->where('carts.user_id', '=', $user_id);
         })
         ->whereNull('carts.product_id')
         ->inRandomOrder()
         ->select('specialoffers.*')
         ->first();
            
        //   $this->specialoffer = Specialoffers::leftJoin('carts', 'specialoffers.product', '=', 'carts.product_id')
        //   ->where('carts.user_id',$user_id)
        //  ->whereNull('carts.product_id')
        //  ->inRandomOrder()
        //  ->select('specialoffers.*')
        //  ->first();
         
        

            //$this->specialoffer= Specialoffers::where('status', '1')->first();
            
            
            
            
            $this->cart = Cart::where('user_id', auth()->user()->id)->get();
            foreach ($this->cart as $cartItem) {
                if ($cartItem->productVariation) {
                    foreach($cartItem->productVariation->variationValues as $value){
                        $variationValuesArray[$cartItem->id][] = [
                            'attribute_id' => ($value->attribute_id == 1) ? 'Color' : 'Size',
                            'attribute_value' => $value->attribute_value
                        ];
                    }
                }
            }


            return view('livewire.frontend.cart.cart-show', [
                'cart' => $this->cart,'specialoffer' => $this->specialoffer,'cartDiscount'=>$cartDiscount,'couponName'=>$couponName,'variationValuesArray' => $variationValuesArray
            ]);
        }else{
            $cartItemSession = session()->get('cartSessionId');
            $cartDiscount=GuestCartCoupons::where('session_id',$cartItemSession)->first();

            if($cartDiscount){
                $couponName=$cartDiscount->coupon;
                $cartDiscount=$cartDiscount;
            }else{
                $couponName="";
                $cartDiscount=$cartDiscount;
            }
            

            $variationValuesArray = [];

           // $this->specialoffer= Specialoffers::where('status', '1')->first();
            
            
            $this->specialoffer = Specialoffers::leftJoin('GuestCart', function($join) use ($cartItemSession) {
            $join->on('specialoffers.product', '=', 'GuestCart.product_id')
                 ->where('GuestCart.session_id', '=', $cartItemSession);
         })
         ->whereNull('GuestCart.product_id')
         ->inRandomOrder()
         ->select('specialoffers.*')
         ->first();
            
            
            
            
            $this->cart = GuestCart::where('session_id', $cartItemSession)->get();
            foreach ($this->cart as $cartItem) {
                if ($cartItem->productVariation) {
                    foreach($cartItem->productVariation->variationValues as $value){
                        $variationValuesArray[$cartItem->id][] = [
                            'attribute_id' => ($value->attribute_id == 1) ? 'Color' : 'Size',
                            'attribute_value' => $value->attribute_value
                        ];
                    }
                }
            }


            return view('livewire.frontend.cart.cart-show', [
                'cart' => $this->cart,'specialoffer' => $this->specialoffer,'cartDiscount'=>$cartDiscount,'couponName'=>$couponName,'variationValuesArray' => $variationValuesArray
            ]);

        }
            
    }
}
