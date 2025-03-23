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
    <title>Artists</title>
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
            <a href="home.jsp">
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
        </nav>
    </div>

    <div class="content">
        <div class="text">
            <h1>Artists</h1>
            <p>Meet our talented tattoo artists who bring your visions to life with their expertise and creativity.</p>
        </div>
    </div>

    <div class="image">
        <img src="background3.png" alt="Background" title="Background">
    </div>
    
    <h3>New Employee Registration</h3>
        <form action="createArtistServlet" method="post">  
            <p>Username</p>
            <input type="text" name="naID" id = "naID" class="input-field" placeholder="Username" required>
            <p>Password</p>
            <input type="password" name="naPW" id = "naPW" class="input-field" placeholder="Password" required>
            <p>First Name</p>
            <input type="text" name="naFN" id = "naFN" class="input-field" placeholder="First Name" required>
            <p>Last Name</p>
            <input type="text" name="naLN" id = "naLN" class="input-field" placeholder="Last Name" required>
            <p>Email</p>
               <input type="Email" name="naEM" id = "naEM" class="input-field" placeholder="Email" required>
            <p>Style</p>
               <input type="Text" name="naSY" id = "ncSY" class="input-field" placeholder="Style" required>
            <button type="submit" class="login-btn">Create</button>
            <button type="reset" value="Clear"> </button>
        </form>
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
        <form action="searchScheduleServlet" method="post">  
            <p>Username</p>
            <input type="text" name="usID" id = "usID" class="input-field" placeholder="Username" required>
            <p>Monday</p>
            <input type="password" name="usMON" id = "usMON" class="input-field" placeholder="True/False">
            <p>Tuesday</p>
            <input type="text" name="usTUES" id = "usTUES" class="input-field" placeholder="True/False">
            <p>Wednesday</p>
            <input type="text" name="usWED" id = "usWED" class="input-field" placeholder="True/False">
            <p>Thursday</p>
               <input type="Email" name="usTHUR" id = "usTHUR" class="input-field" placeholder="True/False">
            <p>Friday</p>
               <input type="Text" name="usFRI" id = "usFRI" class="input-field" placeholder="True/False">
            <p>Saturday</p>
               <input type="Text" name="usSAT" id = "usSAT" class="input-field" placeholder="True/False">
            <p>Sunday</p>
               <input type="Text" name="usSUN" id = "usSUN" class="input-field" placeholder="True/False">
            <button type="search" class="login-btn">Search</button> 
            
            <button type="reset" value="Clear">Clear</button>
        </form>
        <form action="updateServlet">
            <button type="submit" class="login-btn">Update</button>
        </form>
    
</body>
</html>
<!ADMIN HOME PAGE. USING ARTIST.JSP AS A BASE>
<!Search button needs ot be fixed to where it seearches update needs to be tested>
