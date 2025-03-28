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
        <form id="edit" action="updateSchedule">
            <table border="3">
                <thead>Use the form below to change the employees schedule: </thead>
                <tr>
                    <td>Username: </td>
                    <td><input type="text" name="usID" value="<jsp:getProperty name="s1" property="SArtID" />" placeholder="Username..." </td>
                </tr>
                <tr>
                    <td>Monday: </td>
                    <td><input type="text" name="usMON" value="<jsp:setProperty name="s1" property="MON" />" placeholder="True/False" </td>
                </tr>
                <tr>
                    <td>Tuesday: </td>
                    <td><input type="text" name="usTUES" value="<jsp:setProperty name="s1" property="TUES" />" placeholder="True/False" </td>
                </tr>
                <tr>
                    <td>Wednesday: </td>
                    <td><input type="text" name="usWED" value="<jsp:setProperty name="s1" property="WED" />" placeholder="True/False" </td>
                </tr>
                <tr>
                    <td>Thursday: </td>
                    <td><input type="text" name="usTHUR" value="<jsp:setProperty name="s1" property="THUR" />" placeholder="True/False" </td>
                </tr>
                <tr>
                    <td>Friday: </td>
                    <td><input type="text" name="usFRI" value="<jsp:setProperty name="s1" property="FRI" />" placeholder="True/False" </td>
                </tr>
                <tr>
                    <td>Saturday: </td>
                    <td><input type="text" name="usSAT" value="<jsp:setProperty name="s1" property="SAT" />" placeholder="True/False" </td>
                </tr>
                <tr>
                    <td>Sunday: </td>
                    <td><input type="text" name="usSUN" value="<jsp:setProperty name="s1" property="SUN" />" placeholder="True/False" </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit" /></td>
                    <td><input type="reset" value="Clear" /></td>
                </tr>
            </table>
        </form>
    
</body>
</html>
<!ADMIN HOME PAGE. USING ARTIST.JSP AS A BASE>
<!Search button needs ot be fixed to where it seearches update needs to be tested>