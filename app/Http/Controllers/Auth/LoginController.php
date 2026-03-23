<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\{Cart,PaymentMethod,CartCoupons,DiscountCodes,GuestCart,GuestCartCoupons};
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    // protected $redirectTo = RouteServiceProvider::HOME;

    protected function authenticated(Request $request)
    {
        $returnUrl = $request->input('return_url');
        if(Auth::user()->role_as == '1'){
            return redirect('admin/dashboard')->with('message', 'Welcome to Dashboard!');
        }
        else{
            if($returnUrl == 'checkout'){
                $user_id=Auth::user()->id;


                Cart::where('user_id',$user_id)->delete();
                $cartItemSession = session()->get('cartSessionId');

                $guestCartItems=GuestCart::where('session_id',$cartItemSession)->get();
                foreach ($guestCartItems as $guestCartItem) {
                        Cart::create([
                            'user_id' => $user_id,
                            'product_id' => $guestCartItem->product_id,
                            'quantity' => $guestCartItem->quantity,
                            'product_variation_id'=>$guestCartItem->product_variation_id,
                        ]);
                    }
                    session()->forget('cartSessionId');

                return redirect()->back()->with('message','Logged in successfully');
            }else{
                return redirect()->route('my.account')->with('status', 'Logged in successfully!');
            }
        }
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
