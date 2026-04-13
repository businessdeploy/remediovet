<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet Relocation Quote Form</title>
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
            <h2>Pet Relocation Quote Form</h2>
        </div>
        <div class="content">
            <div class="field">
                <label>Owner Name:</label>
                <p>{{ $formData->owner_name }}</p>
            </div>
            <div class="field">
                <label>Email:</label>
                <p>{{ $formData->email }}</p>
            </div>
            <div class="field">
                <label>Phone Number:</label>
                <p>{{ $formData->phone_number }}</p>
            </div>
            <div class="field">
                <label>Pet Type:</label>
                <p>{{ $formData->pet_type }}</p>
            </div>
            <div class="field">
                <label>Pet Name:</label>
                <p>{{ $formData->pet_name }}</p>
            </div>
            <div class="field">
                <label>Pet Breed:</label>
                <p>{{ $formData->pet_breed }}</p>
            </div>
            <div class="field">
                <label>Pet Age:</label>
                <p>{{ $formData->pet_age }}</p>
            </div>
            <div class="field">
                <label>Pet Gender:</label>
                <p>{{ $formData->pet_gender }}</p>
            </div>
            <div class="field">
                <label>Origin:</label>
                <p>{{ $formData->origin }}</p>
            </div>
            <div class="field">
                <label>Destination:</label>
                <p>{{ $formData->destination }}</p>
            </div>
        </div>
        
        <div class="footer">
            <p>Thank you for your donation!</p>
        </div>
    </div>
</body>

</html>
