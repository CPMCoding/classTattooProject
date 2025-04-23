<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Business.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Account Information Page</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #ffffff;
            display: flex;
            height: 100vh;
        }

        .sidebar {
            width: 200px;
            background-color: #1f1f1f;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            position: fixed;
        }

        .logo {
            width: 100px;
            height: 100px;
            margin-bottom: 10px;
        }

        .logo img {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            object-fit: cover;
        }

        .title {
            font-family: 'Rye', cursive;
            font-size: 22px;
            color: #ff6f61;
            text-align: center;
            margin-bottom: 30px;
        }

        .nav {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .nav a {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #333;
            border-radius: 10px;
            padding: 10px;
            color: white;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .nav a:hover {
            background-color: #ff6f61;
            transform: scale(1.05);
        }

        .nav a img {
            width: 60px;
            height: auto;
        }

        .main-content {
            margin-left: 220px;
            padding: 30px;
            flex: 1;
        }

        h1, h5 {
            color: #ff6f61;
        }

        table {
            width: 100%;
            background-color: #1f1f1f;
            border-collapse: collapse;
            margin-top: 20px;
            margin-bottom: 40px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #444;
        }

        thead {
            font-weight: bold;
            background-color: #333333;
            color: #ff6f61;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            background-color: #222;
            color: #fff;
            border: 1px solid #555;
            border-radius: 5px;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #ff6f61;
            color: white;
            padding: 10px 20px;
            border: none;
            margin-top: 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #ff3b2f;
        }
    </style>
</head>
<body>

<jsp:useBean id="c1" scope="session" class="Business.Customers" />

<div class="sidebar">
    <div class="logo">
        <img src="img/logo.png" alt="Logo">
    </div>
    <div class="title">INKREDIBLE</div>
    <nav class="nav">
        <a href="index.html">
            <img src="img/menuHome.png" alt="Home" title="Home">
        </a>
        <a href="customerAccountDetails.jsp">
            <!-- <img src="customerAccountDetails.png" alt="Account Details" title="Account Details"> -->
            <span>Account Details</span>
        </a>
    </nav>
</div>

<div class="main-content">
    <h1>View and Edit Your Account Information</h1>

    <table>
        <thead>
            <tr><th colspan="2">Current Account Info</th></tr>
        </thead>
        <tbody>
            <tr><td>Username:</td><td><%= c1.getCID() %></td></tr>
            <tr><td>Password:</td><td><%= c1.getCPW() %></td></tr>
            <tr><td>First Name:</td><td><%= c1.getCFN() %></td></tr>
            <tr><td>Last Name:</td><td><%= c1.getCLN() %></td></tr>
            <tr><td>Email:</td><td><%= c1.getCEM() %></td></tr>
        </tbody>
    </table>

    <h5>NOTICE: To see any changes you will need to re-log!</h5>

    <form id="edit" action="UpdateCustomerServlet" method="post">
        <table>
            <thead>
                <tr><th colspan="2">Edit Your Info</th></tr>
            </thead>
            <tbody>
<!--                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="cutb" value="<%= c1.getCID() %>" placeholder="Username..."></td>
                </tr>-->
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="dptb" value="<%= c1.getCPW() %>" placeholder="Password..."></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td><input type="text" name="dftb" value="<%= c1.getCFN() %>" placeholder="First Name..."></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><input type="text" name="dltb" value="<%= c1.getCLN() %>" placeholder="Last Name..."></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="detb" value="<%= c1.getCEM() %>" placeholder="Email..."></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit Change"></td>
                    <td><input type="reset" value="Clear"></td>
                </tr>
            </tbody>
        </table>
    </form>
</div>

</body>
</html>
