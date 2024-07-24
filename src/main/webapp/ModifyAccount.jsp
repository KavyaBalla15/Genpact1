<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modify Customer Account</title>
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
            padding: 15px 20px;
            width: 100%;
            max-width: 400px;
            box-sizing: border-box;
        }
        h2 {
            color: #6A1B9A;
            text-align: center;
            font-size: 20px;
        }
        .input-group {
            margin-bottom: 10px;
        }
        .input-group label {
            display: block;
            margin-bottom: 3px;
            color: #6A1B9A;
            font-size: 14px;
        }
        .input-group input {
            width: calc(100% - 16px);
            padding: 8px;
            border: 2px solid #B39DDB;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }
        .button {
            background-color: #9575CD;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            display: block;
            width: 100%;
            margin-top: 10px;
        }
        .button:hover {
            background-color: #7E57C2;
        }
        .message {
            color: #E57373;
            text-align: center;
            margin-bottom: 10px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>📝 Modify Customer Account</h2>
        <form action="UpdateCustomerServlet" method="post">
            <c:if test="${not empty message}">
                <div class="message">${message}</div>
            </c:if>
            <div class="input-group">
                <label for="accountno">Account Number</label>
                <input type="text" id="accountno" name="accountno" value="${customer.AccountNo}" readonly>
            </div>
            <div class="input-group">
                <label for="fullname">Full Name</label>
                <input type="text" id="fullname" name="fullname" value="${customer.FullName}">
            </div>
            <div class="input-group">
                <label for="address">Address</label>
                <input type="text" id="address" name="address" value="${customer.Address}">
            </div>
            <div class="input-group">
                <label for="phono">Phone</label>
                <input type="text" id="phono" name="phono" value="${customer.PhoneNo}">
            </div>
            <div class="input-group">
                <label for="emailid">Email ID</label>
                <input type="email" id="emailid" name="emailid" value="${customer.EmailId}">
            </div>
            <div class="input-group">
                <label for="dob">Date of Birth</label>
                <input type="text" id="dob" name="dob" value="${customer.DateOfBirth}">
            </div>
            <div class="input-group">
                <label for="accounttype">Account Type</label>
                <input type="text" id="accounttype" name="accounttype" value="${customer.AccountType}">
            </div>
            <div class="input-group">
                <label for="idProof">ID Proof</label>
                <input type="text" id="idProof" name="idProof" value="${customer.IdProof}">
            </div>
            <input type="submit" value="Update" class="button">
        </form>
    </div>
</body>
</html>
