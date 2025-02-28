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
        }

        .sidebar {
            width: 200px;
            background-color: black;
            padding: 20px;
            position: fixed;
            height: 100%;
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
            margin-left: 220px;
            padding: 20px;
        }

        .artist-box {
            margin-bottom: 30px;
            padding: 20px;
            background-color: #222;
            border-radius: 10px;
        }

        .artist-box h2 {
            margin: 0 0 10px;
            font-size: 24px;
        }

        .artist-box p {
            margin: 10px 0;
        }

        .slideshow-container {
            position: relative;
            width: 100%;
            max-width: 500px;
            margin: auto;
        }

        .slides {
            display: none;
        }

        .slides img {
            width: 100%;
            border-radius: 10px;
        }

        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            padding: 10px;
            color: white;
            font-size: 18px;
            background-color: rgba(0, 0, 0, 0.5);
            border: none;
            border-radius: 5px;
        }

        .prev {
            left: 0;
        }

        .next {
            right: 0;
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
            <a href="home.jsp"><img src="img/menuHome.png" alt="Home" title="Home"></a>
            <a href="design.jsp"><img src="img/menuDesigns.png" alt="Designs" title="Designs"></a>
            <a href="artists.jsp"><img src="img/menuArtists.png" alt="Artists" title="Artists"></a>
            <a href="schedule.jsp"><img src="img/menuSchedule.png" alt="Schedule" title="Schedule"></a>
            <a href="reviews.jsp"><img src="img/menuReviews.png" alt="Reviews" title="Reviews"></a>
        </nav>
    </div>

    <div class="content">
        <h1>Artists</h1>
        <p>Meet our talented tattoo artists who bring your visions to life with their expertise and creativity.</p>

        <!-- Artist 1 -->
        <div class="artist-box">
            <h2>Jose Garcia</h2>
            <p>Specialization: Realism Tattoos & Geometric Tattoos
                Jose is a master of hyper-realistic designs, turning ideas into lifelike art.
                With a keen eye for detail, he excels at crafting geometric patterns that captivate with their symmetry and precision. 
                His works are a blend of technical expertise and artistic flair.</p>
            <div class="slideshow-container">
                <div class="slides">
                    <img src="img/artist1_1.jpg" alt="Artist 1 Picture 1">
                </div>
                <div class="slides">
                    <img src="img/artist1_2.jpg" alt="Artist 1 Picture 2">
                </div>
                <div class="slides">
                    <img src="img/artist1_3.jpg" alt="Artist 1 Picture 3">
                </div>
                <div class="slides">
                    <img src="img/artist1_4.jpg" alt="Artist 1 Picture 4">
                </div>
                <div class="slides">
                    <img src="img/artist1_5.jpg" alt="Artist 1 Picture 5">
                </div>
                <button class="prev" onclick="plusSlides(-1)">❮</button>
                <button class="next" onclick="plusSlides(1)">❯</button>
            </div>
        </div>
        <!-- Artist 2 -->
        <div class="artist-box">
            <h2>John Licata</h2>
            <p>Specialization: Realism Tattoos & Watercolor Tattoos
                John combines the precision of realism with the creativity of 
                watercolor techniques. His designs are known for their depth, 
                vibrancy, and emotional impact, offering clients truly unique and memorable tattoos.</p>
            <div class="slideshow-container">
                <div class="slides">
                    <img src="img/artist2_1.jpg" alt="Artist 2 Picture 1">
                </div>
                <div class="slides">
                    <img src="img/artist2_2.jpg" alt="Artist 2 Picture 2">
                </div>
                <div class="slides">
                    <img src="img/artist2_3.jpg" alt="Artist 2 Picture 3">
                </div>
                <div class="slides">
                    <img src="img/artist2_4.jpg" alt="Artist 2 Picture 4">
                </div>
                <div class="slides">
                    <img src="img/artist2_5.jpg" alt="Artist 2 Picture 5">
                </div>
                <button class="prev" onclick="plusSlides(-1)">❮</button>
                <button class="next" onclick="plusSlides(1)">❯</button>
            </div>
        </div>
        <!-- Artist 3 -->
        <div class="artist-box">
            <h2>Martin Christopher</h2>
            <p>Specialization: Traditional Tattoos & Minimalist Tattoos
                Martin’s bold, vibrant traditional designs celebrate the roots of tattoo art, 
                while his minimalist pieces reflect a modern and understated elegance. 
                His versatility makes him a sought-after artist for clients seeking timeless or contemporary tattoos.</p>
            <div class="slideshow-container">
                <div class="slides">
                    <img src="img/artist3_1.jpg" alt="Artist 3 Picture 1">
                </div>
                <div class="slides">
                    <img src="img/artist3_2.jpg" alt="Artist 3 Picture 2">
                </div>
                <div class="slides">
                    <img src="img/artist3_3.jpg" alt="Artist 3 Picture 3">
                </div>
                <div class="slides">
                    <img src="img/artist3_4.jpg" alt="Artist 3 Picture 4">
                </div>
                <div class="slides">
                    <img src="img/artist3_5.jpg" alt="Artist 3 Picture 5">
                </div>
                <button class="prev" onclick="plusSlides(-1)">❮</button>
                <button class="next" onclick="plusSlides(1)">❯</button>
            </div>
        </div>
        <!-- Artist 4 -->
        <div class="artist-box">
            <h2>Touchstone Bryce</h2>
            <p>Specialization: Watercolor Tattoos & Minimalist Tattoos
                Bryce’s delicate touch and artistic sensibility shine in his watercolor tattoos,
                which mimic the fluidity of paint. His minimalist designs highlight clean lines
                and simplicity, making each tattoo feel like a personal statement.</p>
            <div class="slideshow-container">
                <div class="slides">
                    <img src="img/artist4_1.jpg" alt="Artist 4 Picture 1">
                </div>
                <div class="slides">
                    <img src="img/artist4_2.jpg" alt="Artist 4 Picture 2">
                </div>
                <div class="slides">
                    <img src="img/artist4_3.jpg" alt="Artist 4 Picture 3">
                </div>
                <div class="slides">
                    <img src="img/artist4_4.jpg" alt="Artist 4 Picture 4">
                </div>
                <div class="slides">
                    <img src="img/artist4_5.jpg" alt="Artist 4 Picture 5">
                </div>
                <button class="prev" onclick="plusSlides(-1)">❮</button>
                <button class="next" onclick="plusSlides(1)">❯</button>
            </div>
        </div>
        <!-- Artist 5 -->
        <div class="artist-box">
            <h2>Jose Alexis</h2>
            <p>Specialization: Traditional Tattoos & Geometric Tattoos
                Jose Alexis creates bold traditional tattoos with a modern twist and is also 
                renowned for intricate geometric designs. His work reflects a deep appreciation
                for symmetry, history, and vibrant storytelling.
            </p>
            <div class="slideshow-container">
                <div class="slides">
                    <img src="img/artist5_1.jpg" alt="Artist 5 Picture 1">
                </div>
                <div class="slides">
                    <img src="img/artist5_2.jpg" alt="Artist 5 Picture 2">
                </div>
                <div class="slides">
                    <img src="img/artist5_3.jpg" alt="Artist 5 Picture 3">
                </div>
                <div class="slides">
                    <img src="img/artist5_4.jpg" alt="Artist 5 Picture 4">
                </div>
                <div class="slides">
                    <img src="img/artist5_5.jpg" alt="Artist 5 Picture 5">
                </div>
                <button class="prev" onclick="plusSlides(-1)">❮</button>
                <button class="next" onclick="plusSlides(1)">❯</button>
            </div>
        </div>

        
    </div>

    <script>
        let slideIndex = 0;
        showSlides();

        function plusSlides(n) {
            slideIndex += n;
            showSlides();
        }

        function showSlides() {
            const slides = document.querySelectorAll(".slides");
            slides.forEach(slide => slide.style.display = "none");
            slideIndex = (slideIndex + slides.length) % slides.length;
            slides[slideIndex].style.display = "block";
        }
    </script>
</body>
</html>
