<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donation Form Submission</title>
    <style>
        /* Reset styles */
        body,
        html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        /* Email layout */
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
            padding-top: 20px;
        }

        .header img {
            max-width: 150px;
            height: auto;
        }

        .header h2 {
            font-size: 24px;
            margin: 5px 0;
            color: #333;
            text-transform: uppercase;
        }

        /* Content styles */
        .content {
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #f9f9f9;
        }

        /* Field styles */
        .field {
            margin-bottom: 15px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
        }

        .field label {
            font-weight: bold;
            color: #555;
        }

        .field p {
            margin: 5px 0;
            color: #333;
        }

        /* Footer styles */
        .footer {
            text-align: center;
            margin-top: 20px;
            color: #666;
            font-size: 14px;
        }

        /* Button styles */
        .button {
            text-align: center;
            margin-top: 20px;
        }

        .button a {
            display: inline-block;
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .button a:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="header">
            <img src="https://remediovet.com/assets/images/logo.png" alt="logo">
            <h2>Donation Form Submission</h2>
        </div>
        <div class="content">
            <div class="field">
                <label>Name:</label>
                <p>{{ $formData->name }}</p>
            </div>
            <div class="field">
                <label>Age:</label>
                <p>{{ $formData->age }}</p>
            </div>
            <div class="field">
                <label>Phone Number:</label>
                <p>{{ $formData->phone_number }}</p>
            </div>
            <div class="field">
                <label>City:</label>
                <p>{{ $formData->city }}</p>
            </div>
            <div class="field">
                <label>Service:</label>
                <p>{{ $formData->service }}</p>
            </div>
        </div>
        <div class="footer">
            <p>Thank you for your donation!</p>
        </div>
    </div>
</body>

</html>
