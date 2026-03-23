<div>
    <div class="py-3 py-md-5">
        <div class="container">
            <h3>My Wishlist</h3>
            <!-- <hr> -->
            <!-- table starts here  -->
                <div class="table-responsive my-4">
                            <table class="table table-borderd table-striped">
                                <thead>
                                    <tr>
                                        <th class="whishlist_th">Products</th>
                                        <th class="whishlist_th">Price</th>
                                        <th class="whishlist_th">Remove</th>
                                    </tr>
                                </thead>
                                <tbody>
                                @forelse ($wishlist as $wishlistItem)
                            @if ($wishlistItem->product) 
                                        <tr>
                                            <td class="whishlist_td py-3" data-label="Products"><a
                                                href="{{ url('shop/' . $wishlistItem->product->category->slug . '/' . $wishlistItem->product->slug) }}">
                                                <label class="product-name">
                                                    @if(empty($wishlistItem->product->featured_image))
                                                        <img src="{{ asset($wishlistItem->product->productImages[0]->image) }}" class="mx-auto d-block" style="width: 50px; height: 50px" alt="img">
                                                    @else
                                                        <img src="{{ asset($wishlistItem->product->featured_image) }}"  alt="Default Image" style="width: 50px; height: 50px">
                                                    @endif                                                    
                                                    {{ $wishlistItem->product->name }}
                                                </label>
                                            </a></td>
                                            <td class="whishlist_td py-4" class="price" data-label="Tracking No">${{ $wishlistItem->product->selling_price }}</td>
                                            <td class="whishlist_td py-4" data-label="Remove">
                                            <button type="button"
                                                    wire:click="removeWishlistItem({{ $wishlistItem->id }})"
                                                    class="btn btn-danger btn-sm">
                                                    <span wire:loading.remove
                                                        wire:target="removeWishlistItem({{ $wishlistItem->id }})">
                                                        <i class="fa fa-trash"></i> Remove
                                                    </span>
                                                    <span wire:loading
                                                        wire:target="removeWishlistItem({{ $wishlistItem->id }})">
                                                        <i class="fa fa-trash"></i> Removing
                                                    </span>
                                                </button>
                                            </td>
                                        </tr>
                                        @endif
                        @empty
                        <h4>No Wishlist Added!</h4>
                        @endforelse                 
                                </tbody>
                            </table>             
                        </div>


  <!-- table end here  -->
     </div>
     </div>
</div>
