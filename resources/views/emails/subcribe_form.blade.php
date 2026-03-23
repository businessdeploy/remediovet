<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subscription Confirmation</title>
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

        .header h1 {
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

        /* Button styles */
        .button {
            text-align: center;
            margin-top: 20px;
        }

        .button a {
            display: inline-block;
            background-color: #ff5722;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .button a:hover {
            background-color: #e64a19;
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
            <img src="https://remedio.evgigsoft.com/assets/images/logo.png" alt="logo" style="max-width: 200px;">
        </div>

        <div class="header">
            <h2>Subscription Confirmation</h2>
        </div>

        <div class="content">
            <p>Dear Customer,</p>
            <p>Thank you for subscribing to Remediovet. You are now part of our community!</p>
            <p>You can expect to receive updates, newsletters, and exclusive offers straight to your inbox.</p>
            <p>If you have any questions or need assistance, feel free to contact us at <a href="mailto:woof@remediovet.com">woof@remediovet.com</a>.</p>
        </div>

        <div class="footer">
            <p>Regards,<br>{{ config('app.name') }}</p>
        </div>

    </div>

</body>
</html>
