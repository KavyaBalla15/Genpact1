<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modify Customer Account</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #e6e6fa, #d1c4e9); /* Lavender to light violet gradient */
            margin: 0;
            font-family: 'Arial', sans-serif;
        }
        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff; /* White background for the form */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }
        .input-group {
            margin-bottom: 15px;
        }
        .input-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 16px; /* Consistent font size */
            color: #6a1b9a; /* Violet for the label */
        }
        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #d1c4e9; /* Light violet border */
            border-radius: 5px; /* Rounded corners */
            font-size: 16px; /* Larger font size for input */
            box-sizing: border-box;
        }
        .input-group input:focus {
            border-color: #b388eb; /* Slightly darker violet on focus */
            outline: none;
        }
        .button {
            display: inline-block;
            background-color: #9c27b0; /* Violet button */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px; /* Consistent font size */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #8e24aa; /* Darker violet on hover */
        }
        h2 {
            text-align: center;
            color: #6a1b9a; /* Violet for the heading */
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form action="FetchCustomerServlet" method="post">
        <h2>Enter Account Number to Modify</h2>
        <div class="input-group">
            <label for="accountno">Account Number</label>
            <input type="text" id="accountno" name="accountno" required>
        </div>
        <input type="submit" value="Fetch Details" class="button">
    </form>
</body>
</html>
