<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deletion Failed</title>
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
        }
        .container {
            background-color: #FFFFFF;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        h1 {
            color: #D32F2F; /* Red color for error messages */
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
            background-color: #9C27B0;
            color: #FFFFFF;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #7B1FA2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Deletion Failed</h1>
        <p>There was an issue deleting the customer account. Please try again later.</p>
        <a href="AdminDashboard.jsp" class="button">Back to Dashboard</a>
    </div>
</body>
</html>
