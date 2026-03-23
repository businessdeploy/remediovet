<?php

namespace App\Http\Livewire\Frontend\Checkout;

use Livewire\Component;
use App\Models\{OrderItem,Order,Cart,UserDetail,PaymentMethod,CartCoupons,DiscountCodes,GuestCart,GuestCartCoupons, State, City};
use Illuminate\Support\Str;
use App\Mail\PlaceOrderMailable;
use Illuminate\Support\Facades\Mail;
use Illuminate\Contracts\Session\Session;
use Illuminate\Support\Facades\Auth;
class CheckoutShow extends Component
{
    public $carts, $totalAmount = 0;

    public $fullname, $email, $phone, $payment_mode = NULL, $payment_id = NULL;

    public $states = [];
    public $cities = [];
    public $selectedState = null;
    public $selectedCity = null;

    public function mount()
    {
        $this->states = State::all();
    }

    public function updatedSelectedState($stateId)
    {
        //$this->cities = City::where('state_id', $stateId)->get();
        $this->cities = City::where('state_id', $stateId)->get();
        $this->selectedCity = null; // Reset the city selection when the state changes
    }

    public function rules()
    {
        return [
            'fullname' => 'required|string|max:121',
            'email' => 'required|email|max:121',
            'phone' => 'required',
        ];
    }

    public function placeOrder()
    {
        $this->validate();   

        $order = Order::create([
            'user_id' => auth()->user()->id,
            'tracking_no' => 'ecom-' . Str::random(10),
            'fullname' => $this->fullname,
            'email' => $this->email,
            'phone' => $this->phone,
            'pincode' => $this->pincode,
            'address' => $this->address,
            'status_message' => 'in progress',
            'payment_mode' => $this->payment_mode,
            'payment_id' => $this->payment_id
        ]);

        foreach ($this->carts as $cartItem) {

            $orderItems = OrderItem::create([
                'order_id' => $order->id,
                'product_id' => $cartItem->product_id,
                'product_color_id' => $cartItem->product_color_id,
                'quantity' => $cartItem->quantity,
                'price' => $cartItem->product->selling_price
            ]);

            if ($cartItem->product_color_id != NULL) {
                $cartItem->productColor()->where('id', $cartItem->product_color_id)->decrement('quantity', $cartItem->quantity);
            } else {
                $cartItem->product()->where('id', $cartItem->product_id)->decrement('quantity', $cartItem->quantity);
            }
        }
        return $order;
    }

    public function codOrder()
    {
        $this->payment_mode = 'Cash on Delivery';
        $codOrder = $this->placeOrder();

        if ($codOrder) {

            Cart::where('user_id', auth()->user()->id)->delete();
            
            try{
                $order = Order::findOrFail($codOrder->id);
                Mail::to("$order->email")->send(new PlaceOrderMailable($order));
                // Mail Sent Successfully
            }catch(\Exception $e){
                // Something went wrong
            }


            session()->flash('message', 'Order Placed Successfully');
            $this->dispatchBrowserEvent('message', [
                'text' => 'Order Placed Successfully',
                'type' => 'success',
                'status' => 200
            ]);
            return redirect()->to('thank-you');
        } else {
            $this->dispatchBrowserEvent('message', [
                'text' => 'Something Went Wrong',
                'type' => 'error',
                'status' => 500
            ]);
        }
    }

