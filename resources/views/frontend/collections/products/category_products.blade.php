@extends('layouts.app', ['layout' => 'shop'])


@if(isset($category_meta) && count((array)$category_meta->id) > 0)

    @section('title', $category_meta->meta_title ?? 'Shop')

    @section('meta_keyword', $category_meta->meta_keyword ?? 'Meta Keyword')

    @section('meta_description', $category_meta->meta_description ?? 'Meta Descriptions')

@else 

    @section('title', $category->meta_title ?? 'Shop')

    @section('meta_keyword', $category->meta_keyword)

    @section('meta_description', $category->meta_description)

@endif

@section('content')
@php
    $categorySegment = request()->segment(2);
@endphp
<section class="custom-top-bgimg">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 py-5">
                <h1 class="fw-bold d-flex justify-content-center quotes_heading">Shop</h1>
                <img src="{{ asset('assets/images/white-underline.png') }}" class="mx-auto d-block" alt="img">
                @include('frontend.breadcrumb')              
            </div>
        </div>
    </div>
</section>

<div class="py-3 py-md-5">
    <div class="container">
        <div>
            @php
                $selectedCategory=$category->name;

            @endphp
            
            <div class="row">
                @if(!$subcategory_slug && !$productType_slug)
                <div class="col-md-3 shopPage">
                        <div class="card">
                            <div class="card-header">
                                <h1 class="fw-bold fs-4 category_heading m-0">Shop by Pet</h1>
                                <img src="{{ asset('assets/images/heading_border.png') }}" alt="img">
                            </div>
                            <div class="card-body">
                                <?php $attributeValue = request()->input('attribute'); ?>

                                @foreach ($topCategories as $cKey => $category)
                                    @if($category->slug == $category_slug)                                    
                                        <div class="p-2 mt-2">
                                            <div class="d-flex category-filter-h">
                                            <div>
                                                <input type="hidden" class="text-decoration-none list-txt-color m-2 " name="maincategoryInput" id="maincategoryInput" value="{{ $category->id }}">
                                            </div>
                                            <div>
                                                <a href="{{ route('frontend.shop') }}/{{ $category->slug }}" data-toggle="dropdown" id="dogTypeButton{{ $cKey }}" class="text-decoration-none fs-5 list-txt-color d-flex align-items-center justify-content-between chevron">
                                                <span class="fw-bold">
                                                {{ $category->name }}</span>
                                            <div class="subcategories_chevron">
                                                <i class="menu-open fa-solid fa-chevron-right"></i>
                                                <i class="menu-close fa-solid fa-chevron-down d-none"></i>
                                                </div>
                                            </a>
                                            </div>
                                            </div>
                                            <div id="subCategoriesDog{{ $cKey }}" class="show subCategories">
                                                @php
                                                    $sortedSubcategories = collect($category->children)->sortBy('serial');
                                                @endphp
                                                @foreach ($sortedSubcategories as $sKey => $subcategory)
                                                    <div class="border p-2 my-3">
                                                        <div class="d-flex">
                                                            <div>
                                                            <input type="checkbox" class="text-decoration-none list-txt-color m-2 categoryInput" name="categoryInput" value="{{ $subcategory->id }}">
                                                            </div>
                                                            <div>
                                                            <a href="{{ route('frontend.shop') }}/{{ $category->slug }}/{{ $subcategory->slug }}" data-toggle="dropdown" id="foodTypeButton{{ $cKey }}{{ $sKey }}"
                                                            class="text-decoration-none fs-5 list-txt-color d-flex align-items-center justify-content-between chevron">
                                                            <span>{{ $subcategory->name }}</span>
                                                            <div class="subcategories_chevron">
                                                            <i class="menu-open fa-solid fa-chevron-right"></i>
                                                            <i class="menu-close fa-solid fa-chevron-down d-none"></i>
                                                            </div>
                                                        </a>
                                                            </div>
                                                        </div>

                                                        <ul class="food_list_items px-4 list-unstyled lh-lg" id="foodList{{ $cKey }}{{ $sKey }}" style="display: block;">
                                                            @foreach ($subcategory->children as $pKey => $productType)
                                                            <li>
                                                                <input type="checkbox" class="text-decoration-none list-txt-color categoryInput" name="categoryInput" value="{{ $productType->id }}"> 
                                                                <a class="text-decoration-none fw-normal text-dark" href="#"
                                                            id="productType{{ $sKey }}{{ $pKey }}">
                                                            {{ $productType->name }}
                                                                </a>                                                         
                                                                <ul class="food_list_items px-4 list-unstyled lh-lg"
                                                                    id="productList{{ $sKey }}{{ $pKey }}" style="display: none;">
                                                                    @foreach ($productType->products as $product)
                                                            
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
                                        @endif
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
                                    <input type="checkbox" class="text-decoration-none list-txt-color" id="featuredFilter" value="1">
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
                                    <input type="checkbox" class="text-decoration-none list-txt-color"id="seasonalInputs" value="1">
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
                                            <input type="radio" name="priceSort" class="priceInput" value="{{ $value }}"> {{ $label }}
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
                                            <input type="checkbox" class="text-decoration-none list-txt-color brandInputs"  value="{{ $item->name }}">
                                            {{ $item->name }}
                                        </label>
                                    @endforeach
                                </div>
                            </div>
                        @endif

                </div>
                @endif

                @if(!$subcategory_slug && !$productType_slug)
                    <div class="col-md-9">
                @else
                    <div class="col-md-12">
                @endif
                    <div>
                        
                        @if($category->banner_image !="")
                        <a href="{{$category->banner_url}}"> <img class="w-100" src="{{ asset($category->banner_image) }}" alt="img"> </a>
                        @elseif($categorySegment =="dog" && $category->banner_image =="")
                            <a href="{{ url('shop/dog/calcium-syrup-for-dogs-cats-yummy-chicken-flavour') }}">
                                <img class="w-100" src="{{ asset('assets/images/shop-banner-2.jpg') }}" alt="img">
                            </a>
                        @else
                            <!-- Replace Banner Image for Cat -->
                            <a href="{{ url('shop/cat/defender-nex-pro-herbal-dewormer-for-cats-and-kittens-6-tablets') }}">
                                <img class="w-100" src="{{ asset('assets/images/banner_01.jpg') }}" alt="img">
                            </a>
                        @endif
                    </div>
                    <div class="row mt-5">
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <h1 class="fs-4 text-secondary" id="productCount">Showing {{ $productCount }} Products</h1>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-6 d-flex justify-content-end">

                        </div>
                    </div>
                   
                        @include('frontend.collections.products.partials.products_listing', ['products' => $products])
                    
                </div>
            </div>
        </div>

    </div>
</div>
<script>
    var categoryFilterUrl = "{{ route('get.category.product.listing') }}";

     var selectedCategory="{{ $selectedCategory }}";

</script>
@endsection

