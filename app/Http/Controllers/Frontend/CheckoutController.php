<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{Cart,Order,OrderItem,CartCoupons,Setting,User,GuestCart,GuestCartCoupons,Product,ProductVariation, State, City};
use App\Mail\PlaceOrderMailable;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
use Illuminate\Contracts\Session\Session;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use App\Mail\{NewUserRegistered};
use Illuminate\Support\Facades\Hash;

use Illuminate\Support\Facades\Http;

class CheckoutController extends Component
{
  
    #@==== SHow Checkout Page ====@#


    protected $appId;
    protected $secretKey;

    public function __construct()
    {
        $this->appId = env('CASHFREE_API_KEY');
        $this->secretKey = env('CASHFREE_API_SECRET');
    }

    public function index()
    {
        return view('frontend.checkout.index');
    }

    public function getCitiesByState(Request $request)
    {
        $stateId = $request->input('state_id');
        $cities = City::where('state_id', $stateId)->get();

        return response()->json(['cities' => $cities]);
    }

    #@==== create order ====@#
    public function codOrder(Request $request){

        if (Auth::check()) {
            $carts = Cart::where('user_id', auth()->user()->id)->get();
            $user_id =auth()->user()->id;
        }else{

            $cartItemSession = session()->get('cartSessionId');
            $checkUser=User::where('email',$request->email)->first();
            if($checkUser){
                $user_id=$checkUser->id;
            }else{
                
                $password = Str::random(8);
                $user=User::create([
                    'name'=>$request->fullName,
                    'email' => $request->email,
                    'phone' => $request->phone,
                    'password'=>Hash::make($password),
                ]); 
                $user_id=$user->id; 
                 // Send email to the user with their credentials
                Mail::to($user->email)->send(new NewUserRegistered($user, $password)); 
            }
            
            
            $carts = GuestCart::where('session_id', $cartItemSession)->get(); 
        }
        
         $order = Order::create([
            'user_id' =>$user_id,
            'tracking_no' => 'ecom-' . Str::random(10),
            'fullname' => $request->fullName,
            'email' => $request->email,
            'phone' => $request->phone,
            'state' => $request->state,
            'city'  => $request->city,
            'apartment'  => $request->apartment,
            'is_shipping_address_same' => $request->is_shipping_address_same,
            'shipping_name' =>  ($request->is_shipping_address_same) ? $request->fullName : $request->shipping_name,
            'shipping_email' => ($request->is_shipping_address_same) ? $request->email : $request->shipping_email,
            'shipping_phone' => ($request->is_shipping_address_same) ? $request->phone : $request->shipping_phone,
            'shipping_state' => ($request->is_shipping_address_same) ? $request->state : $request->shipping_state,
            'shipping_city'  => ($request->is_shipping_address_same) ? $request->city : $request->shipping_city,
            'shipping_apartment'  => ($request->is_shipping_address_same) ? $request->apartment : $request->shipping_apartment,
            'status_message' => 'pending',
            'payment_mode' => $request->paymentMethod,
            'payment_id' => '',
            'payment_status'=>0,
            'sub_total_amount'=>$request->sub_total_amount,
            'tax_amount'=>$request->total_tax,
            'shipping_amount'=>$request->shipping_amount,
            'total_amount'=>$request->total_amount,
            'coupon_code'=>$request->coupon_code,
            'coupon_type'=>$request->coupon_type,
            'coupon_value'=>$request->coupon_value,
        ]);

        foreach ($carts as $cartItem) {

            $orderItems = OrderItem::create([
                'order_id' => $order->id,
                'product_id' => $cartItem->product_id,
                'product_color_id' => $cartItem->product_color_id,
                'product_variation_id'=>$cartItem->product_variation_id,
                'quantity' => $cartItem->quantity,
                'price' => $cartItem->product->selling_price
            ]);

        }
        if (Auth::check()) {
            Cart::where('user_id', $user_id)->delete();
            CartCoupons::where('user_id', $user_id)->delete();
        }else{
            GuestCart::where('session_id', $cartItemSession)->delete();
            GuestCartCoupons::where('session_id',$cartItemSession)->delete();
            session()->forget('cartSessionId');
        }
        try{
           Mail::to("$order->email")->send(new PlaceOrderMailable($order));
           
            // Mail Sent Successfully
        }catch(\Exception $e){
           echo "error";
        }
        return response()->json(['success' => true]);   
    }

