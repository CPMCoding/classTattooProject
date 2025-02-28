<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Reviews - Tattoo Studio</title>
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
            <img src="img/logo.png" alt="Logo">
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
    <h2>Customer Reviews</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Rating</th>
            <th>Review</th>
        </tr>
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

            reviews.add(new Review("Garcia Jose", "5 Stars", "Amazing tattoo work! Highly recommend."));
            reviews.add(new Review("John Licata", "4 Stars", "Great experience, but the wait time was long."));
            reviews.add(new Review("Martin Christopher", "5 Stars", "Best tattoo studio!"));
            
            for (Review review : reviews) {
        %>
        <tr>
            <td><%= review.name %></td>
            <td><%= review.rating %></td>
            <td><%= review.comment %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