    public function totalAmount()
    {
        $this->totalAmount = 0;
        $this->subTotalAmount = 0;
        $this->totalSaving = 0;
        $this->itemTotalTax = 0;
        $totalDiscount1 = 0;

        if (Auth::check()) {
            $this->carts = Cart::where('user_id', auth()->user()->id)->get();
            $cartDiscount=CartCoupons::where('user_id', auth()->user()->id)->first();
        }else{
            $cartItemSession = session()->get('cartSessionId');
            $this->carts=GuestCart::where('session_id', $cartItemSession)->get();
            $cartDiscount=GuestCartCoupons::where('session_id',$cartItemSession)->first();
        }

            foreach ($this->carts as $cartItem) {

                if ($cartItem->productVariation) {


                    $price = getWithoutTaxPrice($cartItem->productVariation->price,$cartItem->product->tax);
                    $updated_tax = $price * $cartItem->quantity;

                    if($cartDiscount){
                        if($cartDiscount->coupon_type == 1){
                            $totalDiscount1 =$updated_tax * $cartDiscount->coupon_value / 100;                                              
                        }else{
                            $totalDiscount1 =$cartDiscount->coupon_value;
                        }
                    }else{
                        $totalDiscount1=0;
                    }

                    $updated_tax1 = $updated_tax - $totalDiscount1;

                    $itemTax=getItemTax($updated_tax1,$cartItem->product->tax);
                    
                    $this->totalAmount += $price * $cartItem->quantity;
                    
                    $this->subTotalAmount += $price * $cartItem->quantity;
                    $this->totalSaving+=$totalDiscount1;//getTotalSavings($cartItem->productVariation->price,$cartItem->productVariation->price, $cartItem->quantity);
                    $this->itemTotalTax+=$itemTax;
                }else{
                    
                    $price = getWithoutTaxPrice($cartItem->product->original_price,  $cartItem->product->tax);
                    $updated_tax = $price * $cartItem->quantity;

                    if($cartDiscount){
                        if($cartDiscount->coupon_type == 1){
                            $totalDiscount1 =$updated_tax * $cartDiscount->coupon_value / 100;                                              
                        }else{
                            $totalDiscount1 =$cartDiscount->coupon_value;
                        }
                    }else{
                        $totalDiscount1=0;
                    }

                    $save = $cartItem->product->original_price - $cartItem->product->selling_price;
                    $updated_tax1 = $updated_tax - $totalDiscount1 -  $save;
                    

                    $itemTax=getItemTax($updated_tax1,$cartItem->product->tax);

                    $this->totalAmount += $price * $cartItem->quantity;
                    $this->subTotalAmount += $price * $cartItem->quantity;
                    $this->totalSaving+=$totalDiscount1 + $save;
                    $this->itemTotalTax+=$itemTax;
                }
            }
            
            $result=[
                'totalSaving'=>$this->totalSaving,
                'totalAmount'=>$this->totalAmount,
                'subTotalAmount'=>$this->subTotalAmount,
                'itemTotalTax'=>$this->itemTotalTax,
            ];
            return $result;
    }

    

