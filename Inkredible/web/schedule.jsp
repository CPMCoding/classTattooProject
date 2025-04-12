<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weekly Schedule - INKREDIBLE Tattoo Studio</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
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
        
        .schedule-container {
            max-width: 900px;
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
        }
        
        tr:last-child td {
            border-bottom: none;
        }
        
        tr:not(:first-child):hover td {
            background-color: var(--card-hover);
            transform: scale(1.02);
        }
        
        .day-cell {
            font-weight: 600;
            color: var(--text-lighter);
        }
        
        .hours-cell {
            position: relative;
        }
        
        .hours-cell::before {
            content: '';
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            width: 4px;
            height: 60%;
            background: var(--primary-color);
            border-radius: 2px;
            opacity: 0;
            transition: var(--transition);
        }
        
        tr:hover .hours-cell::before {
            opacity: 1;
        }
        
        .closed-day {
            color: var(--primary-color);
            font-weight: bold;
            position: relative;
        }
        
        .closed-day::after {
            content: '✗';
            margin-left: 8px;
            font-size: 1.1em;
        }
        
        .open-day {
            position: relative;
        }
        
        .open-day::after {
            content: '✓';
            margin-left: 8px;
            color: #4caf50;
            font-size: 1.1em;
        }
        
        .current-day {
            background-color: rgba(255, 94, 108, 0.15) !important;
            position: relative;
        }
        
        .current-day::after {
            content: 'TODAY';
            position: absolute;
            top: 5px;
            right: 5px;
            background-color: var(--primary-color);
            color: white;
            font-size: 0.6rem;
            padding: 2px 5px;
            border-radius: 3px;
            font-weight: bold;
        }
        
        .schedule-footer {
            margin-top: 30px;
            text-align: center;
            color: var(--text-muted);
            font-size: 0.9rem;
        }
        
        .emergency-contact {
            display: inline-block;
            margin-top: 15px;
            padding: 8px 15px;
            background-color: rgba(255, 94, 108, 0.2);
            border-left: 3px solid var(--primary-color);
            color: var(--text-light);
            border-radius: 4px;
        }
        
        @media (max-width: 992px) {
            .sidebar {
                width: 90px;
                padding: 20px 0;
            }
            
            .main-content {
                padding: 30px;
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
            }
        }
        
        @media (max-width: 576px) {
            th, td {
                padding: 12px 8px;
                font-size: 0.9rem;
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
                <img src="img/logo.png" alt="INKREDIBLE Logo">
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
            <div class="schedule-container">
                <h2>Weekly Schedule</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Day</th>
                            <th>Opening Hours</th>
                        </tr>
                    </thead>
                    <tbody>
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

                            // Get current day
                            java.util.Calendar cal = java.util.Calendar.getInstance();
                            int dayOfWeek = cal.get(java.util.Calendar.DAY_OF_WEEK);
                            String[] days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
                            String currentDay = days[dayOfWeek - 1];

                            // Iterate through the list and display entries
                            for (ScheduleEntry entry : schedule) {
                                boolean isCurrentDay = entry.day.equalsIgnoreCase(currentDay);
                                boolean isClosed = entry.hours.equalsIgnoreCase("Closed");
                        %>
                        <tr class="<%= isCurrentDay ? "current-day" : "" %>">
                            <td class="day-cell"><%= entry.day %></td>
                            <td class="hours-cell <%= isClosed ? "closed-day" : "open-day" %>">
                                <%= entry.hours %>
                            </td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
                
                <div class="schedule-footer">
                    <p>All times are in local timezone. Hours may vary on holidays.</p>
                    <div class="emergency-contact">
                        For emergency appointments, call: <strong>770-528-4545</strong>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>