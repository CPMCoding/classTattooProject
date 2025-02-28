<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    <div class="content">
        <div class="text">
            <h1>Artists</h1>
            <p>Meet our talented tattoo artists who bring your visions to life with their expertise and creativity.</p>
        </div>
    </div>

    <div class="image">
        <img src="background3.png" alt="Background" title="Background">
    </div>
</body>
</html>
