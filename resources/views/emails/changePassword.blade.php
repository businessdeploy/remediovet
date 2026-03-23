<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Change Notification</title>
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
         /* Logo styles */
         .logo {
            text-align: center;
            margin-bottom: 20px;
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

        .content strong {
            font-weight: bold;
            color: #008080;
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
            <h1>Password Change Notification</h1>
        </div>

        <div class="content">
            <p>Hello {{ $user->name }},</p>

            <p>Your password has been changed successfully.</p>

            <p>Your new password is: <strong>{{ $password }}</strong></p>

            <p>If you did not initiate this change, please contact support immediately.</p>

            <p>Thank you.</p>
        </div>

        <div class="footer">
            <p>Regards,<br>{{ config('app.name') }}</p>
        </div>

    </div>

</body>

</html>
