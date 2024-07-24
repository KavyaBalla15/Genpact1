<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Customer Account</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #D1C4E9 0%, #EDE7F6 100%);
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #FFFFFF;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px 30px;
            width: 300px;
            text-align: center;
        }
        h2 {
            color: #6A1B9A;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 2px solid #B39DDB;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #9575CD;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 15px;
        }
        input[type="submit"]:hover {
            background-color: #7E57C2;
        }
        .feedback {
            margin-top: 15px;
            color: #E57373;
        }
    </style>
    <script>
        function validateForm() {
            var accountNo = document.getElementById("AccountNo").value;
            if (accountNo.trim() === "" || isNaN(accountNo) || accountNo <= 0) {
                alert("Please enter a valid positive account number.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>🗑️ Delete Customer Account</h2>
        <form action="AccountDeletionServlet" method="post" onsubmit="return validateForm()">
            <label for="AccountNo">Account No:</label>
            <input type="text" id="AccountNo" name="AccountNo" required>
            <input type="submit" value="Delete">
        </form>
        
        <!-- Display feedback messages -->
        <div class="feedback">
            <% if (request.getAttribute("status") != null) { %>
                <p><%= request.getAttribute("status") %></p>
            <% } %>
        </div>
    </div>
</body>
</html>
