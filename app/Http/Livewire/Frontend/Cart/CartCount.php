<?php

namespace App\Http\Livewire\Frontend\Cart;

use App\Models\{Cart,GuestCart};
use Livewire\Component;
use Illuminate\Support\Facades\Auth;

class CartCount extends Component
{
    public $cartCount;

    protected $listeners = ['cartAddedUpdated' => 'checkCartCount'];


    public function mount()
    {
        $this->checkCartCount();
    }

    public function checkCartCount()
    {
        
        if (Auth::check()) {
            return $this->cartCount = Cart::where('user_id', auth()->user()->id)->count();
        }else {
            $cartItemSession = session()->get('cartSessionId');
            if($cartItemSession){
                return $this->cartCount = GuestCart::where('session_id',$cartItemSession)->count();
            }else{
                return $this->cartCount = 0;
            }
            
        }
    }

    public function render()
    {
       
        return view('livewire.frontend.cart.cart-count', [
            'cartCount' => $this->cartCount
        ]);
    }
}
