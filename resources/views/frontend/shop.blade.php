@extends('layouts.app', ['layout' => 'shop'])
@section('title', 'Shop')
@section('content')
    <!-- top heading section  -->
    <section class="custom-top-bgimg">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12 py-5">
                    <h1 class="fw-bold d-flex justify-content-center quotes_heading">Dog-Dewormer</h1>
                    <img src="{{ asset('assets/images/white-underline.png') }}" class="mx-auto d-block" alt="img">
                </div>
            </div>
        </div>
    </section>
    <section class="custom-section-padding">
        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <div class="col-sm-3 col-md-3 col-lg-3">
                    <!-- Category and Subcategory Filters -->
                    <div>
                        <h1 class="fw-bold fs-4 category_heading m-0">Shop by Pet</h1>
                        <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">
                    </div>
                    @foreach ($topCategories as $cKey => $category)
                        <!-- Category -->
                        <div class="p-2 mt-2">
                            <!-- Category Name -->
                            <a href="#" data-toggle="dropdown" id="dogTypeButton{{ $cKey }}" type="button"
                                class="text-decoration-none fs-5 list-txt-color d-flex align-items-center justify-content-between chevron">
                                <span class="fw-bold">{{ $category->name }}</span>
                                <i class="menu-open fa-solid fa-chevron-right"></i>
                                <i class="menu-close fa-solid fa-chevron-down d-none"></i>
                            </a>
                            <!-- Subcategories -->
                            <div id="subCategoriesDog{{ $cKey }}" class="hide">
                                @foreach ($category->children as $sKey => $subcategory)
                                    <!-- Subcategory Name -->
                                    <div class="border p-2 my-3">
                                        <a href="#" data-toggle="dropdown" id="foodTypeButton{{ $cKey }}{{ $sKey }}"
                                            class="text-decoration-none fs-5 list-txt-color d-flex align-items-center justify-content-between chevron">
                                            <span>{{ $subcategory->name }}</span>
                                            <i class="menu-open fa-solid fa-chevron-right"></i>
                                            <i class="menu-close fa-solid fa-chevron-down d-none"></i>
                                        </a>
                                        <!-- Product Types -->
                                        <ul class="food_list_items px-4 list-unstyled lh-lg"
                                            id="foodList{{ $cKey }}{{ $sKey }}" style="display: none;">
                                            @foreach ($subcategory->children as $pKey => $productType)
                                                <!-- Product Type Name -->
                                                <li>
                                                    <a class="text-decoration-none fw-normal text-dark" href="#"
                                                        id="productType{{ $sKey }}{{ $pKey }}">
                                                        {{ $productType->name }}
                                                    </a>
                                                    <!-- Products -->
                                                    <ul class="food_list_items px-4 list-unstyled lh-lg"
                                                        id="productList{{ $sKey }}{{ $pKey }}" style="display: none;">
                                                        @foreach ($productType->products as $product)
                                                            <!-- Product Name -->
                                                            <li>
                                                                <a class="text-decoration-none fw-normal text-dark"
                                                                    href="#">
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

                    <!-- Price Filter -->
                    <div class="py-3">
                        <!-- Price Heading -->
                        <h1 class="fw-bold fs-4 category_heading m-0">Price</h1>
                        <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">
                        <!-- Price Range Selector -->
                        <span>
                            <range-selector id="rangeSelector2" min-label="Minimum" max-label="Maximum" min-range="0"
                                max-range="500" number-of-legend-items-to-show="2" slider-color="#002842" />
                        </span>
                    </div>
                    <!-- Brand Filter -->
                    <div>
                        <h1 class="fw-bold fs-4 category_heading m-0">Brand</h1>
                        <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">
                        <!-- List of Brands -->
                        <div>
                            <ul class="list-unstyled fs-5 lh-lg" id="brandList">
                                @foreach ($allBrands as $brand)
                                    <li class="active">
                                        <a href="#"
                                            class="text-decoration-none list-txt-color">{{ $brand->name }}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Product Display Section -->
                <div class="col-sm-9 col-md-9 col-lg-9">
                    <!-- Banner Image -->
                    <div>
                        <img class="w-100" src="{{ asset('assets/images/shop-banner.jpg') }}" alt="img">
                    </div>
                    <!-- Product Sorting Section -->
                    <div class="row mt-5">
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <h1 class="fs-4 text-secondary">Showing 10 Products</h1>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-6 d-flex justify-content-end">
                            <div>
                                <h4 class="mt-2">Sort</h4>
                            </div>
                            <!-- Sort Dropdown -->
                            <div class="dropdown border border-2 rounded-pill mx-2">
                                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton1"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                    Best Selling
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Product Cards -->
                    <div class="row">
                        @foreach ($products as $product)
                            <div class="col-sm-12 col-md-6 col-lg-4">
                                <div class="product_box">
                                    <!-- Product Image -->                                                                
                                    <div class="img_boxes">
                                        @if(empty($product->featured_image))
                                            <img src="{{ asset($product->productImages[0]->image) }}" class="mx-auto d-block" alt="img">
                                        @else
                                            <img src="{{ asset($product->featured_image) }}"  alt="Default Image">
                                        @endif
                                    </div>
                                    <!-- Product Details -->
                                    <div class="product_details justify-content-center my-3">
                                        <!-- Product Name -->
                                        <h5 class="fw-bold d-flex justify-content-center">{{ $product->name }}</h5>
                                        <!-- Product Price -->
                                        <div class="d-flex justify-content-center">
                                            <div>
                                                <p
                                                    class="price fw-bold d-flex justify-content-center fs-3 custom_rating_txt">
                                                    ₹590.00</p>
                                            </div>
                                            <div>
                                                <p class="price fw-bold fs-4 text-decoration-line-through p-1 mx-2">
                                                    ₹990.00</p>
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
                                        <span><button type="button"
                                                class="text-light submit_btn border-0 px-5 mx-auto d-block" onclick="redirectToProduct('{{ url('collections/' . $product->category->slug . '/' . $product->slug) }}')">
                                                Shop Now
                                            </button></span>
                                    </div>
                                </div>
                            </div>
                        @endforeach                       
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
