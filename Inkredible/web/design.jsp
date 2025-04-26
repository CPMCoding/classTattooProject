<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tattoo Designs - INKREDIBLE Tattoo Studio</title>
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
            margin: 0 0 30px 0;
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
        
        .designs-container {
            max-width: 1400px;
            margin: 0 auto;
            animation: fadeIn 0.8s ease-out;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .category {
            margin-bottom: 60px;
        }
        
        .category-title {
            display: flex;
            align-items: center;
            margin-bottom: 25px;
        }
        
        .category-title h2 {
            color: var(--primary-color);
            font-family: 'Playfair Display', serif;
            font-size: 1.8rem;
            margin: 0 15px 0 0;
            letter-spacing: 1px;
        }
        
        .category-title::after {
            content: '';
            flex: 1;
            height: 1px;
            background: linear-gradient(90deg, var(--primary-color), transparent);
            margin-left: 15px;
        }
        
        .gallery {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 25px;
        }
        
        .design-card {
            position: relative;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            aspect-ratio: 1/1;
        }
        
        .design-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.4);
        }
        
        .design-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        
        .design-card:hover img {
            transform: scale(1.05);
        }
        
        .design-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.8), transparent);
            padding: 20px;
            opacity: 0;
            transition: var(--transition);
        }
        
        .design-card:hover .design-overlay {
            opacity: 1;
        }
        
        .design-info {
            transform: translateY(20px);
            transition: var(--transition);
        }
        
        .design-card:hover .design-info {
            transform: translateY(0);
        }
        
        .design-title {
            color: white;
            font-weight: 600;
            margin-bottom: 5px;
        }
        
        .design-artist {
            color: var(--secondary-color);
            font-size: 0.9rem;
        }
        
        .view-more {
            text-align: center;
            margin-top: 30px;
        }
        
        .view-more-btn {
            display: inline-flex;
            align-items: center;
            background: linear-gradient(135deg, var(--primary-color), var(--primary-dark));
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 30px;
            font-weight: 600;
            letter-spacing: 1px;
            cursor: pointer;
            transition: var(--transition);
            box-shadow: 0 4px 15px rgba(255, 94, 108, 0.3);
            text-decoration: none;
        }
        
        .view-more-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(255, 94, 108, 0.4);
        }
        
        .view-more-btn i {
            margin-left: 8px;
        }
        
        @media (max-width: 1200px) {
            .gallery {
                grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
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
            
            .gallery {
                grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
                gap: 20px;
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
                padding: 30px 20px;
            }
            
            h1 {
                font-size: 2rem;
                text-align: center;
                display: block;
            }
            
            .category-title h2 {
                font-size: 1.5rem;
            }
            
            .gallery {
                grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
                gap: 15px;
            }
        }
        
        @media (max-width: 576px) {
            h1 {
                font-size: 1.8rem;
            }
            
            .page-intro {
                font-size: 1rem;
            }
            
            .gallery {
                grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
                gap: 12px;
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
                    <a href="index.html">
                    <img src="img/logo.png" alt="Logo">
                </a>
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
            <div class="designs-container">
                <h1>Tattoo Designs</h1>
                <p class="page-intro">Explore our diverse collection of tattoo designs. Each piece is a unique creation by our talented artists. Click on any design to learn more or book a consultation.</p>
                
                <!-- Realism Tattoos -->
                <div class="category">
                    <div class="category-title">
                        <h2>Realism Tattoos</h2>
                    </div>
                    <div class="gallery">
                        <div class="design-card">
                            <img src="img/realismTattoo_1.jpg" alt="Hyper-realistic portrait tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Portrait Masterpiece</div>
                                    <div class="design-artist">By Jose Garcia</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/realismTattoo_2.jpg" alt="Realistic animal tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Wild Spirit</div>
                                    <div class="design-artist">By John Licata</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/realismTattoo_3.jpg" alt="Realistic nature tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Nature's Beauty</div>
                                    <div class="design-artist">By Jose Garcia</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/realism4.jpg" alt="Detailed realism tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Detailed Artwork</div>
                                    <div class="design-artist">By Martin Christopher</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/realism5.webp" alt="Black and grey realism">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Monochrome Realism</div>
                                    <div class="design-artist">By Touchstone Bryce</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="view-more">
                        <a href="#" class="view-more-btn">View More Realism <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <!-- Traditional Tattoos -->
                <div class="category">
                    <div class="category-title">
                        <h2>Traditional Tattoos</h2>
                    </div>
                    <div class="gallery">
                        <div class="design-card">
                            <img src="img/traditonal1.jpg" alt="Classic traditional tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Classic Anchor</div>
                                    <div class="design-artist">By Martin Christopher</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/traditional2.jpg" alt="Traditional rose tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Bold Rose</div>
                                    <div class="design-artist">By Jose Alexis</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/traditional3.jpg" alt="Traditional skull tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Skull Art</div>
                                    <div class="design-artist">By Martin Christopher</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/traditional4.jpg" alt="Traditional swallow tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Sailor's Swallow</div>
                                    <div class="design-artist">By Jose Alexis</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/Traditional5.jpg" alt="Traditional panther tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Panther Design</div>
                                    <div class="design-artist">By Martin Christopher</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="view-more">
                        <a href="#" class="view-more-btn">View More Traditional <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <!-- Watercolor Tattoos -->
                <div class="category">
                    <div class="category-title">
                        <h2>Watercolor Tattoos</h2>
                    </div>
                    <div class="gallery">
                        <div class="design-card">
                            <img src="img/watercolor1.jpg" alt="Colorful watercolor tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Abstract Colors</div>
                                    <div class="design-artist">By John Licata</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/watercolor2.jpg" alt="Watercolor floral tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Floral Splash</div>
                                    <div class="design-artist">By Touchstone Bryce</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/watercolor3.jpg" alt="Watercolor landscape tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Mountain Scene</div>
                                    <div class="design-artist">By John Licata</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/watercolor4.jpg" alt="Watercolor animal tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Wildlife Art</div>
                                    <div class="design-artist">By Touchstone Bryce</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/watercolor5.jpg" alt="Watercolor abstract tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Abstract Flow</div>
                                    <div class="design-artist">By John Licata</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="view-more">
                        <a href="#" class="view-more-btn">View More Watercolor <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <!-- Geometric Tattoos -->
                <div class="category">
                    <div class="category-title">
                        <h2>Geometric Tattoos</h2>
                    </div>
                    <div class="gallery">
                        <div class="design-card">
                            <img src="img/geo1.jpg" alt="Geometric pattern tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Sacred Geometry</div>
                                    <div class="design-artist">By Jose Garcia</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/geo2.jpg" alt="Geometric animal tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Wolf Geometry</div>
                                    <div class="design-artist">By Jose Alexis</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/geo3.jpg" alt="Geometric mandala tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Mandala Design</div>
                                    <div class="design-artist">By Jose Garcia</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/geo4.jpg" alt="Geometric sleeve tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Armor Sleeve</div>
                                    <div class="design-artist">By Jose Alexis</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/geo5.png" alt="Geometric dotwork tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Dotwork Art</div>
                                    <div class="design-artist">By Jose Garcia</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="view-more">
                        <a href="#" class="view-more-btn">View More Geometric <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <!-- Minimalist Tattoos -->
                <div class="category">
                    <div class="category-title">
                        <h2>Minimalist Tattoos</h2>
                    </div>
                    <div class="gallery">
                        <div class="design-card">
                            <img src="img/min1.png" alt="Minimalist line tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Single Line</div>
                                    <div class="design-artist">By Touchstone Bryce</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/min2.jpg" alt="Minimalist symbol tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Tiny Symbol</div>
                                    <div class="design-artist">By Martin Christopher</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/min3.jpg" alt="Minimalist text tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Word Art</div>
                                    <div class="design-artist">By Touchstone Bryce</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/min4.jpg" alt="Minimalist constellation tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Star Map</div>
                                    <div class="design-artist">By Martin Christopher</div>
                                </div>
                            </div>
                        </div>
                        <div class="design-card">
                            <img src="img/min5.jpg" alt="Minimalist floral tattoo">
                            <div class="design-overlay">
                                <div class="design-info">
                                    <div class="design-title">Delicate Flower</div>
                                    <div class="design-artist">By Touchstone Bryce</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="view-more">
                        <a href="#" class="view-more-btn">View More Minimalist <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>