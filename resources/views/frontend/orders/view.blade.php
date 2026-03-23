@extends('layouts.app', ['layout' => 'orders'])

@section('title', 'My Order Details')

@section('content')

<div class="py-3 py-md-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="shadow bg-white p-3">
                    <h3 class="mb-4">
                        My Order Details
                        <a href="{{ route('my.account') }}" class="btn btn-danger btn-sm float-end">Back</a>
                    </h3>
                    <hr>

                    <div class="row">
                        <div class="col-md-4">
                            <h5>Order Details</h5>
                            <hr>
                            <h6>Order Id: {{ $order->id }}</h6>
                            <h6>Tracking Id/No.: {{ $order->tracking_no }}</h6>
                            <h6>Ordered Date: {{ $order->created_at->format('d-m-Y h:i A') }}</h6>
                            <h6>Payment Mode: {{ $order->payment_mode }}</h6>
                            <h6 class="border p-2 text-success">
                                Order status message: <span class="text-uppercase">{{ $order->status_message }}</span>
                            </h6>
                        </div>
                        <div class="col-md-4">
                            <h5>Billing Details</h5>
                            <hr>
                            <h6>Full Name: {{ $order->fullname }}</h6>
                            <h6>Email Id: {{ $order->email }}</h6>
                            <h6>Phone: {{ $order->phone }}</h6>
                            <h6>City: {{ $order->city }}</h6>
                            <h6>State: {{ $order->state }}</h6>
                        </div>
                        <div class="col-md-4">
                            <h5>Shipping Details</h5>
                            <hr>
                            <h6>Full Name: {{ $order->shipping_name }}</h6>
                            <h6>Email Id: {{ $order->shipping_email }}</h6>
                            <h6>Phone: {{ $order->shipping_phone }}</h6>
                            <h6>City: {{ $order->shipping_city }}</h6>
                            <h6>State: {{ $order->shipping_state }}</h6>
                        </div>
                    </div>

                    <br>
                    <h5>Order Items</h5>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table-borderd table-striped">
                            <thead>
                                <tr>
                                    <th>Item ID</th>
                                    <th>Image</th>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>

                                @php $totalPrice = 0; @endphp
                                @foreach ($order->orderItems as $orderItem)

                                <tr>
                                    <td data-label="Item ID">{{ $orderItem->id }}</td>
                                    <td data-label="Image">
                                        @if (isset($orderItem->product->productImages))
                                        <img src="{{ asset($orderItem->product->featured_image) }}" style="width: 50px; height: 50px" alt="">
                                        @else
                                        <img src="" style="width: 50px; height: 50px" alt="">
                                        @endif
                                    </td>
                                    <td data-label="Product">
                                        {{ $orderItem->product->name }}
                                        @if($orderItem->productVariation)
                                            @foreach($orderItem->productVariation->variationValues as $value)
                                                <span>-{{ ($value->attribute_id == 1) ? 'Color' : 'Size' }} : {{ $value->attribute_value }}</span>
                                            @endforeach
                                        @endif
                                        @if ($orderItem->productColor)
                                            @if ($orderItem->productColor->color)
                                                <span>- Color : {{ $orderItem->productColor->color->name }}</span>
                                            @endif
                                        @endif
                                    </td>
                                    <td data-label="Price">&#8377;{{ $orderItem->price }}</td>
                                    <td data-label="Quantity">{{ $orderItem->quantity }}</td>
                                    <td data-label="Total" class="fw-bold">
                                        &#8377;{{ $orderItem->quantity * $orderItem->price }}</td>
                                    @php $totalPrice += $orderItem->quantity * $orderItem->price; @endphp
                                </tr>
                                @endforeach
                                <tr>
                                    <td colspan="5" class="fw-bold">Sub Total Amount : </td>
                                    <td colspan="1" class="fw-bold">&#8377;{{ $order->sub_total_amount }}</td>
                                </tr>
                                <tr>
                                    <td colspan="5" class="fw-bold">Tax : </td>
                                    <td colspan="1" class="fw-bold">&#8377;{{ $order->tax_amount }}</td>
                                </tr>
                                @if($order->total_discount)
                                    <tr>
                                        <td colspan="5" class="fw-bold">Discount : </td>
                                        <td colspan="1" class="fw-bold">&#8377;{{ $order->total_discount }}</td>
                                    </tr>
                                @endif
                                <tr>
                                    <td colspan="5" class="fw-bold">Shipping : </td>
                                    <td colspan="1" class="fw-bold">&#8377;{{ $order->shipping_amount }}</td>
                                </tr>
                                <tr>
                                    <td colspan="5" class="fw-bold">Total Amount : </td>
                                    <td colspan="1" class="fw-bold">&#8377;{{ $order->total_amount }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
