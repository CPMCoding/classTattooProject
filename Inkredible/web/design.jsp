<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Designs</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: black;
            color: white;
            display: flex;
            height: 100vh;
            overflow-y: auto;
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
            padding: 20px;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        .design-slot {
            background-color: #333;
            border-radius: 8px;
            padding: 20px;
            width: 300px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);
        }

        .design-slot img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .design-slot h2 {
            margin-top: 10px;
            font-size: 20px;
            color: #d35400;
        }

        .design-slot p {
            font-size: 14px;
            margin: 10px 0;
            color: #ddd;
        }

        .design-slot .artists {
            font-size: 12px;
            color: #aaa;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <div class="logo">
            <a href="index.html">
            <img src="logo.png" alt="Logo">
            </a>
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
        </nav>
    </div>

    <div class="content">
        <!-- Design Slot 1 -->
        <div class="design-slot">
            <img src="placeholder1.jpg" alt="Realism Tattoo">
            <h2>Realism Tattoos</h2>
            <p>Hyper-realistic designs that bring your vision to life.</p>
            <div class="artists">Artists: Jose Garcia, John Licata</div>
        </div>

        <!-- Design Slot 2 -->
        <div class="design-slot">
            <img src="placeholder2.jpg" alt="Traditional Tattoo">
            <h2>Traditional Tattoos</h2>
            <p>Bold lines and vibrant colors rooted in classic tattoo art.</p>
            <div class="artists">Artists: Martin Christopher, Jose Alexis</div>
        </div>

        <!-- Design Slot 3 -->
        <div class="design-slot">
            <img src="placeholder3.jpg" alt="Watercolor Tattoo">
            <h2>Watercolor Tattoos</h2>
            <p>Delicate and artistic designs inspired by watercolor painting.</p>
            <div class="artists">Artists: John Licata, Touchstone Bryce</div>
        </div>

        <!-- Design Slot 4 -->
        <div class="design-slot">
            <img src="placeholder4.jpg" alt="Geometric Tattoo">
            <h2>Geometric Tattoos</h2>
            <p>Modern designs featuring intricate patterns and symmetry.</p>
            <div class="artists">Artists: Jose Alexis, Jose Garcia</div>
        </div>

        <!-- Design Slot 5 -->
        <div class="design-slot">
            <img src="placeholder5.jpg" alt="Minimalist Tattoo">
            <h2>Minimalist Tattoos</h2>
            <p>Simple, clean, and elegant tattoo designs.</p>
            <div class="artists">Artists: Touchstone Bryce, Martin Christopher</div>
        </div>
    </div>
</body>
</html>
