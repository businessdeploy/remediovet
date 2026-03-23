@extends('layouts.app', ['layout' => 'account'])
@section('title', 'Account')
@section('content')
    <!-- top heading section  -->
    <section class="custom-top-bgimg">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12 py-5">
                    <h1 class="fw-bold d-flex justify-content-center quotes_heading">My-Account</h1>
                    <img src="{{ asset('assets/images/white-underline.png') }}" class="mx-auto d-block" alt="img">
                </div>
            </div>
        </div>
    </section>
    @php
        $user_id = Auth::user()->id;
    @endphp

    <section class="user-profile my-5">
        <div class="container py-5">
            <ul
                class="tabs profile-header-box px-4 py-3 d-flex flex-column flex-lg-row text-center justify-content-between gap-4 my-5">
                <li class="active" data-cont=".one">Dashboard</li>
                <li data-cont=".two">Orders</li>
                <li data-cont=".three">Address</li>
                <li data-cont=".four">Account Details</li>
                <li data-cont=".five">My Coupons</li>
                <li data-cont=".six">Wishlist</li>
            </ul>
            <div class="content">
                <div class="one p-3 border border-2">
                    <p>Hello <span class="fw-bold">{{ Auth::user()->name }}</span> (not <span
                            class="fw-bold">{{ Auth::user()->name }}</span>? <a href="{{ route('logout') }}" onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">Log out</a>)</p>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                  @csrf
                              </form>
                    <p>From your account dashboard you can view your recent orders, manage your shipping and billing
                        addresses,
                        and edit your password and account details.</p>
                </div>
                <div class="two" style="display: none;">
                    <table class="w-100 border" id="orderTable">
                        <thead class="border">
                            <th class="ps-4 py-2 fs-6">Order ID</th>
                            <th class="ps-4 py-2 fs-6">Tracking No</th>
                            <th class="pe-2 py-2 fs-6">Username</th>
                            <th class="ps-4 py-2 fs-6">Payment Mode</th>
                            <th class="pe-2 py-2 fs-6">Ordered Date</th>
                            <th class="ps-4 py-2 fs-6">Status Message</th>
                            <th class="ps-4 py-2 fs-6">Action</th>
                        </thead>
                        <!-- table body  -->
                        <tbody>
                            <!-- first product  -->
                            @forelse ($orders as $item)
                                <tr class="border">
                                    <td class="py-4" data-label="Order ID">{{ $item->id }}</td>
                                    <td data-label="Tracking No">{{ $item->tracking_no }}</td>
                                    <td data-label="Username">{{ $item->fullname }}</td>
                                    <td data-label="Payment Mode">{{ $item->payment_mode }}</td>
                                    <td data-label="Ordered Date">{{ $item->created_at->format('d-m-Y') }}</td>
                                    <td data-label="Status Message" class="pe-2">
                                        <div class="px-4 py-2 bg-success d-inline-block text-light rounded-pill">
                                            {{ $item->status_message }}</div>
                                    </td>
                                    <td data-label="Action">
                                        <a href="{{ url('orders/' . $item->id) }}"
                                            class="btn px-4 py-2 text-light rounded-pill order_view">View</a>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="7">No Orders Available</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                    <div>
                        {{ $orders->links() }}
                    </div>
                </div>

                <div class="three p-3 border border-2" style="display: none;">
                    <div class="d-flex flex-column flex-md-row justify-content-between gap-4">
                        <div class="w-100">
                            <h3 class="fw-bold">Billing address</h3>
                            <div class="p-3 border border-2">
                                <a href="{{ route('frontend.add.billing.address') }}"><button
                                        class="rounded-pill px-4 py-2 border-0 mb-2 bg-orange text-white">Add</button></a>
                                @if (count($billingAddress) > 0)
                                    @foreach ($billingAddress as $address)
                                        <div class="p-2 d-flex justify-content-between border rounded mb-3">
                                            <div>
                                                <h4 class="fs-5 mb-3">
                                                    <strong>{{ $address->full_name }}</strong>
                                                </h4>
                                                <div class="fs-5 mb-3">
                                                    <i class="fa-solid fa-location-dot"></i>
                                                    <label class="form-check-label" for="flexCheckDefault">
                                                        {{ $address->street_name }} {{ $address->city }}
                                                        {{ $address->country }}, {{ $address->pin_code }}
                                                    </label>
                                                </div>
                                            </div>
                                            <div>
                                                <a href="{{ route('frontend.edit.billing.address', [encrypt($address->id)]) }}"
                                                    style="text-decoration: none;"><i
                                                        class="fa-solid fa-pen-to-square fa-lg orange"></i></a>
                                                <a href="javascript:void(0)" class="delete-address"
                                                    data-address-id="{{ $address->id }}" style="text-decoration: none;"><i
                                                        class="fa-solid fa-trash orange"></i></a>
                                            </div>
                                        </div>
                                    @endforeach
                                @else
                                    <p>You have not set up this type of address yet.</p>
                                @endif
                            </div>
                        </div>
                        <div class="w-100">
                            <h3 class="fw-bold">Shipping address</h3>

                            <div class="p-3 border border-2">
                                <a href="{{ route('frontend.add.shipping.address') }}"><button
                                        class="rounded-pill px-4 py-2 border-0 mb-2 bg-orange text-white">Add</button></a>
                                @if (count($shippingAddress) > 0)
                                    @foreach ($shippingAddress as $address)
                                        <div class="p-2 d-flex justify-content-between border rounded mb-3">
                                            <div>
                                                <h4 class="fs-5 mb-3">
                                                    <strong>{{ $address->full_name }}</strong>
                                                </h4>
                                                <div class="fs-5 mb-3">
                                                    <i class="fa-solid fa-location-dot"></i>
                                                    <label class="form-check-label" for="flexCheckDefault">
                                                        {{ $address->city }} {{ $address->state }},
                                                        {{ $address->country }}
                                                    </label>
                                                </div>
                                            </div>
                                            <div>
                                                <a href="{{ route('frontend.edit.shipping.address', [encrypt($address->id)]) }}"
                                                    style="text-decoration: none;">
                                                    <i class="fa-solid fa-pen-to-square fa-lg orange"></i>
                                                </a>
                                                <a href="javascript:void(0)" class="delete-address"
                                                    data-address-id="{{ $address->id }}" style="text-decoration: none;">
                                                    <i class="fa-solid fa-trash orange"></i>
                                                </a>
                                            </div>

                                        </div>
                                    @endforeach

                            </div>
                        @else
                            <p>You have not set up this type of address yet.</p>
                            @endif
                        </div>
                    </div>
                </div>
</div>
                <div class="four">
                    <div class="form-header">
                        <a href="https://remedio.evgigsoft.com/change-password"
                            class="btn rounded-pill bg-orange float-end text-white">Change Password</a>
                        <!-- <span><i class="fa-solid fa-arrow-left back_button" onclick="redirectToUrl('{{ route('my.account') }}')"></i></span>-->
                        <h1 class="fw-bolder text-center">Account Details</h1>
                    </div>

                    @if (session('message'))
                        <p class="alert alert-success">{{ session('message') }}</p>
                    @endif
                    <div class="border border-2 p-3">
                        <form id="profileForm" method="POST">
                            @csrf
                            <input type="hidden" id="user_id" name="user_id" value="{{ Auth::user()->id }}"
                                class="form-control">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="">Name</label>
                                        <input type="text" id="username" name="name"
                                            value="{{ Auth::user()->name }}" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="">Phone Number</label>
                                        <input type="text" name="phone" id="phone"
                                            value="{{ Auth::user()->phone ?? '' }}" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label for="">Email Address</label>
                                        <input type="text" value="{{ Auth::user()->email }}" class="form-control"
                                            readonly>
                                    </div>
                                </div>
                                <div class="col-md-12 text-center">
                                    <button type="submit" id="submitButton" class="btn rounded-pill bg-blue">Save
                                        Data</button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
                <div class="five p-3 border border-2" style="display: none;">
                    @if (count($coupons) > 0)
                            <table class="w-100 border table table-striped" id="account_wishlist">
                            <thead class="border">
                                <th class="ps-4 py-2 fs-5 text-start">Order Id</th>
                                <th class="ps-4 py-2 fs-5">Coupon Code</th>
                            </thead>
                            <tbody>
                                @forelse ($coupons as $coupon)
                                    <tr>
                                        <td class="product-box px-sm-4 fs-5 text-start p-4">
                                            {{ $coupon->id }}                                           
                                        </td>
                                        <td class="text-center pt-4">
                                            {{ $coupon->coupon_code }}       
                                        </td>                                        
                                    </tr>
                                @empty
                                @endforelse
                            </tbody>
                        </table>
                    @else
                       <div class="p-3 border border-2">No Coupons Available </div>
                    @endif
                </div>
                <div class="six" style="display: none;">
                    <!-- <div class="form-header">
                          <h1 class="fw-bolder text-center">Wishlist</h1>
                      </div> -->

                    @if (count($wishlist) > 0)
                        <table class="w-100 border table table-striped" id="account_wishlist">
                            <thead class="border">
                                <th class="ps-4 py-2 fs-5 text-start">Products</th>
                                <th class="ps-4 py-2 fs-5">Price</th>
                                <th class="pe-2 text-center py-2 fs-5">Status</th>
                            </thead>
                            <tbody>
                                @forelse ($wishlist as $wishlistItem)
                                    <tr>
                                        <td class="product-box px-sm-4 fs-5 text-start p-4">

                                            @if (count($wishlistItem->product->productImages) > 0)
                                                <img src="{{ $wishlistItem->product->productImages[0]->image }}"
                                                    style="width: 80px; height: 60px" alt="">
                                            @else
                                                <img src="{{ asset('assets/images/default-featured-image.jpg') }}"
                                                    style="width: 80px; height: 60px" alt="Default Image">
                                            @endif
                                            <a
                                                href="{{ url('shop/' . $wishlistItem->product->category->slug . '/' . $wishlistItem->product->slug) }}">
                                                {{ $wishlistItem->product->name }}
                                            </a>
                                        </td>
                                        <td class="text-center pt-4">
                                            <span class="price fs-3 fw-bold">
                                                <span
                                                    class="offer-price">&#8377;{{ $wishlistItem->product->selling_price }}</span>
                                            </span>
                                            <span class="text-decoration-line-through">
                                                <span
                                                    class="actual-price">&#8377;{{ $wishlistItem->product->original_price }}</span>
                                            </span>
                                        </td>
                                        <td class="text-center pt-4">
                                            <button type="button" class="btn btn-danger rounded-pill"
                                                onclick="removeWishlist('{{ $wishlistItem->id }}')">
                                                <i class="fa fa-trash"></i> Remove
                                            </button>
                                        </td>
                                    </tr>
                                @empty
                                @endforelse
                            </tbody>
                        </table>
                    @else
                        <div class="p-3 border border-2">No Wishlist Available </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
    <script>
        var userProfileUpdateUrl = "{{ route('update.user.profile') }}";
        var removeWishlistUrl = "{{ route('remove.user.wishlist') }}";
        var deleteAddressUrl = "{{ route('frontend.delete.address') }}";
        var myaccount = "{{ route('my.account') }}";
    </script>
@endsection
