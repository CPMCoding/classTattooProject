<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Designs</title>
      <link rel="icon" href="favicon.ico" type="image/x-icon">
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
            height: 100%;
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

        .slide-container {
            position: relative;
            width: 100%;
            height: 200px;
            margin-bottom: 10px;
        }

        .slides {
            display: none;
            width: 100%;
            height: 100%;
        }

        .prev, .next {
            position: absolute;
            top: 50%;
            width: 30px;
            height: 30px;
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            border: none;
            cursor: pointer;
            padding: 10px;
            transform: translateY(-50%);
        }

        .prev {
            left: 10px;
        }

        .next {
            right: 10px;
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

    <div class="content">
        <!-- Design Slot 1 -->
        <div class="design-slot">
            <div class="slide-container">
                <img class="slides" src="img/realismTattoo_1.jpg" alt="Realism Tattoo 1">
                <img class="slides" src="img/realismTattoo_2.jpg" alt="Realism Tattoo 2">
                <img class="slides" src="img/realismTattoo_3.jpg" alt="Realism Tattoo 3">
                <button class="prev" onclick="moveSlide(-1, 0)">&#10094;</button>
                <button class="next" onclick="moveSlide(1, 0)">&#10095;</button>
            </div>
            <h2>Realism Tattoos</h2>
            <p>Hyper-realistic designs that bring your vision to life.</p>
            <div class="artists">Artists: Jose Garcia, John Licata</div>
        </div>

        <!-- Design Slot 2 -->
        <div class="design-slot">
            <div class="slide-container">
                <img class="slides" src="img/traditonal1.jpg" alt="Traditional Tattoo 1">
                <img class="slides" src="img/traditional2.jpg" alt="Traditional Tattoo 2">
                <img class="slides" src="img/traditional3.jpg" alt="Traditional Tattoo 3">
                <button class="prev" onclick="moveSlide(-1, 1)">&#10094;</button>
                <button class="next" onclick="moveSlide(1, 1)">&#10095;</button>
            </div>
            <h2>Traditional Tattoos</h2>
            <p>Bold lines and vibrant colors rooted in classic tattoo art.</p>
            <div class="artists">Artists: Martin Christopher, Jose Alexis</div>
        </div>

        <!-- Design Slot 3 -->
        <div class="design-slot">
            <div class="slide-container">
                <img class="slides" src="img/watercolor1.jpg" alt="Watercolor Tattoo 1">
                <img class="slides" src="img/watercolor2.jpg" alt="Watercolor Tattoo 2">
                <img class="slides" src="img/watercolor3.jpg" alt="Watercolor Tattoo 3">
                <button class="prev" onclick="moveSlide(-1, 2)">&#10094;</button>
                <button class="next" onclick="moveSlide(1, 2)">&#10095;</button>
            </div>
            <h2>Watercolor Tattoos</h2>
            <p>Delicate and artistic designs inspired by watercolor painting.</p>
            <div class="artists">Artists: John Licata, Touchstone Bryce</div>
        </div>

        <!-- Design Slot 4 -->
        <div class="design-slot">
            <div class="slide-container">
                <img class="slides" src="img/geo1.jpg" alt="Geometric Tattoo 1">
                <img class="slides" src="img/geo2.jpg" alt="Geometric Tattoo 2">
                <img class="slides" src="img/geo3.jpg" alt="Geometric Tattoo 3">
                <button class="prev" onclick="moveSlide(-1, 3)">&#10094;</button>
                <button class="next" onclick="moveSlide(1, 3)">&#10095;</button>
            </div>
            <h2>Geometric Tattoos</h2>
            <p>Modern designs featuring intricate patterns and symmetry.</p>
            <div class="artists">Artists: Jose Alexis, Jose Garcia</div>
        </div>

        <!-- Design Slot 5 -->
        <div class="design-slot">
            <div class="slide-container">
                <img class="slides" src="img/min1.png" alt="Minimalist Tattoo 1">
                <img class="slides" src="img/min2.jpg" alt="Minimalist Tattoo 2">
                <img class="slides" src="img/min3.jpg" alt="Minimalist Tattoo 3">
                <button class="prev" onclick="moveSlide(-1, 4)">&#10094;</button>
                <button class="next" onclick="moveSlide(1, 4)">&#10095;</button>
            </div>
            <h2>Minimalist Tattoos</h2>
            <p>Simple, clean, and elegant tattoo designs.</p>
            <div class="artists">Artists: Touchstone Bryce, Martin Christopher</div>
        </div>
    </div>

    <script>
        let slideIndex = [0, 0, 0, 0, 0];
        const slideContainers = document.querySelectorAll('.slide-container');

        function moveSlide(step, slot) {
            const slides = slideContainers[slot].getElementsByClassName('slides');
            slideIndex[slot] += step;
            if (slideIndex[slot] >= slides.length) slideIndex[slot] = 0;
            if (slideIndex[slot] < 0) slideIndex[slot] = slides.length - 1;
            for (let i = 0; i < slides.length; i++) {
                slides[i].style.display = 'none';
            }
            slides[slideIndex[slot]].style.display = 'block';
        }

        // Initialize the slides on page load
        window.onload = () => {
            for (let i = 0; i < slideContainers.length; i++) {
                moveSlide(0, i);
            }
        };
    </script>
       
</body>
</html>
