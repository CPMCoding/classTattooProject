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
    <h1>Customer account created successfully!</h1>
    <p>To sign in, please log in from <a href="customerLogin.jsp">here</a>.</p>
</body>
</html>