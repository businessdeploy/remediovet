<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Our Website</title>
    <style>
        /* Reset styles */
        body,
        html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Container styles */
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Logo styles */
        .logo {
            text-align: center;
            margin-bottom: 20px;
        }

        /* Header styles */
        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 28px;
            color: #333;
            margin-bottom: 10px;
        }

        /* Content styles */
        .content {
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .content p {
            font-size: 16px;
            color: #666;
            margin-bottom: 15px;
            line-height: 1.6;
        }

        .content ul {
            list-style: none;
            padding-left: 0;
          
        }

        .content ul li {
            margin-bottom: 10px;
        }

        .content ul li strong {
            font-weight: bold;
            color: #333;
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
            <h1>Welcome to Our Website</h1>
        </div>

        <div class="content">
            <p>Dear {{ $user->name }},</p>

            <p>Thank you for registering on our website. Your account has been successfully created.</p>

            <p>You can now log in using the credentials below:</p>

            <ul>
                <li><strong>Email:</strong> {{ $user->email }}</li>
                <li><strong>Password:</strong> {{ $password }}</li>
            </ul>

            <p>Feel free to explore our website and enjoy our services!</p>
        </div>

        <div class="footer">
            <p>Regards,<br>{{ config('app.name') }}</p>
        </div>

    </div>

</body>

</html>
