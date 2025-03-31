<!ARTIST HOME PAGE. USING ARTIST.JSP AS A BASE>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Business.*"%>
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
    
        <%
        
        AppointmentList filteredList = (AppointmentList) session.getAttribute("fl");
        Appointments[] appointment = filteredList.accArr;
        String selectedCustomer = (String) session.getAttribute("sCID");
        Appointments aP1;
    
        %>
    
    <div class="sidebar">
        <div class="logo">
            <img src="logo.png" alt="Logo">
        </div>
        <div class="title">INKREDIBLE</div>
        <nav class="nav">
            <a href="artistsHomePage.jsp">
                <img src="artistHomePage.png" alt="Artist Home Page" title="Artist Home Page">
            </a>
            <a href="artistAccountDetails.jsp">
                <img src="artistAccountDetails.png" alt="Account Details" title="Account Details">
            </a>
            <a href="home.jsp">
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
        <div class="text">
            
            
            <h2>Appointments for Customer: <%=selectedCustomer%></h2>
            <table border ="1">
            
            <tr>
                <th>Appointment Date & Time</th>
                <th>Customer ID</th>
                <th>Artist ID</th>
                <th>Total Cost</th>
            </tr>
            
            <%
                if(filteredList.count == 0) { //Checks if there is anything there, if not then it'll show "No appointmetns found...."
            %>
            
            <tr>
                <td>No appointments found for this customer <%=selectedCustomer%> </td>
            </tr>
            <%
                }else{
                    for(int i = 0; i < filteredList.count; i++){ //loops through each of the appointment in the filtered list (Should be 1 appointment per customer)
                    aP1 = appointment[i];
            %>
            
            <tr>
                <td><%= aP1.getADT()%></td> <!displays appointment date time>
                <td><%= aP1.getCID()%></td> <!displays appointment customer ID>
                <td><%= aP1.getAID()%></td> <!displays appointment artist ID>
                <td><%= aP1.getTCST()%></td> <!displays appointment cost>
            </tr>
            
            <%
            
                    }
                }
            %>
            
            </table>
            
            
        </div>
    </div>

    <div class="image">
        <img src="background3.png" alt="Background" title="Background">
    </div>
</body>
</html>
<!ARTIST HOME PAGE. USING ARTIST.JSP AS A BASE>
