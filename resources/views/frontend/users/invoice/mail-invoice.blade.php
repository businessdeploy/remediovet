<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice {{ $order->id }}</title>

    <style>
        /* Reset styles */
        body,
        html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Page layout */
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
        }

        /* Header styles */
        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 24px;
            margin: 5px 0;
            color: #333;
        }

        .header p {
            font-size: 16px;
            margin: 5px 0;
            color: #666;
        }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
            font-size: 14px;
        }

        th {
            background-color: #f2f2f2;
        }

        /* Address styles */
        .address {
            margin-bottom: 20px;
        }

        /* Footer styles */
        .footer {
            text-align: center;
            color: #666;
        }

        /* Address row styles */
        .address-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .address-row p {
            margin: 0;
        }

        .address-row strong {
            font-weight: bold;
            margin-right: 5px;
        }

        /* Logo styles */
        .logo {
            text-align: center;
        }

        .logo img {
            max-width: 150px; /* Adjust as needed */
            height: auto;
        }

        /* Total payment section */
        .total-payment {
            margin-top: 20px;
            text-align: right;
            font-weight: bold;
        }

        /* Payment method styles */
        .payment-method {
            margin-top: 20px;
        }
    </style>
</head>


<body>
<div class="container">
    <div class="header">
        <div class="logo">
            <img src="https://remediovet.com/assets/images/logo.png" alt="logo">
        </div>
        <h2>Thank you for your order! </h2>
        <p>Your order items and details are provided below.</p>
    </div>
    <div class="payment-method">
      <p><strong>Order Id</strong>: {{ $order->id }}</p>
      <p><strong>Payment Method</strong>: {{ ($order->payment_mode == "cashFree") ? "Cash Free" : "Cash On Delivery" }}</p>
    </div>

    <div class="address">
        <div class="address-row">
            <div style="margin-right:50px;">
                <h2>Billing Address</h2>
                <p><strong>Name:</strong> {{ ucwords($order->fullname) }}</p>
                <p><strong>Email:</strong> {{ $order->email }}</p>
                <p><strong>Phone:</strong> {{ $order->phone }}</p>
                <p><strong>Address:</strong> {{ $order->apartment }}</p>
                <p><strong>City:</strong> {{ $order->city }}</p>
                <p><strong>State:</strong> {{ $order->state }}</p>
            </div>
            <div>
                <h2>Shipping Address</h2>
                <p><strong>Name:</strong> {{ ucwords($order->shipping_name) }}</p>
                <p><strong>Email:</strong> {{ $order->shipping_email }}</p>
                <p><strong>Phone:</strong> {{ $order->shipping_phone }}</p>
                <p><strong>Address:</strong> {{ $order->shipping_apartment }}</p>
                <p><strong>City:</strong> {{ $order->shipping_city }}</p>
                <p><strong>State:</strong> {{ $order->shipping_state }}</p>
            </div>
        </div>
    </div>
    <hr>    
        <h4>Order Items</h4>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Product</th>                   
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $totalPrice = 0;
                @endphp
                @foreach ($order->orderItems as $orderItem)
                <tr>
                    <td width="10%">{{ $loop->iteration }}</td>                    
                    <td>{{ $orderItem->product->name }}
                        @if($orderItem->productVariation)
                            @foreach($orderItem->productVariation->variationValues as $value)
                                <span>-{{ ($value->attribute_id == 1) ? 'Color' : 'Size' }} : {{ $value->attribute_value }}</span>
                            @endforeach
                        @endif
                        @if ($orderItem->productColor)
                            @if ($orderItem->productColor->color)
                                <span>- Color :
                                    {{ $orderItem->productColor->color->name }}</span>
                            @endif
                        @endif
                    </td>
                    <td>&#8377;{{ $orderItem->price }}</td>
                    <td width="10%" style="text-align: center;">{{ $orderItem->quantity }}</td>
                    <td>&#8377;{{ $orderItem->quantity * $orderItem->price }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <div class="total-payment">            
            <p>Subtotal: &#8377;{{ $order->sub_total_amount}}</p>
            <p>Tax: &#8377;{{ $order->tax_amount}}</p>           
            @if($order->total_discount)<p>Discount <span class="applied-coupon">({{ $order->coupon_code }})</span> : &#8377;{{ $order->total_discount }}</p>@endif
             <p>Shipping : &#8377;{{ $order->shipping_amount}}</p>
            <p>Total Payment: &#8377;{{ $order->total_amount }}</p>
        </div>

        <div class="footer">
            <p>Thank you for shopping with Remediovet</p>
        </div>
    </div>
</body>

</html>
