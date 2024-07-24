<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Deletion Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #EDE7F6 0%, #D1C4E9 100%);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }
        .container {
            background-color: #FFFFFF;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        h1 {
            color: #4CAF50; /* Green color for success message */
            font-size: 24px;
            margin-bottom: 20px;
        }
        p {
            color: #6A1B9A; /* Lavender color for the message */
            font-size: 16px;
            margin-bottom: 20px;
        }
        .button {
            display: inline-block;
            padding: 12px 25px;
            background: linear-gradient(135deg, #9C27B0, #BA68C8); /* Gradient with violet and lavender shades */
            color: #FFFFFF;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.3s;
        }
        .button:hover {
            background-color: #7B1FA2; /* Slightly darker on hover */
            transform: scale(1.05); /* Slightly enlarges button on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Deletion Successful</h1>
        <p>The customer account has been successfully deleted.</p>
        <a href="AdminDashboard.jsp" class="button">Back to Dashboard</a>
    </div>
</body>
</html>

