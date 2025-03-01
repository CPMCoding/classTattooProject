<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weekly Schedule - Tattoo Studio</title>
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
    <h2>Weekly Schedule</h2>
    <table>
        <tr>
            <th>Day</th>
            <th>Opening Hours</th>
        </tr>
        <%
            // Class declaration
            class ScheduleEntry {
                String day, hours;
                ScheduleEntry(String day, String hours) {
                    this.day = day;
                    this.hours = hours;
                }
            }

            // Initialize the schedule list
            List<ScheduleEntry> schedule = new ArrayList<ScheduleEntry>();

            schedule.add(new ScheduleEntry("Monday", "10:00 AM - 8:00 PM"));
            schedule.add(new ScheduleEntry("Tuesday", "10:00 AM - 8:00 PM"));
            schedule.add(new ScheduleEntry("Wednesday", "10:00 AM - 8:00 PM"));
            schedule.add(new ScheduleEntry("Thursday", "10:00 AM - 8:00 PM"));
            schedule.add(new ScheduleEntry("Friday", "10:00 AM - 10:00 PM"));
            schedule.add(new ScheduleEntry("Saturday", "12:00 PM - 10:00 PM"));
            schedule.add(new ScheduleEntry("Sunday", "Closed"));

            // Iterate through the list and display entries
            for (ScheduleEntry entry : schedule) {
        %>
        <tr>
            <td><%= entry.day %></td>
            <td><%= entry.hours %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
