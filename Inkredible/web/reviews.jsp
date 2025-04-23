<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Reviews - INKREDIBLE Tattoo Studio</title>
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
        
        h2 {
            color: var(--text-lighter);
            font-family: 'Playfair Display', serif;
            font-size: 2.5rem;
            margin: 0 0 40px 0;
            text-transform: uppercase;
            letter-spacing: 3px;
            position: relative;
            display: inline-block;
            text-shadow: 0 2px 3px rgba(0, 0, 0, 0.3);
        }
        
        h2::after {
            content: '';
            position: absolute;
            bottom: -12px;
            left: 0;
            width: 100%;
            height: 4px;
            background: linear-gradient(90deg, var(--primary-color), var(--secondary-color));
            border-radius: 2px;
            transform-origin: left;
            transform: scaleX(0.8);
        }
        
        .reviews-container {
            max-width: 1000px;
            margin: 0 auto;
            animation: fadeIn 0.8s ease-out;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        table { 
            width: 100%; 
            margin: 40px auto; 
            border-collapse: separate; 
            border-spacing: 0;
            background-color: var(--card-bg);
            border-radius: 12px;
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
        }
        
        table:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.4);
        }
        
        th, td { 
            padding: 18px; 
            text-align: center;
            transition: var(--transition);
        }
        
        th { 
            background: linear-gradient(135deg, var(--primary-color), var(--primary-dark));
            color: var(--text-lighter);
            font-weight: 600;
            letter-spacing: 1px;
            text-transform: uppercase;
            font-size: 0.9rem;
            position: relative;
        }
        
        th:first-child {
            border-top-left-radius: 12px;
        }
        
        th:last-child {
            border-top-right-radius: 12px;
        }
        
        td { 
            color: var(--text-light);
            border-bottom: 1px solid var(--border-color);
            vertical-align: middle;
        }
        
        tr:last-child td {
            border-bottom: none;
        }
        
        tr:not(:first-child):hover td {
            background-color: var(--card-hover);
            transform: scale(1.02);
        }
        
        .name-cell {
            font-weight: 600;
            color: var(--text-lighter);
            width: 20%;
        }
        
        .rating-cell {
            width: 15%;
        }
        
        .review-cell {
            position: relative;
            text-align: left;
            padding: 20px;
            width: 65%;
        }
        
        .review-cell::before {
            content: '"';
            position: absolute;
            left: 10px;
            top: 10px;
            font-family: 'Playfair Display', serif;
            font-size: 3rem;
            color: rgba(255, 94, 108, 0.2);
            line-height: 1;
        }
        
        .stars {
            color: #ffc107;
            font-size: 1.1rem;
            letter-spacing: 2px;
        }
        
        .add-review {
            margin-top: 40px;
            text-align: center;
        }
        
        .add-review-btn {
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
        }
        
        .add-review-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(255, 94, 108, 0.4);
        }
        
        .add-review-btn i {
            margin-right: 8px;
        }
        
        @media (max-width: 992px) {
            .sidebar {
                width: 90px;
                padding: 20px 0;
            }
            
            .main-content {
                padding: 30px;
            }
            
            .name-cell {
                width: 25%;
            }
            
            .rating-cell {
                width: 20%;
            }
            
            .review-cell {
                width: 55%;
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
            
            h2 {
                font-size: 2rem;
                text-align: center;
                display: block;
            }
            
            table {
                margin: 30px auto;
                display: block;
                overflow-x: auto;
                white-space: nowrap;
            }
        }
        
        @media (max-width: 576px) {
            th, td {
                padding: 12px 8px;
                font-size: 0.9rem;
                display: block;
                width: 100%;
                text-align: center;
            }
            
            tr {
                margin-bottom: 15px;
                display: block;
                border-bottom: 2px solid var(--primary-color);
            }
            
            .nav {
                gap: 15px;
            }
            
            .nav img {
                width: 28px;
            }
            
            .review-cell::before {
                display: none;
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
            <div class="reviews-container">
                <h2>Customer Reviews</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Rating</th>
                            <th>Review</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            // List of sample reviews
                            class Review {
                                String name, rating, comment;
                                Review(String name, String rating, String comment) {
                                    this.name = name;
                                    this.rating = rating;
                                    this.comment = comment;
                                }
                            }
                            
                            List<Review> reviews = new ArrayList<Review>();

                            reviews.add(new Review("Garcia Jose", "5", "Amazing tattoo work! The artist perfectly captured what I wanted. The attention to detail was incredible and the studio was super clean. Highly recommend!"));
                            reviews.add(new Review("John Licata", "4", "Great experience overall. The artist was very professional and the design came out beautiful. Only reason for 4 stars was the longer than expected wait time."));
                            reviews.add(new Review("Martin Christopher", "5", "Best tattoo studio I've been to! The atmosphere is welcoming, the artists are talented, and they really care about your vision. Will definitely be back for my next piece!"));
                            
                            for (Review review : reviews) {
                                int stars = Integer.parseInt(review.rating);
                                String starIcons = "";
                                for (int i = 0; i < 5; i++) {
                                    if (i < stars) {
                                        starIcons += "<i class='fas fa-star'></i>";
                                    } else {
                                        starIcons += "<i class='far fa-star'></i>";
                                    }
                                }
                        %>
                        <tr>
                            <td class="name-cell"><%= review.name %></td>
                            <td class="rating-cell"><span class="stars"><%= starIcons %></span></td>
                            <td class="review-cell"><%= review.comment %></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
                
                <div class="add-review">
                    <button class="add-review-btn" onclick="location.href='#'">
                        <i class="fas fa-plus"></i> Add Your Review
                    </button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>