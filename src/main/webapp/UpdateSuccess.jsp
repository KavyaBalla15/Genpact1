<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Success</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #D1C4E9 0%, #EDE7F6 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
            background-color: #FFFFFF;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .tick {
            font-size: 60px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        .message {
            color: #4CAF50;
            font-size: 20px;
            margin-bottom: 20px;
        }
        .details {
            font-size: 16px;
            margin-top: 10px;
            margin-bottom: 20px;
        }
        .button {
            background-color: #9575CD;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
        }
        .button:hover {
            background-color: #7E57C2;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="tick">✔</div>
        <div class="message">Customer details updated successfully!</div>
        <a href="AdminDashboard.jsp" class="button">Back to Dashboard</a>
    </div>
</body>
</html>
