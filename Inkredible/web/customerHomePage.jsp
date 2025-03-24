<!CUSTOMER HOME PAGE. USING ARTIST.JSP AS A BASE>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Business.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Home</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #ffffff;
            display: flex;
            flex-direction: column;
            height: 100vh;
            overflow: hidden;
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
            margin-bottom: 20px;
        }

        .logo img {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            object-fit: cover;
        }

        .title {
            font-family: 'Rye', cursive;
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
            color: #ff6f61;
        }

        .nav {
            display: flex;
            flex-direction: column;
            gap: 15px;
            width: 100%;
        }

        .nav a {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #333333;
            border-radius: 8px;
            padding: 10px;
            transition: background-color 0.3s;
        }

        .nav a:hover {
            background-color: #555555;
        }

        .nav a img {
            width: 85px;
            height: auto;
        }

        .content {
            margin-left: 220px;
            padding: 20px;
            flex: 1;
            overflow-y: auto;
        }

        h1, h2 {
            color: #ff6f61;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #1f1f1f;
        }

        table, th, td {
            border: 1px solid #444;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #333333;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #444;
            border-radius: 5px;
            background-color: #222;
            color: #fff;
        }

        .login-btn {
            background-color: #ff6f61;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .login-btn:hover {
            background-color: #ff3b2f;
        }

        .image {
            position: fixed;
            bottom: 0;
            right: 0;
            opacity: 0.1;
        }

        .image img {
            max-width: 500px;
            height: auto;
        }

    </style>
</head>
<body>

    <% Customers c1;
       Appointments a1 = new Appointments();

       c1 = (Customers) session.getAttribute("c1");
       a1 = (Appointments) session.getAttribute("a1");

       String custID = c1.getCID();
       a1.selectCustDB(custID); %>

    <div class="sidebar">
        <div class="logo">
            <img src="logo.png" alt="Logo">
        </div>
        <div class="title">INKREDIBLE</div>
        <nav class="nav">
            <a href="index.html">
                <img src="menuHome.png" alt="Home" title="Home">
            </a>
            <a href="design.jsp">
                <img src="menuDesigns.png" alt="Designs" title="Designs">
            </a>
            <a href="artists.jsp">
                <img src="menuArtists.png" alt="Artists" title="Artists">
            </a>
            <a href="schedule.jsp">
                <img src="menuSchedule.png" alt="Schedule" title="Schedule">
            </a>
            <a href="reviews.jsp">
                <img src="menuReviews.png" alt="Reviews" title="Reviews">
            </a>
            <a href="customerAccountDetails.jsp">
                <img src="customerAccountDetails.png" alt="Account Details" title="Account Details">
            </a>
        </nav>
    </div>

    <div class="content">
        <div class="text">
            <h1>Welcome, <%= c1.getCFN() %>!</h1>
            <table>
                <tr>
                    <th>Customer ID</th>
                    <th>Password</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                </tr>
                <tr>
                    <td><%= c1.getCID() %></td>
                    <td><%= c1.getCPW() %></td>
                    <td><%= c1.getCFN() %></td>
                    <td><%= c1.getCLN() %></td>
                    <td><%= c1.getCEM() %></td>
                </tr>
            </table>

            <h2>Update Account Information</h2>
            <form action="CustomerHome" method="post">
                <input type="text" name="pass" id="pass" class="input-field" placeholder="Password">
                <input type="text" name="cFN" id="cFN" class="input-field" placeholder="First Name">
                <input type="text" name="cLN" id="cLN" class="input-field" placeholder="Last Name">
                <input type="text" name="cEM" id="cEM" class="input-field" placeholder="Email">
                <button type="submit" class="login-btn">Update</button>
            </form>

            <h2>Appointment Information</h2>
            <table>
                <tr>
                    <th>Appointment Date & Time</th>
                    <th>Customer ID</th>
                    <th>Artist ID</th>
                    <th>Total Cost</th>
                </tr>
                <tr>
                    <td><%= a1.getADT() %></td>
                    <td><%= a1.getCID() %></td>
                    <td><%= a1.getAID() %></td>
                    <td><%= a1.getTCST() %></td>
                </tr>
            </table>

            <h2>Update Appointment Time</h2>
            <form action="CustomerHome" method="post">
                <input type="text" name="cID" id="cID" class="input-field" placeholder="Customer ID">
                <input type="text" name="aDT" id="aDT" class="input-field" placeholder="Appointment Time">
                <button type="submit" class="login-btn">Update</button>
            </form>
        </div>
    </div>

    <div class="image">
        <img src="background3.png" alt="Background" title="Background">
    </div>

</body>
</html>
<!CUSTOMER HOME PAGE. USING ARTIST.JSP AS A BASE>