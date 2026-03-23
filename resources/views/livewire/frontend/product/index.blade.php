<div>
    @php
        $selectedCategory=$category->name;
    @endphp
    <div class="row">
        <div class="col-md-3 shopPage">
            <div class="card">
                <div class="card-header">
                    <h1 class="fw-bold fs-4 category_heading m-0">Shop by Pet</h1>
                    <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">
                </div>

                <div class="card-body">
                    <?php $attributeValue = request()->input('attribute'); ?>
                    
                    @foreach ($topCategories as $cKey => $category)
                        <!-- Category -->
                         
                            <div class="p-2 mt-2 custom-outer-border">
                                <!-- Category Name -->
                                <div class="d-flex category-filter-h custom-chevron-open">
                                <div>
                                    <input type="checkbox" class="text-decoration-none list-txt-color m-2" wire:model="categoryInput" value="{{ $category->id }}">
                                </div>
                                <div class="category-name">
                                    <a href="#" data-toggle="dropdown" id="dogTypeButton{{ $cKey }}" type="button"
                                    class="text-decoration-none fs-5 list-txt-color d-flex align-items-center justify-content-between chevron">
                                    <span class="fw-bold">  
                                         {{ $category->name }}</span>
                                         <div class="subcategories_chevron main-category-li">
                                             <i class="menu-open fa-solid fa-chevron-right"></i>
                                            <i class="menu-close fa-solid fa-chevron-down d-none"></i>
                                    </div>
                                </a>
                                </div>
                                </div>
                                <!-- Subcategories -->                                
                                <div id="subCategoriesDog{{ $cKey }}" class="show subCategories">
                                    @php
                                        $sortedSubcategories = collect($category->children)->sortBy('serial');
                                    @endphp
                                    @foreach ($sortedSubcategories as $sKey => $subcategory)
                                        <!-- Subcategory Name -->
                                        <div class="border p-2 my-3">
                                            <div class="d-flex">
                                                <div>
                                                <input type="checkbox" class="text-decoration-none list-txt-color m-2" wire:model="categoryInput" value="{{ $subcategory->id }}">
                                                </div>
                                                <div>
                                              
                                                <a href="#" data-toggle="dropdown" id="foodTypeButton{{ $cKey }}{{ $sKey }}"
                                                class="text-decoration-none fs-5 list-txt-color d-flex align-items-center justify-content-between chevron">
                                                <span class="fw-bold">{{ $subcategory->name }}</span>
                                                <div class="subcategories_chevron">
                                                <i class="menu-open fa-solid fa-chevron-right"></i>
                                                <i class="menu-close fa-solid fa-chevron-down d-none"></i>
                                                </div>
                                                    
                                            </a>
                                                </div>
                                            </div>
                                           
                                            <!-- Product Types -->
                                            <ul class="food_list_items px-4 list-unstyled lh-lg" id="foodList{{ $cKey }}{{ $sKey }}" style="display: block;">
                                                @foreach ($subcategory->children as $pKey => $productType)
                                                    <!-- Product Type Name -->
                                                    <li>
                                                       <input type="checkbox" class="text-decoration-none list-txt-color" wire:model="categoryInput" value="{{ $productType->id }}"> <a class="text-decoration-none fw-normal text-dark" href="#"
                                                            id="productType{{ $sKey }}{{ $pKey }}">
                                                            {{ $productType->name }}
                                                        </a>
                                                        <!-- Products -->
                                                        <ul class="food_list_items px-4 list-unstyled lh-lg"
                                                            id="productList{{ $sKey }}{{ $pKey }}" style="display: none;">
                                                            @foreach ($productType->products as $product)
                                                                <!-- Product Name -->
                                                                <li>
                                                                    <a class="text-decoration-none fw-normal text-dark" href="#">
                                                                        {{ $product->name }}
                                                                    </a>
                                                                </li>
                                                            @endforeach
                                                        </ul>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                    
                    @endforeach  
                </div>
                
            </div>
            
            <div class="card">
                <div class="card-header">
                    <h1 class="fw-bold fs-4 category_heading m-0">Featured</h1> 
                    <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">                       
                </div>
                <div class="card-body">
                    
                        <label class="d-block">
                            <input type="checkbox" class="text-decoration-none list-txt-color" wire:model="featureInputs" value="1">
                            Featured Product
                        </label>
                    
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h1 class="fw-bold fs-4 category_heading m-0">Seasonal Special</h1> 
                    <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">                       
                </div>
                <div class="card-body">                    
                    <label class="d-block">
                        <input type="checkbox" class="text-decoration-none list-txt-color" wire:model="seasonalInputs" value="1">
                        Seasonal Special
                    </label>                    
                </div>
            </div>
            
            <div class="card">
                <div class="card-header">
                    <h1 class="fw-bold fs-4 category_heading m-0">Price</h1> 
                    <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">                  
                </div>
                @php
                    $priceRanges = [
                        '199' => '199 & Under',
                        '299' => '299 & Under',
                        '399' => '399 & Under',
                        '499' => '499 & Under',
                        '999' => '999 & Under',
                        '4999' => '4999 & Under',
                        '7999' => '7999 & Under',
                        '9999' => '9999 & Under',
                    ];
                @endphp

                <div class="card-body">
                    @foreach ($priceRanges as $value => $label)
                        <label class="d-block">
                            <input type="radio" name="priceSort" wire:model="priceInput" value="{{ $value }}"> {{ $label }}
                        </label>
                    @endforeach
                </div>
            
            </div>
            @if ($brands)
            <div class="card">
                <div class="card-header">
                    <h1 class="fw-bold fs-4 category_heading m-0">Brands</h1> 
                    <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">                       
                </div>
                <div class="card-body">
                    @foreach ($brands as $item)
                        <label class="d-block">
                            <input type="checkbox" class="text-decoration-none list-txt-color" wire:model="brandInputs" value="{{ $item->name }}">
                            {{ $item->name }}
                        </label>
                    @endforeach
                </div>
            </div>
            @endif            
        </div>
        
        <div class="col-md-9">
            <div>
                <a href="{{ url('product/medfly-defender-plus-dewormer-for-puppies-adult-dogs-10-tablets') }}">
                    <img class="w-100" src="{{ asset('assets/images/shop-banner-2.jpg') }}" alt="img">
                </a>
            </div>
            <div class="row mt-5">
                <div class="col-sm-6 col-md-6 col-lg-6">
                    <h1 class="fs-4 text-secondary">Showing {{ $productCount }} Products</h1>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-6 d-flex justify-content-end">
                    
                </div>
            </div>
            <div class="row my-3">
                @if($products->isNotEmpty())
                    @foreach ($products as $product)
                        <div class="col col-6 col-sm-6 col-md-6 col-lg-4 py-3">
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
                                    <h5 class="fw-bold d-flex justify-content-center m-0" onclick="redirectToProduct('{{ url('product/' . $product->slug) }}')">{{ $product->name }}</h5>
                                    <!-- Product Price -->
                                    <div class="d-flex justify-content-center">
                                        
                                        <div class="m-0">                                            
                                            <p class="price fw-bold d-flex justify-content-center fs-3 m-0 custom_rating_txt">
                                                        &#8377;{{ $product->selling_price }}</p>
                                        </div>
                                        <div>
                                            <p class="price fw-bold fs-4 text-decoration-line-through p-1 mx-2 my-0">
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
                                        <button type="button" class="text-light submit_btn border-0 px-5 mx-auto d-block my-3" onclick="redirectToProduct('{{ url('product/' . $product->slug) }}')">Shop Now</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    @endforeach
                    <div class="text-center">
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

        </div>
    </div>
</div>
