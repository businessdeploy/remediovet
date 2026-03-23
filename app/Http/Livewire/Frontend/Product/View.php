<?php

namespace App\Http\Livewire\Frontend\Product;

use App\Models\{Cart, GuestCart, Product, Wishlist};
use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class View extends Component
{
    public $category, $product, $prodColorSelectedQuantity, $quantityCount = 1, $productColorId, $variationId, $variationSelected = null;
    public $selectedVariationPrice;
    public $selectedVariationPrices;
    protected $listeners = ['variationSelected'];


    public function variationSelected($variationId)
    {

        $this->variationId = $variationId;
        $variation = $this->product->productVariations->where('id', $variationId)->first();
        $this->selectedVariationPrices = $variation->price;
    }

    public function addToWishlist($productId)
    {
        if (Auth::check()) {

            if (Wishlist::where('user_id', auth()->user()->id)->where('product_id', $productId)->exists()) {

                session()->flash('message', 'Already added to wishlist!');
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Already added to wishlist!',
                    'type' => 'warning',
                    'status' => 409
                ]);
                return false;
            } else {

                Wishlist::create([
                    'user_id' => auth()->user()->id,
                    'product_id' => $productId
                ]);
                $this->emit('wishlistAddedUpdated');
                session()->flash('message', 'Added to wishlist successfully.');
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Added to wishlist successfully.',
                    'type' => 'success',
                    'status' => 200
                ]);
            }
        } else {
            session()->flash('message', 'Please login to continue!');
            $this->dispatchBrowserEvent('message', [
                'text' => 'Please login to continue!',
                'type' => 'info',
                'status' => 401
            ]);
            return false;
        }
    }


    public function removeFromWishlist($productId)
    {
        if (Auth::check()) {
            Wishlist::where('user_id', auth()->user()->id)
                ->where('product_id', $productId)
                ->delete();

            // After removing from wishlist, update the product's status
            $this->product->isAddedToWishlist = false;

            session()->flash('message', 'Product removed from wishlist successfully.');
            $this->dispatchBrowserEvent('message', [
                'text' => 'Product removed from wishlist successfully.',
                'type' => 'success',
                'status' => 200
            ]);
        } else {
            // Handle logic for guest users
            // You might need to implement this based on your application's requirements
        }
    }

    public function colorSelected($productColorId)
    {
        $this->productColorId = $productColorId;
        $productColor = $this->product->productColors()->where('id', $productColorId)->first();
        $this->prodColorSelectedQuantity = $productColor->quantity;

        if ($this->prodColorSelectedQuantity == 0) {
            $this->prodColorSelectedQuantity = 'outOfStock';
        }
    }

    public function quantityDecrement()
    {
        if ($this->quantityCount > 1) {
            $this->quantityCount--;
        }
    }

    public function quantityIncrement()
    {
        if ($this->quantityCount < 99) {
            $this->quantityCount++;
        }
    }



    public function addToCart(int $productId)
    {


        if (Auth::check()) {

            if ($this->product->where('id', $productId)->where('status', '0')->exists()) {

                // Check for Product Color Quantity and add to Cart
                if ($this->product->productColors()->count() > 1) {

                    if ($this->prodColorSelectedQuantity != NULL) {

                        if (Cart::where('user_id', auth()->user()->id)
                            ->where('product_id', $productId)
                            ->where('product_color_id', $this->productColorId)
                            ->exists()
                        ) {
                            $this->dispatchBrowserEvent('message', [
                                'text' => 'Product Already Added!',
                                'type' => 'warning',
                                'status' => 404
                            ]);
                        } else {
                            $productColor = $this->product->productColors()->where('id', $this->productColorId)->first();
                            if ($productColor->quantity > 0) {

                                if ($productColor->quantity > $this->quantityCount) {

                                    // Insert Product to Cart
                                    Cart::create([
                                        'user_id' => auth()->user()->id,
                                        'product_id' => $productId,
                                        'product_color_id' => $this->productColorId,
                                        'quantity' => $this->quantityCount
                                    ]);

                                    $this->emit('cartAddedUpdated');
                                    $this->dispatchBrowserEvent('message', [
                                        'text' => 'Product Added to Cart.',
                                        'type' => 'success',
                                        'status' => 200
                                    ]);
                                } else {
                                    $this->dispatchBrowserEvent('message', [
                                        'text' => 'Only ' . $productColor->quantity . ' Products Available in Stock!',
                                        'type' => 'warning',
                                        'status' => 404
                                    ]);
                                }
                            } else {
                                $this->dispatchBrowserEvent('message', [
                                    'text' => 'Out of Stock!',
                                    'type' => 'warning',
                                    'status' => 404
                                ]);
                            }
                        }
                    } else {
                        $this->dispatchBrowserEvent('message', [
                            'text' => 'Please Select Product Color!',
                            'type' => 'info',
                            'status' => 401
                        ]);
                    }
                } else {

                    if (Cart::where('user_id', auth()->user()->id)->where('product_id', $productId)->exists()) {

                        $cart = Cart::where('user_id', auth()->user()->id)
                            ->where('product_id', $productId)
                            ->first();

                        $newQuantity = $cart->quantity + $this->quantityCount;
                        if ($this->product->quantity >= $newQuantity) {
                            $cart->update(['quantity' => $newQuantity]);
                            $this->emit('cartAddedUpdated');
                            $this->dispatchBrowserEvent('message', [
                                'text' => 'Quantity Updated in Cart.',
                                'type' => 'success',
                                'status' => 200
                            ]);
                        } else {
                            $this->dispatchBrowserEvent('message', [
                                'text' => 'Only ' . $this->product->quantity . ' Products Available in Stock!',
                                'type' => 'warning',
                                'status' => 404
                            ]);
                        }
                    } else {


                        if ($this->product->quantity > 0) {

                            if ($this->product->quantity > $this->quantityCount) {

                                // Insert Product to Cart
                                Cart::create([
                                    'user_id' => auth()->user()->id,
                                    'product_id' => $productId,
                                    'quantity' => $this->quantityCount,
                                    'product_variation_id' => $this->variationId,
                                ]);

                                $this->emit('cartAddedUpdated');
                                $this->dispatchBrowserEvent('message', [
                                    'text' => 'Product Added to Cart.',
                                    'type' => 'success',
                                    'status' => 200
                                ]);
                            } else {
                                $this->dispatchBrowserEvent('message', [
                                    'text' => 'Only ' . $this->product->quantity . ' Products Available in Stock!',
                                    'type' => 'warning',
                                    'status' => 404
                                ]);
                            }
                        } else {
                            $this->dispatchBrowserEvent('message', [
                                'text' => 'Out of Stock!',
                                'type' => 'warning',
                                'status' => 404
                            ]);
                        }
                    }
                }
            } else {
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Product does not exist!',
                    'type' => 'warning',
                    'status' => 404
                ]);
            }
        } else {

            $cartItemSession = session()->get('cartSessionId');
            if ($cartItemSession) {
                $cart = GuestCart::where('session_id', $cartItemSession)
                    ->where('product_id', $productId)
                    ->first();
                if ($cart) {
                    $newQuantity = $cart->quantity + $this->quantityCount;
                    $cart->update(['quantity' => $newQuantity]);
                    $this->dispatchBrowserEvent('message', [
                        'text' => 'Quantity Updated in Cart.',
                        'type' => 'success',
                        'status' => 200
                    ]);
                } else {
                    GuestCart::create([
                        'session_id' => $cartItemSession,
                        'product_id' => $productId,
                        'quantity' => $this->quantityCount,
                        'product_variation_id' => $this->variationId,
                    ]);
                    $this->dispatchBrowserEvent('message', [
                        'text' => 'Product Added to Cart.',
                        'type' => 'success',
                        'status' => 200
                    ]);
                }
            } else {

                $randomUserId = Str::random(10);

                session()->put('cartSessionId', $randomUserId);
                GuestCart::create([
                    'session_id' => $randomUserId,
                    'product_id' => $productId,
                    'quantity' => $this->quantityCount,
                    'product_variation_id' => $this->variationId,
                ]);
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Product Added to Cart.',
                    'type' => 'success',
                    'status' => 200
                ]);
            }
        }
    }

    public function checkIfAddedToWishlist()
    {
        if (Auth::check()) {
            $this->product->isAddedToWishlist = Wishlist::where('user_id', auth()->user()->id)
                ->where('product_id', $this->product->id)
                ->exists();
        } else {
            // Logic to check if product is in guest wishlist
            $cartItemSession = session()->get('cartSessionId');
            $this->product->isAddedToWishlist = Wishlist::where('user_id', $cartItemSession)
                ->where('product_id', $this->product->id)
                ->exists();
        }
    }


    public function mount($category, $product)
    {
        $this->category = $category;
        $this->product = $product;
        $this->checkIfAddedToWishlist();
    }

    public function render()
    {
        return view('livewire.frontend.product.view', [
            'category' => $this->category,
            'product' => $this->product,
            'selectedVariationPrice1' => $this->selectedVariationPrice,
            'related_products' => Product::where('category_id', $this->product->category_id)->where('id', '!=', $this->product->id)->take(4)->get(),


        ]);
    }
}
