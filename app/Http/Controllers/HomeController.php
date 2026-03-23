<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use App\Models\{Order,Wishlist,UserDetail};
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $user=Auth::user();

        $role=$user->role_as;

        if($role){
            return redirect()->route('admin.dashboard');
        }
        $user_id=$user->id; 

        $billingAddress=UserDetail::where(['user_id'=>$user_id,'address_type'=>'billing'])->get();
         
        $shippingAddress=UserDetail::where(['user_id'=>$user_id,'address_type'=>'shipping'])->get();
        $wishlist = Wishlist::where('user_id', auth()->user()->id)->get();
        $orders = Order::where('user_id', Auth::user()->id)->orderBy('created_at', 'desc')->paginate(10);
        $coupons = Order::select('id', 'coupon_code')->where('user_id', Auth::user()->id)->where('coupon_code', '!=', '')->get();


        return view('home',compact('orders','wishlist','billingAddress','shippingAddress','user','coupons'));
    }

    public function clearCache(){
        Cache::flush();
        $exitCode = Artisan::call('optimize:clear');
        return true;
    }

}
