<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom right, #a2c2e6, #7ed1e6); /* Double shades of blue gradient */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative;
            overflow: hidden;
        }
        .dashboard-container {
            background: #ffffff; /* White Background */
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            max-width: 900px;
            width: 100%;
            text-align: center;
            position: relative;
            z-index: 1;
        }
        .dashboard-container::before {
            content: '';
            position: absolute;
            top: -20px;
            left: -20px;
            width: calc(100% + 40px);
            height: calc(100% + 40px);
            border-radius: 20px;
            background: rgba(173, 216, 230, 0.3); /* Light Blue Overlay */
            z-index: -1;
            filter: blur(20px);
        }
        .header {
            margin-bottom: 30px;
        }
        .header h1 {
            color: #ff69b4; /* Hot Pink */
            font-size: 36px;
            margin: 0;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        }
        .button-container {
            display: flex;
            flex-direction: row; /* Horizontal layout */
            justify-content: center;
            gap: 20px; /* Space between buttons */
            flex-wrap: nowrap; /* Ensure buttons stay in a single line */
        }
        .button {
            display: inline-block;
            padding: 15px 30px;
            background: linear-gradient(135deg, #ffb6c1, #ff69b4); /* Gradient Pink */
            color: #ffffff;
            text-decoration: none;
            border-radius: 25px;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.3s, box-shadow 0.3s;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            text-align: center;
            font-weight: bold;
        }
        .button:hover {
            background: linear-gradient(135deg, #ff69b4, #ffb6c1); /* Inverted Gradient Pink */
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }
        .logout-button {
            position: fixed;
            top: 20px;
            right: 20px;
            background: #ff8c94; /* Light Coral */
            padding: 12px 24px;
            border-radius: 25px;
            color: #ffffff;
            text-decoration: none;
            transition: background-color 0.3s, transform 0.3s;
            font-size: 14px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            font-weight: bold;
        }
        .logout-button:hover {
            background: #ff6f6f; /* Coral */
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <a href="LogoutServlet" class="button logout-button">Logout</a>
    <div class="dashboard-container">
        <div class="header">
            <h1>Admin Dashboard</h1>
        </div>
        <div class="button-container">
            <a href="CustomerRegistration.jsp" class="button">Customer Registration</a>
            <a href="ModifyAccount.jsp" class="button">Modify Account</a>
            <a href="DeleteAccount.jsp" class="button">Delete Account</a>
            <a href="CustomerDetails" class="button">Customer Details</a>
        </div>
    </div>
</body>
</html>
