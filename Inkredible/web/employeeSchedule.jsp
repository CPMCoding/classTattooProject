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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee schedule</title>
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
            background-color: black;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
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
        }

        .nav {
            display: flex;
            flex-direction: column;
            gap: 10px;
            font-family: 'Rye', cursive;
        }

        .nav a {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: black;
            border-radius: 5px;
            cursor: pointer;
            padding: 10px;
            text-align: center;
        }

        .nav a:hover {
            background-color: #333;
        }

        .nav a img {
            width: 85px;
            height: 30px;
        }

        .content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            position: relative;
        }

        .text {
            text-align: center;
            max-width: 600px;
        }

        .image img {
            width: 100%;
            height: auto;
            position: absolute;
            right: 0;
            top: 0;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <div class="logo">
            <img src="logo.png" alt="Logo">
        </div>
        <div class="title">INKREDIBLE</div>
        <nav class="nav">
            <a href="adminHomePage.jsp">
                <img src="menuHome.png" alt="adminHome" title="Admin Home Page">
            </a>
        </nav>
    </div>

    <div class="image">
        <img src="background3.png" alt="Background" title="Background">
    </div>
    <jsp:useBean id="s1" scope="session" class="Business.Schedule"/>
    <% System.out.println("session created s1: " + s1.getSArtID() ); %>
    <h3>This is the current schedule</h3>
                    <tr>
                        <td>Username: </td>
                        <td><%= s1.getSArtID() %></td>
                    </tr>
                    <tr>
                        <td>Monday: </td>
                        <td><%= s1.getMON() %></td>
                    </tr>
                    <tr>
                        <td>Tuesday: </td>
                        <td><%= s1.getTUES() %></td>
                    </tr>
                    <tr>
                        <td>Wednesday: </td>
                        <td><%= s1.getWED() %></td>
                    </tr>
                    <tr>
                        <td>Thursday: </td>
                        <td><%= s1.getTHUR() %></td>
                    </tr>
                    <tr>
                        <td>Friday: </td>
                        <td><%= s1.getFRI() %></td>
                    </tr>
                    <tr>
                        <td>Saturday: </td>
                        <td><%= s1.getSAT() %></td>
                    </tr>
                    <tr>
                        <td>Sunday: </td>
                        <td><%= s1.getSUN() %></td>
                    </tr>
    <h3>Employee Schedule Search</h3>
        <form action="updateSchedule" method="post">  
            <h3>Change Employee Schedule</h3>
            <p>Username</p>
            <input type="text" name= "usID" id= "usID" class= "input-field" placeholder= "Username" required>
            <p>Monday</p>
            <input type="text" name= "usMON" id= "usMON" class= "input-field" placeholder= "True/False" required>
            <p>Tuesday</p>
            <input type="text" name= "usTUES" id= "usTUES" class= "input-field" placeholder= "True/False" required>
            <p>Wednesday</p>
            <input type="text" name= "usWED" id= "usWED" class= "input-field" placeholder= "True/False" required>
            <p>Thursday</p>
            <input type="text" name= "usTHUR" id= "usTHUR" class= "input-field" placeholder= "True/False" required>
            <p>Friday</p>
            <input type="text" name= "usFRI" id= "usFRI" class= "input-field" placeholder= "True/False" required>
            <p>Saturday</p>
            <input type="text" name= "usSAT" id= "usSAT" class= "input-field" placeholder= "True/False" required>
            <p>Sunday</p>
            <input type="text" name= "usSUN" id= "usSUN" class= "input-field" placeholder= "True/False" required>
            
            <button type="submit" class="login-btn">Update</button>
            <button type="reset" class="login-btn">Clear</button>
        </form>
    
</body>
</html>
<!ADMIN HOME PAGE. USING ARTIST.JSP AS A BASE>
<!Search button needs ot be fixed to where it seearches update needs to be tested>