<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Account Created Successfully</title>
      <link rel="icon" href="favicon.ico" type="image/x-icon">
    <style>
        body { 
            font-family: Arial, sans-serif; 
            text-align: center; 
            background-color: #121212;
            color: white;
        }
        .sidebar {
            width: 200px;
            background-color: #1f1f1f;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start; 
            height: 100vh;
            position: fixed;
        }


        .logo {
            width: 120px;
            height: 120px;
            margin-bottom: 10px;
        }

        .logo img {
            width: 100%;

        }

        .title {
            font-family: 'Rye', cursive;
            font-size: 24px;
            text-align: center;
            color: #ff6f61;
            margin-bottom: 20px;
        }

        .nav {
            display: flex;
            flex-direction: column;
            gap: 20px;
            width: 100%;
            align-items: center;
        }

        .nav a {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #333333;
            border-radius: 10px;
            padding: 15px;
            color: white;
            text-decoration: none;
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

        .nav a:hover {
            background-color: #ff6f61;
            color: black;
            border: 2px solid #ff6f61;
            box-shadow: 0 0 10px #ff6f61;
            transform: scale(1.05);
        }

        .nav a img {
            width: 60px;
            height: auto;
        }

        .nav a span {
            margin-top: 8px;
            font-size: 14px;
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
            border-radius: 10px;
            overflow: hidden;
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
            text-transform: uppercase;
            font-weight: bold;
            letter-spacing: 1px;
        }

        tr:nth-child(even) {
            background-color: #2c2c2c;
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

        form {
            margin-bottom: 30px;
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
        
        table { 
            width: 80%; 
            margin: auto; 
            border-collapse: collapse; 
            background-color: #1e1e1e;
            border-radius: 10px;
            overflow: hidden;
        }
        th, td { 
            padding: 15px; 
            border: 1px solid #333; 
        }
        th { 
            background-color: #333; 
            color: white; 
        }
        td { 
            color: #ddd;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <div class="logo">
            <a href="index.html">
                    <img src="img/logo.png" alt="Logo">
                </a>
        </div>
        <div class="title">INKREDIBLE</div>
        <nav class="nav">
                <a href="index.html">
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
    <h1>Customer account created successfully!</h1>
    <p>To sign in, please log in from <a href="customerLogin.jsp">here</a>.</p>
</body>
</html>