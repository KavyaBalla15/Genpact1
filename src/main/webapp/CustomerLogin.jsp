<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Login</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #e6e6fa, #d1c4e9); /* Lavender to violet gradient */
            margin: 0;
            font-family: 'Arial', sans-serif;
        }
        .container {
            text-align: center;
            background: #ffffff; /* White background for the container */
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2); /* Enhanced shadow for depth */
            width: 360px;
            border: 1px solid #d1c4e9; /* Light violet border */
            position: relative;
            overflow: hidden;
        }
        .container:before {
            content: '';
            position: absolute;
            top: -15px;
            left: -15px;
            width: calc(100% + 30px);
            height: calc(100% + 30px);
            background: linear-gradient(145deg, #ffffff, #e6e6fa); /* Lavender gradient background */
            border-radius: 15px;
            z-index: -1;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2); /* Double shading effect */
        }
        h1 {
            color: #6a1b9a; /* Violet text */
            font-size: 28px; /* Slightly larger font size */
            margin-bottom: 20px; /* Adjusted margin */
            font-weight: bold;
            letter-spacing: 1px; /* Spaced letters */
        }
        .input {
            display: block;
            margin: 10px auto;
            padding: 12px; /* Adjusted padding */
            font-size: 16px; /* Consistent font size */
            width: calc(100% - 24px); /* Adjusted width */
            border: 2px solid #d1c4e9; /* Light violet border */
            border-radius: 10px; /* More rounded corners */
            box-sizing: border-box;
            transition: border-color 0.3s;
        }
        .input:focus {
            border-color: #b388eb; /* Slightly darker violet on focus */
            outline: none;
        }
        .button {
            display: inline-block;
            margin: 10px auto;
            padding: 12px 24px; /* Increased padding */
            font-size: 16px; /* Consistent font size */
            color: #ffffff;
            background: linear-gradient(135deg, #9c27b0, #7b1fa2); /* Violet gradient */
            border: none;
            border-radius: 10px; /* Rounded button */
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .button:hover {
            background: linear-gradient(135deg, #8e24aa, #6a1b9a); /* Darker violet gradient on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Customer Login</h1>
        <form action="CustomerServlet" method="post">
            <input type="text" name="accountNumber" placeholder="Account Number" class="input" required>
            <input type="password" name="password" placeholder="Password" class="input" required>
            <input type="submit" value="Login" class="button">
        </form>
    </div>
</body>
</html>
