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
            padding: 15px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 20px;
            overflow-y: auto;
        }

        .welcome {
            background-color: #222;
            padding: 15px;
            border-radius: 5px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
            color: white;
        }

        .welcome h1 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
            color: #ddd;
        }

        h3 {
            font-size: 18px;
            margin: 0 0 10px 0;
        }

        form {
            padding: 15px;
            background-color: #222;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }

        form p {
            margin: 5px 0;
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
            background-color: #444;
            border: none;
            border-radius: 4px;
            color: white;
            font-weight: bold;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: auto;
            margin-right: 10px;
        }

        .login-btn:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <div class="logo">
            <img src="img/logo.png" alt="Logo">
        </div>
        <div class="title">INKREDIBLE</div>
        <nav class="nav">
            <a href="home.jsp">
                <img src="img/menuHome.png" alt="Home" title="Home">
            </a>
            <a href="design.jsp">
                <img src="img/menuDesigns.png" alt="Designs" title="Designs">
            </a>
            <a href="artists.jsp">
                <img src="img/menuArtists.png" alt="Artists" title="Artists">
            </a>
            <a href="schedule.jsp">
                <img src="img/menuSchedule.png" alt="Schedule" title="Schedule">
            </a>
            <a href="reviews.jsp">
                <img src="img/menuReviews.png" alt="Reviews" title="Reviews">
            </a>
        </nav>
    </div>

    <div class="content-container">
        <!-- welcome Section -->
        <div class="welcome">
            <% Admin adm1;
                adm1 = (Admin) session.getAttribute("adm1"); %>
            <h1>Welcome, <%= adm1.getADFN() %>!</h1>
        </div>

        <!-- new Employee Registration Form -->
        <form action="createArtistServlet" method="post">  
            <h3>New Employee Registration</h3>
            <p>Username</p>
            <input type="text" name= "naID" id= "naID" class= "input-field" placeholder= "Username" required>
            <p>Password</p>
            <input type="password" name= "naPW" id= "naPW" class= "input-field" placeholder= "Password" required>
            <p>First Name</p>
            <input type="text" name= "naFN" id= "naFN" class= "input-field" placeholder= "First Name" required>
            <p>Last Name</p>
            <input type="text" name= "naLN" id= "naLN" class= "input-field" placeholder= "Last Name" required>
            <p>Email</p>
            <input type="email" name= "naEM" id= "naEM" class= "input-field" placeholder= "Email" required>
            <p>Style</p>
            <input type="text" name= "naSY" id= "naSY" class= "input-field" placeholder= "Style" required>
            <button type="submit" class="login-btn">Create</button>
            <button type="reset" class="login-btn">Clear</button>
        </form>

        <!-- Employee schedule search form -->
        <form action="searchEmployee" method= "post">
            <h3>Employee Schedule Search</h3>
            <input type= "text" name= "employeeID" class= "input-field" placeholder= "Employee ID" required>
            <button type="submit" class= "login-btn">Search</button>
        </form>
    </div>
</body>
</html>
<!ADMIN HOME PAGE. USING ARTIST.JSP AS A BASE>
<!Search button needs ot be fixed to where it seearches update needs to be tested>