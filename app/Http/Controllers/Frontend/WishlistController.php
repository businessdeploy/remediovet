<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{Wishlist};
use Illuminate\Support\Facades\Auth;
class WishlistController extends Controller
{
    public function index()
    {
        return view('frontend.wishlist.index');
    }


    #@==== Add remove wishlist ====@#
    public function addRemoveWishlist(Request $request)
    {
        $productId = $request->product_id;

        if ($request->type === 'add') {
            if (Auth::check()) {
                if (Wishlist::where('user_id', auth()->user()->id)->where('product_id', $productId)->exists()) {
                    // Product already in wishlist, handle accordingly
                    return response()->json(['message' => 'Product already in wishlist']);
                } else {
                    Wishlist::create([
                        'user_id' => auth()->user()->id,
                        'product_id' => $productId
                    ]);
                    // Product added to wishlist, handle accordingly
                    return response()->json(['type'=>'add','message' => 'Product added to wishlist']);
                }
            } else {
                // Handle logic for guest users
            }
        } elseif ($request->type === 'remove') {
            if (Auth::check()) {
                Wishlist::where('user_id', auth()->user()->id)
                    ->where('product_id', $productId)
                    ->delete();
                // Product removed from wishlist, handle accordingly
                return response()->json(['type'=>'remove','message' => 'Product removed from wishlist']);
            } else {
                // Handle logic for guest users
            }
        } else {
            // Handle invalid type
            return response()->json(['error' => 'Invalid type provided']);
        }
    }
}
