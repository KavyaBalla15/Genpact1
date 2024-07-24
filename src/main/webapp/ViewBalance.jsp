<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Current Balance</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #E1BEE7 0%, #D1C4E9 100%);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            padding: 20px 30px;
            background-color: #FFFFFF;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 400px;
        }
        .header {
            font-size: 26px;
            color: #7B1FA2;
            margin-bottom: 15px;
        }
        .balance {
            font-size: 22px;
            color: #4A148C;
            background-color: #F3E5F5;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 25px;
        }
        .button {
            display: block;
            width: 100%;
            padding: 12px;
            font-size: 18px;
            color: #FFFFFF;
            background-color: #BA68C8;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            text-align: center;
            text-transform: uppercase;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #9C27B0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">Current Balance</div>
        <div class="balance">
            Your current balance is: Rs <%= request.getAttribute("Balance") != null ? request.getAttribute("Balance") : "N/A" %>
        </div>
        <a href="CustomerDashboard.jsp" class="button">Back to Dashboard</a>
    </div>
</body>
</html>