    #@==== Cash free order ====@#
    public function cashFreeOrder(Request $request){        
        $all=$request->all(); 
        $validated = $request->validate([
           'fullName' => 'required|min:3',
           'email' => 'required',
           'phone' => 'required',
           'total_amount' => 'required'
        ]);


        $url = "https://sandbox.cashfree.com/pg/orders";
        if(env('CASHFREE_LIVE_MODE')) {
            $url = "https://api.cashfree.com/pg/orders";
        }
        $headers = array(
           "Content-Type: application/json",
           "x-api-version: 2022-01-01",
           "x-client-id: ".env('CASHFREE_API_KEY'),
           "x-client-secret: ".env('CASHFREE_API_SECRET')
        );


          $data = json_encode([
               'order_id' =>  'order_'.rand(1111111111,9999999999),
               'order_amount' => $validated['total_amount'],
               "order_currency" => "INR",
               "customer_details" => [
                    "customer_id" => 'customer_'.rand(111111111,999999999),
                    "customer_name" => $validated['fullName'],
                    "customer_email" => $validated['email'],
                    "customer_phone" => $validated['phone'],
               ],
               "order_meta" => [

                    "return_url" =>route('cashfree.payments.success').'?order_id={order_id}&order_token={order_token}'
                      //"return_url" => route('cashfree.payments.success') . '?order_id={order_id}&order_token={order_token}&txStatus={txStatus}&txMsg={txMsg}&txTime={txTime}'

               ]
          ]);

          $curl = curl_init($url);

          curl_setopt($curl, CURLOPT_URL, $url);
          curl_setopt($curl, CURLOPT_POST, true);
          curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
          curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
          curl_setopt($curl, CURLOPT_POSTFIELDS, $data);

          $resp = curl_exec($curl);        

          curl_close($curl);
            // echo "<pre>";
            // print_r(json_decode($resp));
            // die('===');

          if(json_decode($resp)->payment_link){
            $request->session()->put('payment_data', [
                "fullname"=>$request->fullName,
                "email"=>$request->email,
                "phone"=>$request->phone,
                "state"=>$request->state,
                "city"=>$request->city,
                "apartment"=>$request->apartment,
                "is_shipping_address_same"=>$request->is_shipping_address_same == true ? '1':'0',
                "shipping_name"=>($request->is_shipping_address_same) ? $request->fullName : $request->shipping_name,
                "shipping_email"=>($request->is_shipping_address_same) ? $request->email : $request->shipping_email,
                "shipping_phone"=>($request->is_shipping_address_same) ? $request->phone : $request->shipping_phone,
                "shipping_state"=>($request->is_shipping_address_same) ? $request->state : $request->shipping_state,
                "shipping_city"=>($request->is_shipping_address_same) ? $request->city : $request->shipping_city,
                "shipping_apartment"=>($request->is_shipping_address_same) ? $request->apartment : $request->shipping_apartment,
                "payment_mode"=>$request->paymentMethod,
                'coupon_code'=>$request->coupon_code,
                'coupon_type'=>$request->coupon_type,
                'coupon_value'=>$request->coupon_value,
                'sub_total_amount'=>$request->sub_total_amount,
                'total_discount'=>$request->total_discount,
                'tax_amount'=>$request->total_tax,
                'shipping_amount'=>$request->shipping_amount,
                'total_amount'=>$request->total_amount,
                'coupon_code'=>$request->coupon_code,
                'coupon_type'=>$request->coupon_type,
                'coupon_value'=>$request->coupon_value,
            ]);            
            return redirect()->to(json_decode($resp)->payment_link);
          }else{
            echo "<h3>Cashfree Payment Error</h3>";
            echo "<p>Cashfree API returned the following error instead of a payment link:</p>";
            echo "<pre>"; print_r(json_decode($resp, true)); echo "</pre>";
            die;
          }
         
    }
    
    public function getOrderStatus($order_id)
    {
      $orderStatus = 'ACTIVE';

      if($order_id !="") {

        // Initialize a cURL session
        $ch = curl_init();

        $url = "https://sandbox.cashfree.com/pg/orders/". $order_id;
        if(env('CASHFREE_LIVE_MODE')) {
            $url = "https://api.cashfree.com/pg/orders/". $order_id;
        }


        // Set the URL and other necessary options
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');

        $headers = array(
           "Content-Type: application/json",
           "x-api-version: 2022-01-01",
           "x-client-id: ".env('CASHFREE_API_KEY'),
           "x-client-secret: ".env('CASHFREE_API_SECRET')
        );

        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

        // Execute the cURL request
        $response = curl_exec($ch);

        // Check for errors
        if (curl_errno($ch)) {
            echo 'Error:' . curl_error($ch);
        } else {
            // Decode and display the response
            $responseData = json_decode($response, true);
            // Extract the order status
            if (isset($responseData['order_status'])) {
                $orderStatus = $responseData['order_status'];
            }
        }

        // Close the cURL session
        curl_close($ch);
      }
      return  $orderStatus;
    }

