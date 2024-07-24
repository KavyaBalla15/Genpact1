<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Lora:wght@400;500;700&display=swap">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #e6e6fa, #d5c6f1); /* Lavender gradient */
            margin: 0;
            font-family: 'Lora', serif; /* Updated font */
        }
        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
        }
        h1 {
            color: #333;
            margin-bottom: 30px;
            font-size: 28px;
            font-weight: 700;
        }
        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }
        .button {
            padding: 12px 24px;
            font-size: 16px;
            color: #fff;
            background: linear-gradient(135deg, #6a1b9a, #ab47bc);
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            transition: all 0.4s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
        }
        .button:hover {
            background: linear-gradient(135deg, #ab47bc, #6a1b9a);
            transform: translateY(-4px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login Page</h1>
        <div class="button-container">
            <a href="AdminLogin.jsp" class="button">Admin Login</a>
            <a href="CustomerLogin.jsp" class="button">Customer Login</a>
        </div>
    </div>
</body>
</html>
