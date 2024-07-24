<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f1fd; /* Lavender background */
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 900px;
            margin: 40px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid #d1c4e9; /* Light violet border */
            padding-bottom: 20px;
            margin-bottom: 30px;
        }
        .header .welcome {
            font-size: 22px;
            color: #6a1b9a; /* Violet color for welcome text */
        }
        .header .logout {
            display: flex;
            align-items: center;
        }
        .header .logout .button {
            background: #9c27b0; /* Violet for logout button */
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s;
        }
        .header .logout .button:hover {
            background: #7b1fa2; /* Darker violet on hover */
        }
        .options {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }
        .option-card {
            background: #f3e5f5; /* Very light lavender for option cards */
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .option-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .option-card a {
            display: block;
            color: #6a1b9a; /* Violet color for links */
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            margin-top: 10px;
            transition: color 0.3s;
        }
        .option-card a:hover {
            color: #4a148c; /* Darker violet on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="welcome">
                Welcome, ${customerName}!<br>
                Account Number: ${accountNumber}
            </div>
            <div class="logout">
                <form action="LogoutServlet" method="post">
                    <input type="submit" value="Log Out" class="button">
                </form>
            </div>
        </div>
        <div class="options">
            <div class="option-card">
                <a href="Deposit.jsp">Deposit</a>
            </div>
            <div class="option-card">
                <a href="Withdraw.jsp">Withdraw</a>
            </div>
            <div class="option-card">
                <a href="ViewTransaction.jsp">View Transactions</a>
            </div>
            <div class="option-card">
                <a href="ViewBalanceServlet">View Current Balance</a>
            </div>
            <div class="option-card">
                <a href="ChangePassword.jsp">Change Password</a>
            </div>
        </div>
    </div>
</body>
</html>
