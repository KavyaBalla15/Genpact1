<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Failed</title>
    <style>
        body {
            background-color: #ffe6e6; /* Light red background for failure */
            font-family: 'Arial', sans-serif;
            text-align: center;
            color: #333;
        }
        .container {
            margin-top: 100px;
        }
        .message {
            background-color: #ffffff; /* White background */
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            display: inline-block;
        }
        .message h1 {
            color: #d32f2f; /* Red for heading */
            margin-bottom: 20px;
        }
        .message p {
            font-size: 18px;
            margin-bottom: 30px;
        }
        .button {
            padding: 12px 24px;
            background: linear-gradient(135deg, #ff7b7b, #ff5252); /* Gradient with red shades */
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 18px;
            transition: background 0.3s, transform 0.3s, box-shadow 0.3s;
        }
        .button:hover {
            background: linear-gradient(135deg, #ff5252, #ff7b7b); /* Reversed gradient on hover */
            transform: scale(1.05); /* Slightly enlarges button on hover */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Enhanced shadow on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">
            <h1>Registration Failed ❌</h1>
            <p>There was an issue with your registration. Please try again.</p>
            <a href="AdminDashboard.jsp" class="button">Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
