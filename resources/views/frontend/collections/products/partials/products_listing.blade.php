
    <div class="row my-3" id="productListing">
        @if($products->isNotEmpty())
            @foreach ($products as $product)

                <div class="col col-6 col-sm-6 col-md-6 {{ ($subcategory_slug) ? 'col-lg-3' : 'col-lg-4' }}  py-3">
                    <div class="product_box listing-p">
                    <!-- Product Image -->
                        <div class="img_boxes pointer" onclick="redirectToProduct('{{ url('product/' . $product->slug) }}')">
                        <span class="bg_circle"></span>
                            @if(empty($product->featured_image))
                                <img src="{{ asset($product->productImages[0]->image) }}" class="mx-auto d-block" alt="img" loading="lazy">
                            @else
                                <img src="{{ asset($product->featured_image) }}"  alt="Default Image" >
                            @endif
                        </div>
                        <!-- Product Details -->
                        <div class="product_details justify-content-center my-3">
                            <!-- Product Name -->
                            <h5 class="fw-bold d-flex justify-content-center" onclick="redirectToProduct('{{ url('product/' . $product->slug) }}')">{{ $product->name }}</h5>
                            <!-- Product Price -->
                            <div class="d-flex justify-content-center">
                                <div>
                                    <p class="price fw-bold d-flex justify-content-center fs-3 custom_rating_txt">
                                                &#8377;{{ $product->selling_price }}</p>
                                </div>
                                <div>
                                    <p class="price fw-bold fs-4 text-decoration-line-through p-1 mx-2">
                                        &#8377;{{ $product->original_price }}</p>
                                </div>
                            </div>
                            @php
                                $averageRating=getAverageRating($product->id);
                            @endphp
                            <!-- Product Rating -->
                            <div class="d-flex justify-content-center custom_rating_txt">
                                {!! starRating($averageRating) !!}
                            </div>
                            <!-- Shop Now Button -->
                            <span>
                                <button type="button" class="text-light submit_btn border-0 px-5 mx-auto d-block" onclick="redirectToProduct('{{ url('product/' . $product->slug) }}')">Shop Now</button>
                            </span>
                        </div>
                    </div>
                </div>
            @endforeach
            <div class="text-center pagination">
                {{ $products->links() }}
            </div>
        @else
            <div class="col-sm-12 text-center">
                <div class="product_box">
                    <h1 class="fs-4 text-secondary">No Product Found</h1>
                </div>
            </div>
        @endif
    </div>


