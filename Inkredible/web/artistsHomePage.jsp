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
           
            height: 100%;
           
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

       
    </style>
</head>
<body>
    
        <%
        Artists a1;
        
        a1 = (Artists) session.getAttribute("a1");
        
        AppointmentList appointmentList = a1.aList; 
        Appointments[] appointment = appointmentList.accArr;
        System.out.println("Displaying appointment info");
        a1.display1();
        
        Appointments aP1;
        Appointments aP2;
    
        %>
    
    <div class="sidebar">
        <div class="logo">
            <img src="img/logo.png" alt="Logo">
        </div>
        <div class="title">INKREDIBLE</div>
        <nav class="nav">
            <a href="artistsHomePage.jsp">
                <img src="artistHomePage.png" alt="Artist Home Page" title="Artist Home Page">
            </a>
            <a href="artistAccountDetails.jsp">
                <img src="artistAccountDetails.png" alt="Account Details" title="Account Details">
            </a>
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
            <form action="logoutServlet" method="post">
                <button type="submit" class="login-btn">Logout</button>
            </form>
        </nav>
    </div>

    <div class="content">
        <div class="text">
            <h1>Customer & Appointment Info</h1>
            
            
            <h2>List of All Appointments</h2>
            <table border ="1">
            
            <tr>
                <th>Appointment Date & Time</th>
                <th>Customer ID</th>
                <th>Artist ID</th>
                <th>Total Cost</th>
            </tr>
            
            <%
                for(int i = 0; i < a1.aList.count; i++){ //looping each appointment the employee ID is associated with, could be 1 or more appointments within the table.
                    aP1 = appointment[i]; 
                   
                    System.out.println("Getting an Account");
                    aP1.display(); //displaying the appoints to server log
                
            
            %>
            
            
            <tr>
                <td><%= aP1.getADT()%></td> <!displays appointment date time>
                <td><%= aP1.getCID()%></td> <!displays appointment customer ID>
                <td><%= aP1.getAID()%></td> <!displays appointment artist ID>
                <td><%= aP1.getTCST()%></td> <!displays appointment cost>
            </tr>
            
            <%
            
                }
            %>
            
            </table>
            
            <h2>Customer List and Their Appointment</h2>
            
            <form method="post" action="FilterAppointments">
                <label for="customer">Select Customer:</label>
                <select name="CustomerID" id="CustomerID">
                    <%
                        for(int i = 0; i < a1.aList.count; i++){
                            aP2 = appointment[i];
                    %>
                    
                    <option value="<%= aP2.getCID()%>"> <!Value being used in servlet>
                        Customer ID: <%= aP2.getCID()%> <!Value shown on webpage>
                    </option>
                    
                    <%
                    
                        }
                    %>
                    
                </select>
                <button type="submit" class="login-btn">Select</button>
            </form>
                    
            <h2>Update Appointment Cost</h2>
            <form action="artistUpdateCost" method="post">
                <input type="text" name="uaADT" id="uaADT" class="input-field" placeholder="Appointment Time">
                <input type="text" name="uaCST" id="uaCST" class="input-field" placeholder="Cost">
                <button type="submit" class="login-btn">Update</button>
            </form>
        </div>
    </div>

   
</body>
</html>
<!ARTIST HOME PAGE. USING ARTIST.JSP AS A BASE>