    public function successPayment(Request $request)
    {

        $paymentData = $request->session()->get('payment_data');
        $payload = $request->all();
        $orderStatus =  $this->getOrderStatus($payload['order_id']);

        if (Auth::check()) {
            $user_id =auth()->user()->id;
            $carts = Cart::where('user_id', $user_id)->get();
        }else{

            $cartItemSession = session()->get('cartSessionId');
            $email=$paymentData['email'];
            $userExist=User::where('email',$email)->first();
            if($userExist){
                 $user_id=$userExist->id;
            }else{
                
                $password = Str::random(8);
                $user=User::create([
                    'name'=>$paymentData['fullname'],
                    'email' => $email,
                    'phone' => $paymentData['phone'],
                    'password'=>Hash::make($password),
                ]);
                $user_id=$user->id;
                Mail::to($user->email)->send(new NewUserRegistered($user, $password)); 
            }

            $carts = GuestCart::where('session_id', $cartItemSession)->get(); 
           
        }
        $paymentData['user_id']=$user_id;
        $paymentData['tracking_no']='ecom-' . Str::random(10);
        if ($orderStatus == 'PAID') {
            $paymentData['status_message']='pending';
        } else {
            $paymentData['status_message']='cancel';
        }
        $paymentData['payment_id']=$request->order_id;
        $paymentData['payment_status']=1;
        $order = Order::create($paymentData);
        
        //Save Cart Items in order
        foreach ($carts as $cartItem) {
            if(!$cartItem->product_variation_id){
                $price=$cartItem->product->selling_price;
            }else{
                $price=$cartItem->productVariation->price;
            }
            $orderItems = OrderItem::create([
                'order_id' => $order->id,
                'product_id' => $cartItem->product_id,
                'product_variation_id'=>$cartItem->product_variation_id,
                'product_color_id' => $cartItem->product_color_id,
                'quantity' => $cartItem->quantity,
                'price' => $price,
            ]);

        }

        // if (Auth::check()) {
        //     Cart::where('user_id', $user_id)->delete();
        //     CartCoupons::where('user_id', $user_id)->delete();
        // }else{
        //     GuestCart::where('session_id', $cartItemSession)->delete();
        //     GuestCartCoupons::where('session_id',$cartItemSession)->delete();
        //     session()->forget('cartSessionId');
        // }
        if ($orderStatus == 'PAID') {
            if (Auth::check()) {
                // Retrieve cart items
                $cartItems = Cart::where('user_id', $user_id)->get();

                // Update product quantities
                foreach ($cartItems as $item) {
                    $product = Product::find($item->product_id);

                    if ($product) {
                        $product->quantity -= $item->quantity;
                        $product->save();
                    }

                    $productVariation = ProductVariation::where('id', $item->product_variation_id)
                                     ->where('product_id', $item->product_id)
                                     ->first();

                    if ($productVariation) {

                        $productVariation->quantity -= $item->quantity;
                        $productVariation->save();
                    }
                }

                // Delete cart items and coupons
                Cart::where('user_id', $user_id)->delete();
                CartCoupons::where('user_id', $user_id)->delete();
            } else {
                // Retrieve guest cart items
                $guestCartItems = GuestCart::where('session_id', $cartItemSession)->get();

                // Update product quantities
                foreach ($guestCartItems as $item) {
                    $product = Product::find($item->product_id);
                    if ($product) {
                        $product->quantity -= $item->quantity;
                        $product->save();
                    }

                    $productVariation = ProductVariation::where('id', $item->product_variation_id)
                                     ->where('product_id', $item->product_id)
                                     ->first();

                    if ($productVariation) {
                        $productVariation->quantity -= $item->quantity;
                        $productVariation->save();
                    }
                }

                // Delete guest cart items and coupons
                GuestCart::where('session_id', $cartItemSession)->delete();
                GuestCartCoupons::where('session_id', $cartItemSession)->delete();
                
                // Forget the session
                session()->forget('cartSessionId');
            }

            try{
                $settingData=Setting::first();
                $emails = [
                    $order->email,
                    $settingData->email1,                
                ];

                Mail::to($emails)->send(new PlaceOrderMailable($order));
                // Mail Sent Successfully
            }catch(\Exception $e){
               echo "error";
            }
            return redirect()->route('frontend.thank.you');    
        } else {
            return redirect()->route('frontend.payment.cancel');    
        }
    }
}
