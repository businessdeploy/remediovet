<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Invoice {{ $order->id }}</title>

    <style>
        html,
        body {
            margin: 10px;
            padding: 10px;
            font-family: sans-serif;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        p,
        span,
        label {
            font-family: sans-serif;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 0px !important;
        }

        table thead th {
            height: 28px;
            text-align: left;
            font-size: 16px;
            font-family: sans-serif;
        }

        table,
        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
            font-size: 14px;
        }

        .heading {
            font-size: 24px;
            margin-top: 12px;
            margin-bottom: 12px;
            font-family: sans-serif;
        }

        .small-heading {
            font-size: 18px;
            font-family: sans-serif;
        }

        .total-heading {
            font-size: 18px;
            font-weight: 700;
            font-family: sans-serif;
        }

        .order-details tbody tr td:nth-child(1) {
            width: 20%;
        }

        .order-details tbody tr td:nth-child(3) {
            width: 20%;
        }

        .text-start {
            text-align: left;
        }

        .text-end {
            text-align: right;
        }

        .text-center {
            text-align: center;
        }

        .company-data span {
            margin-bottom: 4px;
            display: inline-block;
            font-family: sans-serif;
            font-size: 14px;
            font-weight: 400;
        }

        .no-border {
            border: 1px solid #fff !important;
        }

        .bg-blue {
            background-color: #414ab1;
            color: #fff;
        }
    </style>
</head>

<body>
    <div class="text-center">
        <img class="logo_img" src="https://remedio.evgigsoft.com/assets/images/logo.png" alt="logo" width="150px" height="auto" />
    </div>

    <table class="order-details">
        <thead>
            <tr>
                <th width="33%" colspan="2">
                    
                </th>
                 <th width="33%" colspan="2">
                    
                </th>
                <th width="33%" colspan="2" class="text-end company-data">
                    <span>Invoice Id: {{ $order->id }}</span> <br>
                    <span>Date: {{ date('d / m/ Y')}}</span> <br>
                    
                </th>
            </tr>
            <tr class="bg-blue">
                <th width="33%" colspan="2">Order Details</th>
                <th width="33%" colspan="2">Billing Details</th>
                <th width="33%" colspan="2">Shipping Details</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Order Id:</td>
                <td>{{ $order->id }}</td>

                <td>Full Name:</td>
                <td>{{ $order->fullname }}</td>

                <td>Full Name:</td>
                <td>{{ $order->shipping_name }}</td>
            </tr>
            <tr>
                <td>Tracking Id/No.:</td>
                <td>{{ $order->tracking_no }}</td>

                <td>Email Id:</td>
                <td>{{ $order->email }}</td>

                <td>Email Id:</td>
                <td>{{ $order->shipping_email }}</td>
            </tr>
            <tr>
                <td>Ordered Date:</td>
                <td>{{ $order->created_at->format('d-m-Y h:i A') }}</td>

                <td>Phone:</td>
                <td>{{ $order->phone }}</td>

                <td>Phone:</td>
                <td>{{ $order->shipping_phone }}</td>
            </tr>
            <tr>
                <td>Payment Mode:</td>
                <td>{{ $order->payment_mode }}</td>

                <td>Apartment:</td>
                <td>{{ $order->apartment }}</td>

                <td>Address:</td>
                <td>{{ $order->shipping_apartment }}</td>
            </tr>
            <tr>
                <td>Order Status:</td>
                <td>{{ $order->status_message }}</td>

                <td>City:</td>
                <td>{{ $order->city }}</td>

                <td>City:</td>
                <td>{{ $order->shipping_city }}</td>
            </tr>
            <tr>
                <td></td>
                <td></td>

                <td>State:</td>
                <td>{{ $order->state }}</td>

                <td>State:</td>
                <td>{{ $order->shipping_state }}</td>
            </tr>
        </tbody>
    </table>

    <table>
        <thead>
            <tr>
                <th class="no-border text-start heading" colspan="5">
                    Order Items
                </th>
            </tr>
            <tr class="bg-blue">
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
                    <td width="10%">{{ $orderItem->id }}</td>

                    <td>
                        {{ $orderItem->product->name }}
                        @if($orderItem->productVariation)
                            @foreach($orderItem->productVariation->variationValues as $value)
                                <span>-{{ ($value->attribute_id == 1) ? 'Color' : 'Size' }} : {{ $value->attribute_value }}</span>
                            @endforeach
                        @endif                        
                    </td>
                    <td width="10%">₹{{ $orderItem->price }}</td>
                    <td width="10%">{{ $orderItem->quantity }}</td>
                    <td width="15%" class="fw-bold">
                        ₹{{ $orderItem->quantity * $orderItem->price }}</td>
                    @php
                        $totalPrice += $orderItem->quantity * $orderItem->price;
                    @endphp
                </tr>
            @endforeach
            <tr>
            </tr>
                <tr>
                    <td colspan="3" class="fw-bold"></td>
                    <td colspan="1" class="fw-bold">Sub Total : </td>
                    <td colspan="1" class="fw-bold">&#8377;{{ $order->sub_total_amount }}</td>
                </tr>
                <tr>
                    <td colspan="3" class="fw-bold"></td>
                    <td colspan="1" class="fw-bold">Tax : </td>
                    <td colspan="1" class="fw-bold">&#8377;{{ $order->tax_amount }}</td>                                    
                </tr>
                @if($order->total_discount)
                    <tr>
                        <td colspan="3" class="fw-bold"></td>
                        <td colspan="1" class="fw-bold">Total Discount : </td>
                        <td colspan="1" class="fw-bold">&#8377;{{ $order->total_discount }}</td>
                    </tr>
                @endif
                <tr>
                    <td colspan="3" class="fw-bold"></td>
                    <td colspan="1" class="fw-bold">Shipping : </td>
                    <td colspan="1" class="fw-bold">&#8377;{{ ($order->shipping_amount) ?? '0' }}</td>                                    
                </tr>
                <tr>
                    <td colspan="3" class="fw-bold"></td>
                    <td colspan="1" class="fw-bold">Total Amount : </td>
                    <td colspan="1" class="fw-bold">&#8377;{{ $order->total_amount }}</td>                               
                </tr>
            
        </tbody>
    </table>

    <br>
    <p class="text-center">
        Thank your for shopping with Remediovet
    </p>

</body>

</html>
