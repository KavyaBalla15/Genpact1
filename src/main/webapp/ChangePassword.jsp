<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #e6e6fa, #d1c4e9); /* Double-shaded lavender and violet gradient */
            margin: 0;
            font-family: 'Arial', sans-serif;
        }
        .container {
            background: #ffffff; /* White background for the container */
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); /* Enhanced shadow for depth */
            width: 100%;
            max-width: 350px; /* Set a max-width for responsiveness */
        }
        h1 {
            color: #6a1b9a; /* Violet for the heading */
            font-size: 24px;
            margin-bottom: 20px;
        }
        .input {
            display: block;
            margin: 10px auto;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #d1c4e9; /* Light violet border */
            border-radius: 8px;
            width: calc(100% - 24px); /* Adjust width to fit padding */
            box-sizing: border-box;
            transition: border-color 0.3s;
        }
        .input:focus {
            border-color: #b388eb; /* Slightly darker violet on focus */
            outline: none;
        }
        .button {
            display: block;
            margin: 20px auto;
            padding: 12px 24px;
            font-size: 16px;
            color: #fff;
            background-color: #9c27b0; /* Violet for the button */
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            width: 100%;
            box-sizing: border-box;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #8e24aa; /* Darker violet shade on hover */
        }
        .error {
            color: #d32f2f; /* Red color for error messages */
            margin-top: 15px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Change Password</h1>
        <form action="ChangePasswordServlet" method="post">
            <input type="password" name="oldPassword" placeholder="Old Password" class="input" required>
            <input type="password" name="newPassword" placeholder="New Password" class="input" required>
            <input type="password" name="confirmPassword" placeholder="Confirm New Password" class="input" required>
            <input type="submit" value="Change Password" class="button">
        </form>
        <div class="error">
            <%= request.getParameter("error") != null ? request.getParameter("error") : "" %>
        </div>
    </div>
</body>
</html>
