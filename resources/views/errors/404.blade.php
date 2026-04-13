<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page Not Found</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <style>
        /* Container styles */
        .container {
            max-width: 600px;
            margin: 100px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            animation: fadeIn 0.5s ease;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Logo styles */
        .logo {
            margin-bottom: 20px;
            animation: slideInUp 0.5s ease;
        }

        @keyframes slideInUp {
            from {
                transform: translateY(-50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .logo img {
            max-width: 150px;
            height: auto;
        }

        /* Title styles */
        h1 {
            color: #333;
            font-size: 36px;
            margin-bottom: 10px;
            animation: fadeInDown 0.5s ease;
        }

        @keyframes fadeInDown {
            from {
                transform: translateY(-50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        /* Message styles */
        p {
            color: #666;
            font-size: 18px;
            margin-bottom: 20px;
            animation: fadeIn 0.5s ease;
        }

        /* Button styles */
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ff862f;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            animation: slideInUp 0.5s ease;
        }

        .btn:hover {
            background-color: #ff862f;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">
            <img src="https://remediovet.com/assets/images/logo.png" alt="logo" style="max-width: 200px;">
        </div>
        <h1>404 - Page Not Found</h1>
        <p>Sorry, the page you are looking for could not be found.</p>
        <a href="{{ url('/') }}" class="btn">Go to Homepage</a>
    </div>
</body>
</html>
