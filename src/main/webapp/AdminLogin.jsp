<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
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
            padding: 40px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2); /* Pronounced shadow */
            border-radius: 20px; /* Slightly rounded corners */
            width: 360px;
            border: 1px solid #d1c4e9; /* Light violet border */
            position: relative;
            overflow: hidden;
        }
        .container:before {
            content: '';
            position: absolute;
            top: -20px;
            left: -20px;
            width: calc(100% + 40px);
            height: calc(100% + 40px);
            background: linear-gradient(145deg, #ffffff, #e6e6fa); /* Lavender gradient background */
            border-radius: 20px;
            z-index: -1;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2); /* Double shading effect */
        }
        h1 {
            color: #6a1b9a; /* Violet text */
            font-size: 28px; /* Slightly smaller font size */
            margin-bottom: 20px; /* Reduced margin */
            font-weight: bold;
            letter-spacing: 1px; /* Spaced letters */
        }
        .input {
            display: block;
            margin: 15px 0;
            padding: 12px; /* Adjusted padding */
            font-size: 16px; /* Consistent font size */
            width: calc(100% - 24px); /* Adjusted width */
            border: 2px solid #d1c4e9; /* Light violet border */
            border-radius: 10px; /* Rounded corners */
            box-sizing: border-box;
            transition: border-color 0.3s;
        }
        .input:focus {
            border-color: #b388eb; /* Slightly darker violet on focus */
            outline: none;
        }
        .button {
            display: inline-block;
            margin: 20px 0;
            padding: 12px 24px; /* Adjusted padding */
            font-size: 18px; /* Slightly larger font size */
            color: #ffffff;
            background-color: #9c27b0; /* Violet button */
            border: none;
            border-radius: 10px; /* Rounded button */
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #8e24aa; /* Darker violet on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Admin Login</h1>
        <form action="AdminServlet" method="post">
            <input type="text" name="username" placeholder="Username" class="input" required>
            <input type="password" name="password" placeholder="Password" class="input" required>
            <input type="submit" value="Login" class="button">
        </form>
    </div>
</body>
</html>
