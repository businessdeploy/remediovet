<?php

namespace App\Http\Controllers\Frontend;

use App\Models\{User,UserDetail,Wishlist};
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    #@==== Show Customer Profile ====@#
    public function index()
    {
        return view('frontend.users.profile');
    }


    #@=== Update User ====@#
    public function update(Request $request)
    {
        $all=$request->all();       
        $request->validate([
            'username' => ['required', 'string'],
            'phone' => ['required', 'digits:10'],
            'pin_code' => ['required', 'digits:6'],
            'address' => ['required', 'string', 'max:499'],
        ]);
        $user = User::findOrFail(Auth::user()->id);
        $user->update([
            'name' => $request->username
        ]);
        $user->userDetail()->updateOrCreate(
            [
                'user_id' => $user->id,
            ],
            [
                'phone' => $request->phone,
                'pin_code' => $request->pin_code,
                'address' => $request->address,
            ]
        );
        return redirect()->back()->with('message', 'User Profile Updated');
    }

    #@==== Create Password ====@#
    public function passwordCreate()
    {
        return view('frontend.users.change-password');
    }

    #@==== Update Password ====@#
    public function changePassword(Request $request)
    {
        $request->validate([
            'current_password' => ['required','string','min:8'],
            'password' => ['required', 'string', 'min:8', 'confirmed']
        ]);
        $currentPasswordStatus = Hash::check($request->current_password, auth()->user()->password);
        if($currentPasswordStatus){
            User::findOrFail(Auth::user()->id)->update([
                'password' => Hash::make($request->password),
            ]);
            return redirect()->back()->with('message','Password Updated Successfully');
        }else{
            return redirect()->back()->with('message','Current password does not match with old password');
        }
    }

    #@===== Add Billing Address ====@#
    public function addBillingAddress(){
        return view('frontend.users.createBillingAddress');
    }

    #@==== Store Address ====@#
    public function storeUserAddress(Request $request){
        $request->validate([
            'full_name' => 'required|string',            
            'country' => 'required|string',
            'apartment' => 'required|string',
            'state' => 'required|string',
            'city' => 'required|string',            
            'phone' => 'required|string',
            'email' => 'required|email',
        ]);

        $data=[
            'user_id'=>Auth::user()->id,
            'address_type'=>$request->address_type,
            'full_name'=>$request->full_name,            
            'email'=>$request->email,
            'phone'=>$request->phone,            
            'apartment'=>$request->apartment,
            'city'=>$request->city,
            'country'=>$request->country,
            'state'=>$request->state,
        ];
        UserDetail::create($data);
        return response()->json(['message' => 'Address updated successfully']);
    }


    #@==== Add Shipping Address ====@#
    public function addShippingAddress(){
        return view('frontend.users.createShippingAddress');
    }


    #@==== public function Show billing address ====@#
    public function editBillingAddress($address_id){
        $address_id=decrypt($address_id);
        $address=UserDetail::find($address_id);      
        return view('frontend.users.billingAddress',compact('address'));
    }

    #@==== Shipping Address====@#
    public function editShippingAddress($address_id){
        $address_id=decrypt($address_id);
        $address=UserDetail::find($address_id);
        return view('frontend.users.shippingAddress',compact('address'));
    }

    #@==== Update user Address ====@#
    public function updateUserAddress(Request $request){

        $request->validate([
            'full_name' => 'required|string',            
            'country' => 'required|string',
            'apartment' => 'required|string',
            'state' => 'required|string',
            'city' => 'required|string',            
            'phone' => 'required|string',
            'email' => 'required|email',
        ]);

        $data=[
            'full_name'=>$request->full_name,            
            'email'=>$request->email,
            'phone'=>$request->phone,            
            'apartment'=>$request->apartment,
            'city'=>$request->city,
            'country'=>$request->country,
            'state'=>$request->state,
        ];
        $checkAddress=UserDetail::find($request->address_id);
        if($checkAddress){
             $checkAddress->update($data);
        }else{           
            $data['user_id']=$request->user_id;
            $data['address_type']=$request->address_type;
            UserDetail::create($data);
        }
        return response()->json(['message' => 'Address updated successfully']);
    }


    #@===== Delete Address ====@#
    public function deleteAddress(Request $request){
        $address = UserDetail::findOrFail($request->addressId);
        $address->delete();

        return response()->json(['success' => true]);
    }


    #@==== Update User Profile =====@#
    public function updateUserProfile(Request $request){
        $request->validate([
            'name' => 'required|string',
            'phone' => 'required',
        ]);
        $user=User::find($request->user_id);
        $user->name=$request->name;
        $user->phone=$request->phone;
        $user->save();
        return response()->json(['message' => 'Profile Updated successfully']);
    }

    #@==== Remove wishlist ====@#
    public function destroyWishList(Request $request){
        $id=$request->id;
        Wishlist::destroy($id);
        return response()->json(['success' => true]);
    }
}
