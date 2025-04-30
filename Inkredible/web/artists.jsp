<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Artists - INKREDIBLE Tattoo Studio</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        :root {
            --primary-color: #ff5e6c;
            --primary-dark: #e04a58;
            --secondary-color: #ffaaab;
            --dark-bg: #121212;
            --darker-bg: #0a0a0a;
            --card-bg: #1e1e1e;
            --card-hover: #2a2a2a;
            --border-color: #333;
            --text-light: #f0f0f0;
            --text-lighter: #ffffff;
            --text-muted: #aaa;
            --shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            --transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
        }
        
        * {
            box-sizing: border-box;
        }
        
        body { 
            font-family: 'Montserrat', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            margin: 0;
            padding: 0;
            background-color: var(--dark-bg);
            color: var(--text-light);
            min-height: 100vh;
            line-height: 1.6;
        }
        
        .container {
            display: flex;
            min-height: 100vh;
            background: linear-gradient(135deg, var(--darker-bg) 0%, var(--dark-bg) 100%);
        }
        
        .sidebar {
            width: 120px;
            background-color: rgba(30, 30, 30, 0.8);
            backdrop-filter: blur(5px);
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 30px 0;
            box-shadow: var(--shadow);
            z-index: 10;
            transition: var(--transition);
        }
        
        .logo img {
            width: 70px;
            margin-bottom: 25px;
            filter: drop-shadow(0 2px 5px rgba(255, 94, 108, 0.3));
            transition: var(--transition);
        }
        
        .logo:hover img {
            transform: rotate(-5deg) scale(1.05);
            filter: drop-shadow(0 2px 8px rgba(255, 94, 108, 0.5));
        }
        
        .title {
            color: var(--primary-color);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.4rem;
            margin: 30px 0;
            writing-mode: vertical-rl;
            transform: rotate(180deg);
            letter-spacing: 3px;
            text-shadow: 0 2px 3px rgba(0, 0, 0, 0.3);
        }
        
        .nav {
            display: flex;
            flex-direction: column;
            gap: 30px;
        }
        
        .nav a {
            position: relative;
            display: flex;
            justify-content: center;
        }
        
        .nav img {
            width: 32px;
            transition: var(--transition);
            filter: brightness(0.8);
        }
        
        .nav a:hover img {
            transform: translateY(-3px) scale(1.1);
            filter: brightness(1.1) drop-shadow(0 2px 4px rgba(255, 94, 108, 0.3));
        }
        
        .nav a::after {
            content: attr(title);
            position: absolute;
            bottom: -20px;
            left: 50%;
            transform: translateX(-50%);
            background-color: var(--primary-color);
            color: white;
            padding: 3px 8px;
            border-radius: 4px;
            font-size: 0.7rem;
            opacity: 0;
            transition: var(--transition);
            pointer-events: none;
            white-space: nowrap;
        }
        
        .nav a:hover::after {
            opacity: 1;
            bottom: -25px;
        }
        
        .main-content {
            flex: 1;
            padding: 50px;
            position: relative;
            overflow: hidden;
        }
        
        .main-content::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -50%;
            width: 100%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,94,108,0.05) 0%, rgba(0,0,0,0) 70%);
            z-index: -1;
        }
        
        h1 {
            color: var(--text-lighter);
            font-family: 'Playfair Display', serif;
            font-size: 2.8rem;
            margin: 0 0 20px 0;
            letter-spacing: 2px;
            position: relative;
            display: inline-block;
            text-shadow: 0 2px 3px rgba(0, 0, 0, 0.3);
        }
        
        h1::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 0;
            width: 100%;
            height: 3px;
            background: linear-gradient(90deg, var(--primary-color), var(--secondary-color));
            border-radius: 2px;
        }
        
        .page-intro {
            font-size: 1.1rem;
            margin-bottom: 40px;
            color: var(--text-muted);
            max-width: 800px;
            line-height: 1.7;
        }
        
        .artists-container {
            max-width: 1200px;
            margin: 0 auto;
            animation: fadeIn 0.8s ease-out;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .artist-card {
            display: flex;
            background-color: var(--card-bg);
            border-radius: 12px;
            overflow: hidden;
            margin-bottom: 40px;
            box-shadow: var(--shadow);
            transition: var(--transition);
        }
        
        .artist-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
        }
        
        .artist-info {
            flex: 1;
            padding: 30px;
            position: relative;
        }
        
        .artist-info::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 4px;
            height: 100%;
            background: linear-gradient(to bottom, var(--primary-color), var(--secondary-color));
        }
        
        .artist-name {
            color: var(--primary-color);
            font-family: 'Playfair Display', serif;
            font-size: 2rem;
            margin: 0 0 15px 0;
            letter-spacing: 1px;
        }
        
        .artist-specialty {
            display: inline-block;
            background-color: rgba(255, 94, 108, 0.2);
            color: var(--primary-color);
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 0.9rem;
            font-weight: 600;
            margin-bottom: 20px;
        }
        
        .artist-bio {
            margin-bottom: 20px;
            line-height: 1.7;
        }
        
        .artist-gallery {
            flex: 1;
            max-width: 500px;
            position: relative;
        }
        
        .slideshow-container {
            position: relative;
            width: 100%;
            height: 100%;
        }
        
        .slides {
            display: none;
            width: 100%;
            height: 100%;
        }
        
        .slides img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            font-size: 20px;
            border: none;
            border-radius: 50%;
            z-index: 10;
            transition: var(--transition);
        }
        
        .prev:hover, .next:hover {
            background-color: var(--primary-color);
            transform: translateY(-50%) scale(1.1);
        }
        
        .prev {
            left: 20px;
        }
        
        .next {
            right: 20px;
        }
        
        .view-portfolio {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background: linear-gradient(135deg, var(--primary-color), var(--primary-dark));
            color: white;
            border: none;
            border-radius: 30px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            text-decoration: none;
        }
        
        .view-portfolio:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(255, 94, 108, 0.4);
        }
        
        .view-portfolio i {
            margin-left: 8px;
        }
        
        @media (max-width: 1200px) {
            .artist-card {
                flex-direction: column;
            }
            
            .artist-gallery {
                max-width: 100%;
                height: 400px;
            }
        }
        
        @media (max-width: 992px) {
            .sidebar {
                width: 90px;
                padding: 20px 0;
            }
            
            .main-content {
                padding: 30px;
            }
            
            h1 {
                font-size: 2.4rem;
            }
        }
        
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }
            
            .sidebar {
                width: 100%;
                flex-direction: row;
                justify-content: space-between;
                padding: 15px 20px;
                align-items: center;
            }
            
            .logo img {
                width: 50px;
                margin-bottom: 0;
            }
            
            .title {
                writing-mode: horizontal-tb;
                transform: none;
                margin: 0;
                font-size: 1.2rem;
                letter-spacing: 2px;
            }
            
            .nav {
                flex-direction: row;
                gap: 20px;
            }
            
            .nav a::after {
                bottom: auto;
                top: -25px;
            }
            
            .nav a:hover::after {
                top: -30px;
            }
            
            .main-content {
                margin-left: 0;
                padding: 30px 20px;
            }
            
            .artist-gallery {
                height: 350px;
            }
        }
        
        @media (max-width: 576px) {
            h1 {
                font-size: 2rem;
            }
            
            .page-intro {
                font-size: 1rem;
            }
            
            .artist-name {
                font-size: 1.6rem;
            }
            
            .artist-info {
                padding: 20px;
            }
            
            .artist-gallery {
                height: 300px;
            }
            
            .nav {
                gap: 15px;
            }
            
            .nav img {
                width: 28px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <div class="logo">
                <a href="index.html">
                    <img src="img/logo.png" alt="Logo">
                </a>
            </div>
            <div class="title">INKREDIBLE</div>
            <nav class="nav">
                <a href="index.html" title="Home">
                    <img src="img/menuHome.png" alt="Home">
                </a>
                <a href="design.jsp" title="Designs">
                    <img src="img/menuDesigns.png" alt="Designs">
                </a>
                <a href="artists.jsp" title="Artists">
                    <img src="img/menuArtists.png" alt="Artists">
                </a>
                <a href="schedule.jsp" title="Schedule">
                    <img src="img/menuSchedule.png" alt="Schedule">
                </a>
                <a href="reviews.jsp" title="Reviews">
                    <img src="img/menuReviews.png" alt="Reviews">
                </a>
            </nav>
        </div>
        
        <div class="main-content">
            <div class="artists-container">
                <h1>Our Artists</h1>
                <p class="page-intro">Meet our talented tattoo artists who bring your visions to life with their expertise and creativity. Each artist at INKREDIBLE has a unique style and specialization, ensuring we can match you with the perfect creator for your tattoo.</p>
                
                <!-- Artist 1 -->
                <div class="artist-card">
                    <div class="artist-info">
                        <h2 class="artist-name">Jose Garcia</h2>
                        <span class="artist-specialty">Realism & Geometric Tattoos</span>
                        <p class="artist-bio">Jose is a master of hyper-realistic designs, turning ideas into lifelike art. With a keen eye for detail, he excels at crafting geometric patterns that captivate with their symmetry and precision. His works are a blend of technical expertise and artistic flair.</p>
                        <a href="artist1.jsp" class="view-portfolio">View Portfolio <i class="fas fa-arrow-right"></i></a>
                    </div>
                    <div class="artist-gallery">
                        <div class="slideshow-container">
                             <div class="slides">
                                <img src="img/Jose1.jpg" alt="Detailed Work by Jose Garcia">
                            </div>
                            <div class="slides">
                                <img src="img/realismTattoo_1.jpg" alt="Realism Tattoo by Jose Garcia">
                            </div>
                            <div class="slides">
                                <img src="img/realismTattoo_2.jpg" alt="Geometric Tattoo by Jose Garcia">
                            </div>
                            <div class="slides">
                                <img src="img/realismTattoo_3.jpg" alt="Portrait Tattoo by Jose Garcia">
                            </div>
                           
                           
                            <button class="prev" onclick="plusSlides(-1, this.parentNode.parentNode)">❮</button>
                            <button class="next" onclick="plusSlides(1, this.parentNode.parentNode)">❯</button>
                        </div>
                    </div>
                </div>
                
                <!-- Artist 2 -->
                <div class="artist-card">
                    <div class="artist-info">
                        <h2 class="artist-name">John Licata</h2>
                        <span class="artist-specialty">Realism & Watercolor Tattoos</span>
                        <p class="artist-bio">John combines the precision of realism with the creativity of watercolor techniques. His designs are known for their depth, vibrancy, and emotional impact, offering clients truly unique and memorable tattoos that stand the test of time.</p>
                        <a href="artist2.jsp" class="view-portfolio">View Portfolio <i class="fas fa-arrow-right"></i></a>
                    </div>
                    <div class="artist-gallery">
                        <div class="slideshow-container">
                            <div class="slides">
                                <img src="img/john1.jfif" alt="Watercolor Tattoo by John Licata">
                            </div>
                           
                            <button class="prev" onclick="plusSlides(-1, this.parentNode.parentNode)">❮</button>
                            <button class="next" onclick="plusSlides(1, this.parentNode.parentNode)">❯</button>
                        </div>
                    </div>
                </div>
                
                <!-- Artist 3 -->
                <div class="artist-card">
                    <div class="artist-info">
                        <h2 class="artist-name">Christopher Martin</h2>
                        <span class="artist-specialty">Traditional & Minimalist Tattoos</span>
                        <p class="artist-bio">Martin's bold, vibrant traditional designs celebrate the roots of tattoo art, while his minimalist pieces reflect a modern and understated elegance. His versatility makes him a sought-after artist for clients seeking timeless or contemporary tattoos.</p>
                        <a href="artist3.jsp" class="view-portfolio">View Portfolio <i class="fas fa-arrow-right"></i></a>
                    </div>
                    <div class="artist-gallery">
                        <div class="slideshow-container">
                            <div class="slides">
                                <img src="img/chris1.jpg" alt="Traditional Tattoo by Martin Christopher">
                            </div>
                            
                            <button class="prev" onclick="plusSlides(-1, this.parentNode.parentNode)">❮</button>
                            <button class="next" onclick="plusSlides(1, this.parentNode.parentNode)">❯</button>
                        </div>
                    </div>
                </div>
                
                <!-- Artist 4 -->
                <div class="artist-card">
                    <div class="artist-info">
                        <h2 class="artist-name">Bryce Touchstone</h2>
                        <span class="artist-specialty">Watercolor & Minimalist Tattoos</span>
                        <p class="artist-bio">Bryce's delicate touch and artistic sensibility shine in his watercolor tattoos, which mimic the fluidity of paint. His minimalist designs highlight clean lines and simplicity, making each tattoo feel like a personal statement of elegance.</p>
                        <a href="artist4.jsp" class="view-portfolio">View Portfolio <i class="fas fa-arrow-right"></i></a>
                    </div>
                    <div class="artist-gallery">
                        <div class="slideshow-container">
                            <div class="slides">
                                <img src="img/bryce1.jfif" alt="Watercolor Art by Bryce">
                            </div>
                           
                            <button class="prev" onclick="plusSlides(-1, this.parentNode.parentNode)">❮</button>
                            <button class="next" onclick="plusSlides(1, this.parentNode.parentNode)">❯</button>
                        </div>
                    </div>
                </div>
                
                <!-- Artist 5 -->
                <div class="artist-card">
                    <div class="artist-info">
                        <h2 class="artist-name">Alexis Jose</h2>
                        <span class="artist-specialty">Traditional & Geometric Tattoos</span>
                        <p class="artist-bio">Jose Alexis creates bold traditional tattoos with a modern twist and is also renowned for intricate geometric designs. His work reflects a deep appreciation for symmetry, history, and vibrant storytelling through ink.</p>
                        <a href="artist5.jsp" class="view-portfolio">View Portfolio <i class="fas fa-arrow-right"></i></a>
                    </div>
                    <div class="artist-gallery">
                        <div class="slideshow-container">
                            <div class="slides">
                                <img src="img/alexis1.jpg" alt="Traditional Design by Jose Alexis">
                            </div>
                            
                            <button class="prev" onclick="plusSlides(-1, this.parentNode.parentNode)">❮</button>
                            <button class="next" onclick="plusSlides(1, this.parentNode.parentNode)">❯</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Initialize all slideshows
        document.querySelectorAll('.slideshow-container').forEach(container => {
            let slideIndex = 0;
            const slides = container.querySelectorAll('.slides');
            showSlides(slideIndex, slides);
            
            // Set up auto-advance every 5 seconds
            setInterval(() => {
                slideIndex++;
                showSlides(slideIndex, slides);
            }, 5000);
        });
        
        function plusSlides(n, gallery) {
            const container = gallery.querySelector('.slideshow-container');
            const slides = container.querySelectorAll('.slides');
            let slideIndex = parseInt(container.getAttribute('data-slide-index') || '0');
            slideIndex += n;
            showSlides(slideIndex, slides);
            container.setAttribute('data-slide-index', slideIndex);
        }
        
        function showSlides(n, slides) {
            n = (n + slides.length) % slides.length;
            slides.forEach(slide => slide.style.display = "none");
            slides[n].style.display = "block";
        }
    </script>
</body>
</html>