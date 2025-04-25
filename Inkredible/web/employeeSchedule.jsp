<!ADMIN HOME PAGE. USING ARTIST.JSP AS A BASE>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@page import="Business.*"%>
<%@ page import="Business.Artists"%>
<%@ page import="Business.Schedule"%>
<%@ page import="Business.ScheduleList"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee schedule</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: black;
            color: white;
            display: flex;
            height: 100vh;
            overflow: hidden;
        }

        .sidebar {
            width: 200px;
            background-color: #111;
            padding: 20px;
            position: fixed;
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .logo img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
        }

        .title {
            font-family: 'Rye', cursive;
            font-size: 20px;
            margin: 15px 0;
            text-align: center;
            color: #ff6f61;
        }

        .nav {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .nav a {
            text-align: center;
            padding: 8px;
            background-color: #222;
            color: white;
            text-decoration: none;
            font-family: 'Rye', cursive;
            border-radius: 5px;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .nav a:hover {
            background-color: #333;
        }

        .content-container {
            margin-left: 220px;
            padding: 20px;
            flex: 1;
            overflow-y: auto;
        }

        h3 {
            font-size: 18px;
            color: #ff6f61;
        }

        .currentSchedule {
            background-color: #222;
            border-radius: 5px;
            padding: 15px;
            margin-bottom: 20px;
        }

        .currentSchedule table {
            width: 100%;
            border-collapse: collapse;
        }

        .currentSchedule td {
            padding: 10px;
            border: 1px solid #444;
        }

        form {
            background-color: #222;
            padding: 15px;
            border-radius: 5px;
        }

        form p {
            margin: 8px 0 5px;
            font-size: 14px;
            font-weight: bold;
        }

        .input-field {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #555;
            border-radius: 4px;
            background-color: #333;
            color: white;
            font-size: 14px;
        }

        .login-btn {
            padding: 8px 12px;
            background-color: #ff6f61;
            border: none;
            border-radius: 4px;
            color: white;
            font-weight: bold;
            font-size: 14px;
            cursor: pointer;
            margin-right: 10px;
            transition: background-color 0.3s ease;
        }

        .login-btn:hover {
            background-color: #ff3b2f;
        }

        .image {
            position: fixed;
            bottom: 0;
            right: 0;
            opacity: 0.08;
            z-index: -1;
        }

        .image img {
            max-width: 500px;
        }
    </style>
</head>
<body>

<jsp:useBean id="s1" scope="session" class="Business.Schedule"/>
<% System.out.println("session created s1: " + s1.getSArtID()); %>

<div class="sidebar">
    <div class="logo">
        <img src="img/logo.png" alt="Logo">
    </div>
    <div class="title">INKREDIBLE</div>
    <nav class="nav">
        <a href="adminHomePage.jsp">
            <!-- <img src="menuHome.png" alt="adminHome" title="Admin Home Page"> -->
            <span>Admin Home</span>
        </a>
    </nav>
</div>

<div class="image">
    <img src="background3.png" alt="Background" title="Background">
</div>

<div class="content-container">
    <div class="currentSchedule">
        <h3>This is the current schedule</h3>
        <table>
            <tr><td>Username:</td><td><%= s1.getSArtID() %></td></tr>
            <tr><td>Monday:</td><td><%= s1.getMON() %></td></tr>
            <tr><td>Tuesday:</td><td><%= s1.getTUES() %></td></tr>
            <tr><td>Wednesday:</td><td><%= s1.getWED() %></td></tr>
            <tr><td>Thursday:</td><td><%= s1.getTHUR() %></td></tr>
            <tr><td>Friday:</td><td><%= s1.getFRI() %></td></tr>
            <tr><td>Saturday:</td><td><%= s1.getSAT() %></td></tr>
            <tr><td>Sunday:</td><td><%= s1.getSUN() %></td></tr>
        </table>
    </div>

    <h3>Employee Schedule Search</h3>
    <form action="updateSchedule" method="post">  
        <h3>Change Employee Schedule</h3>
        <p>Username</p>
        <input type="text" name="usID" id="usID" class="input-field" placeholder="Username" required>
        
        <p>Monday</p>
        <input type="text" name="usMON" id="usMON" class="input-field" placeholder="True/False" required>

        <p>Tuesday</p>
        <input type="text" name="usTUES" id="usTUES" class="input-field" placeholder="True/False" required>

        <p>Wednesday</p>
        <input type="text" name="usWED" id="usWED" class="input-field" placeholder="True/False" required>

        <p>Thursday</p>
        <input type="text" name="usTHUR" id="usTHUR" class="input-field" placeholder="True/False" required>

        <p>Friday</p>
        <input type="text" name="usFRI" id="usFRI" class="input-field" placeholder="True/False" required>

        <p>Saturday</p>
        <input type="text" name="usSAT" id="usSAT" class="input-field" placeholder="True/False" required>

        <p>Sunday</p>
        <input type="text" name="usSUN" id="usSUN" class="input-field" placeholder="True/False" required>

        <button type="submit" class="login-btn">Update</button>
        <button type="reset" class="login-btn">Clear</button>
    </form>
</div>

</body>
</html>
<!ADMIN HOME PAGE. USING ARTIST.JSP AS A BASE>
<!Search button needs ot be fixed to where it seearches update needs to be tested>