    public function render()
    {

        if (Auth::check()) {

            $this->fullname = auth()->user()->name;
            $this->email = auth()->user()->email;

            $result = $this->totalAmount();
            $this->totalSaving=$result['totalSaving'];
            $this->totalAmount=$result['totalAmount'];
            $this->subTotalAmount=round($result['subTotalAmount'],2);
            $this->itemTotalTax=$result['itemTotalTax'];


            $user_id=auth()->user()->id;
            $cartDiscount=CartCoupons::where('user_id',$user_id)->first();
            if($cartDiscount){
                $couponName=$cartDiscount->coupon;
                $cartDiscount=$cartDiscount;
                if($cartDiscount->coupon_type == 1){
                    $totalDiscount =$this->totalAmount * $cartDiscount->coupon_value / 100;                                              
                }else{
                    $totalDiscount =$cartDiscount->coupon_value;
                }
            }else{
                $couponName="";
                $totalDiscount=0;
            }

            
            $this->totalDiscount=round($totalDiscount,2);
            //echo $this->totalDiscount;die("===");
            $this->cartDiscount=$cartDiscount;
            $this->couponName =$couponName;

            $this->totalAmount=$this->totalAmount - $this->totalDiscount;
            
            $this->carts = Cart::where('user_id', auth()->user()->id)->get();
            $variationValuesArray = [];
            foreach ($this->carts as $cartItem) {
                if ($cartItem->productVariation) {
                    foreach($cartItem->productVariation->variationValues as $value){
                        $variationValuesArray[$cartItem->id][] = [
                            'attribute_id' => ($value->attribute_id == 1) ? 'Color' : 'Size',
                            'attribute_value' => $value->attribute_value
                        ];
                    }
                }
            }
            

            $this->billingAddresses=UserDetail::where(['user_id'=>auth()->user()->id,'address_type'=>'billing'])->get();
            $this->shippingAddresses=UserDetail::where(['user_id'=>auth()->user()->id,'address_type'=>'shipping'])->get();

            $this->paymentMethods=PaymentMethod::where('status','1')->get();

            $this->coupons=DiscountCodes::get();
            

            $this->totalSaving = $this->totalDiscount;
            return view('livewire.frontend.checkout.checkout-show', [
                'cart' =>$this->carts,
                'totalSaving'=>$this->totalSaving,
                'totalAmount' => $this->totalAmount,
                'subTotalAmount'=>$this->subTotalAmount,
                'itemTotalTax'=>$this->itemTotalTax,
                'billingAddresses'=>$this->billingAddresses,
                'shippingAddresses'=>$this->shippingAddresses,
                'paymentMethods'=>$this->paymentMethods,
                'allCoupons'    =>$this->coupons,
                'variationValuesArray' => $variationValuesArray,
                'states' => $this->states,
                'cities' => $this->cities,
            ]);
        }else{
            $this->fullname = "";
            $this->email ="";
            $cartItemSession = session()->get('cartSessionId');
             $result = $this->totalAmount();
                         // echo "<pre>";
                         // print_r($result);
                         // die('===');
            $this->totalSaving=$result['totalSaving'];
            $this->totalAmount=$result['totalAmount'];
            $this->subTotalAmount=round($result['subTotalAmount'],2);
            $this->itemTotalTax=$result['itemTotalTax'];

            //$this->totalAmount = 362;
           
            $cartDiscount=GuestCartCoupons::where('session_id',$cartItemSession)->first();
            if($cartDiscount){
                $couponName=$cartDiscount->coupon;
                $cartDiscount=$cartDiscount;
                if($cartDiscount->coupon_type == 1){
                    $totalDiscount =$this->totalAmount * $cartDiscount->coupon_value / 100;                                              
                }else{
                    $totalDiscount =$cartDiscount->coupon_value;
                }
            }else{
                $couponName="";
                $totalDiscount=0;
            }

            
            $this->totalDiscount=round($totalDiscount,2);
            $this->cartDiscount=$cartDiscount;
            $this->couponName =$couponName;

            $this->totalAmount=$this->totalAmount - $this->totalDiscount;
            
            $this->carts = GuestCart::where('session_id', $cartItemSession)->get();
            $variationValuesArray = [];
            foreach ($this->carts as $cartItem) {
                if ($cartItem->productVariation) {
                    foreach($cartItem->productVariation->variationValues as $value){
                        $variationValuesArray[$cartItem->id][] = [
                            'attribute_id' => ($value->attribute_id == 1) ? 'Color' : 'Size',
                            'attribute_value' => $value->attribute_value
                        ];
                    }
                }
            }
            

            $this->billingAddresses=[];
            $this->shippingAddresses=[];

            $this->paymentMethods=PaymentMethod::where('status','1')->get();

            $this->coupons=DiscountCodes::get();
           
            return view('livewire.frontend.checkout.checkout-show', [
                'cart' =>$this->carts,
                'totalSaving'=>$this->totalDiscount,
                'totalAmount' => $this->totalAmount,
                'subTotalAmount'=>$this->subTotalAmount,
                'itemTotalTax'=>$this->itemTotalTax,
                'billingAddresses'=>$this->billingAddresses,
                'shippingAddresses'=>$this->shippingAddresses,
                'paymentMethods'=>$this->paymentMethods,
                'allCoupons'    =>$this->coupons,
                'variationValuesArray' => $variationValuesArray,
                'states' => $this->states,
                'cities' => $this->cities,
            ]);
        }
    }
}
