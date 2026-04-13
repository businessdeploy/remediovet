<!DOCTYPE html>
<html>

<head>
    <title>Order Completed Notification</title>
    <style>
        /* Reset styles */
        body,
        html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        /* Container styles */
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Header styles */
        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 10px;
        }

        /* Content styles */
        .content {
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .content p {
            font-size: 16px;
            color: #333;
            margin-bottom: 15px;
            line-height: 1.6;
        }
        /* Logo styles */
        .logo {
            text-align: center;
            margin-bottom: 20px;
        }
        /* Footer styles */
        .footer {
            text-align: center;
            color: #666;
            font-size: 14px;
        }
    </style>
</head>

<body>

    <div class="container">

        <div class="logo">
            <img src="https://remediovet.com/assets/images/logo.png" alt="logo" style="max-width: 200px;">
        </div>

        <div class="header">
            <h2>Order Completed Notification</h2>
        </div>

        <div class="content">
            <p>Hi {{ $user->name }},</p>

            <p>Your order with ID {{ $order->id }} has been completed successfully.</p>

            <p>Thank you for shopping with us!</p>
        </div>

        <div class="footer">
            <p>Regards,<br>{{ config('app.name') }}</p>
        </div>

    </div>

</body>

</html>
