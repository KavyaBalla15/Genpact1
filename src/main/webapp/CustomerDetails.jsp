<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Details</title>
    <style>
        body {
            background-color: #e6e6fa; /* Lavender background */
            font-family: Arial, sans-serif;
        }
        h2 {
            color: #6a1b9a; /* Deep violet for heading */
            margin-bottom: 20px;
        }
        .search-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .search-container input[type="text"] {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 200px;
            font-size: 16px;
        }
        .search-container input[type="submit"] {
            padding: 10px 20px;
            background: linear-gradient(135deg, #b388eb, #8e2de2); /* Gradient with violet and lavender shades */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s, transform 0.3s, box-shadow 0.3s;
        }
        .search-container input[type="submit"]:hover {
            background: linear-gradient(135deg, #8e2de2, #b388eb); /* Reversed gradient on hover */
            transform: scale(1.05); /* Slightly enlarges button on hover */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Enhanced shadow on hover */
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff; /* White background for the table */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15); /* Enhanced shadow for depth */
            border-radius: 8px; /* Rounded corners for the table */
            overflow: hidden; /* Ensures rounded corners are visible */
        }
        th, td {
            border: 1px solid #ddd; /* Light gray border */
            padding: 12px;
            text-align: left;
        }
        th {
            background: linear-gradient(135deg, #d3a9f3, #b388eb); /* Gradient with lavender and violet shades */
            color: #333;
            font-size: 16px;
        }
        tbody tr:nth-child(odd) {
            background-color: #f3e5f5; /* Very light violet for odd rows */
        }
        tbody tr:nth-child(even) {
            background-color: #ffffff; /* White background for even rows */
        }
        tbody tr:hover {
            background-color: #d1c4e9; /* Light violet on row hover */
        }
        .button {
            display: inline-block;
            padding: 12px 24px;
            background: linear-gradient(135deg, #b388eb, #8e2de2); /* Gradient with violet and lavender shades */
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 18px;
            margin-top: 20px;
            text-align: center;
            transition: background 0.3s, transform 0.3s, box-shadow 0.3s;
        }
        .button:hover {
            background: linear-gradient(135deg, #8e2de2, #b388eb); /* Reversed gradient on hover */
            transform: scale(1.05); /* Slightly enlarges button on hover */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Enhanced shadow on hover */
        }
        .error-message {
            color: #d32f2f; /* Red color for error messages */
            margin: 20px 0;
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">Customer Details</h2>

    <div class="search-container">
        <form action="CustomerDetails" method="get">
            <input type="text" name="search" placeholder="Search by FullName or EmailId" value="${param.search}">
            <input type="submit" value="Search">
        </form>
    </div>

    <c:if test="${not empty error}">
        <div style="text-align: center;" class="error-message">
            <p>${error}</p>
        </div>
    </c:if>

    <c:if test="${not empty param.search}">
        <div style="text-align: center;">
            <p>Search results for: <strong>${param.search}</strong></p>
        </div>
    </c:if>

    <table>
        <thead>
            <tr>
                <th>Full Name</th>
                <th>Address</th>
                <th>PhoneNo</th>
                <th>EmailID</th>
                <th>DateOfBirth</th>
                <th>AccountNo</th>
                <th>AccountType</th>
                <th>IdProof</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="customer" items="${customers}">
                <c:if test="${fn:containsIgnoreCase(customer.fullName, param.search) || fn:containsIgnoreCase(customer.emailId, param.search)}">
                    <tr>
                        <td>${customer.fullName}</td>
                        <td>${customer.address}</td>
                        <td>${customer.phoneNo}</td>
                        <td>${customer.emailId}</td>
                        <td>${customer.dateOfBirth}</td>
                        <td>${customer.accountNo}</td>
                        <td>${customer.accountType}</td>
                        <td>${customer.idProof}</td>
                    </tr>
                </c:if>
            </c:forEach>
        </tbody>
    </table>

    <div style="text-align: center;">
        <a href="AdminDashboard.jsp" class="button">Back to Dashboard</a>
    </div>
</body>
</html>
