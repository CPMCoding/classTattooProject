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
                background-color: #121212;
                color: white;
                display: flex;
                height: 100vh;
                overflow: hidden;
            }

            .sidebar {
                width: 200px;
                background-color: #1f1f1f;
                padding: 20px;
                position: fixed;
                height: 100%;
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .logo img {
                width: 100px;


            }

            .title {
                font-family: 'Rye', cursive;
                font-size: 22px;
                color: #ff6f61;
                margin: 20px 0;
                text-align: center;
            }

            .nav {
                display: flex;
                flex-direction: column;
                gap: 15px;
                align-items: center;
            }

            .nav a img {
                width: 60px;
                border-radius: 10px;
                transition: transform 0.3s ease;
            }

            .nav a img:hover {
                transform: scale(1.05);
            }
            .nav-button {
                display: inline-block;
                width: 100%;
                padding: 10px 0;
                background-color: #1f1f1f;
                color: black;
                text-align: center;
                border-radius: 5px;
                font-weight: bold;
                text-decoration: none;
                font-family: Arial, sans-serif; 
                transition: background-color 0.3s ease;
            }

            .nav-button:visited {
                color: white;
            }

          
            .nav-button:hover {
                background-color: #ff6f61;
                color: white;
            }


            .content {
                margin-left: 220px;
                padding: 30px;
                flex: 1;
                overflow-y: auto;
            }

            h1, h5 {
                color: #ff6f61;
            }

            table {
                width: 100%;
                background-color: #1f1f1f;
                border-collapse: collapse;
                margin-bottom: 30px;
                border-radius: 10px;
                overflow: hidden;
            }

            td {
                padding: 10px;
                border: 1px solid #444;
            }

            thead {
                background-color: #333;
                color: #ff6f61;
                font-weight: bold;
                text-align: left;
            }

            input[type="text"] {
                width: 100%;
                padding: 8px;
                margin: 5px 0;
                background-color: #222;
                border: 1px solid #555;
                border-radius: 5px;
                color: white;
            }

            input[type="submit"], input[type="reset"] {
                padding: 10px 20px;
                background-color: #ff6f61;
                color: white;
                border: none;
                border-radius: 5px;
                margin-top: 10px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            input[type="submit"]:hover, input[type="reset"]:hover {
                background-color: #ff3b2f;
            }
        </style>
</head>
<body>
    
        <%
        
        AppointmentList filteredList = (AppointmentList) session.getAttribute("fl");
        Appointments[] appointment = filteredList.accArr;
        String selectedCustomer = (String) session.getAttribute("sCID");
        Appointments aP1;
        
        Customers c1;

        c1 = (Customers) session.getAttribute("c1");
        AppointmentList appointmentList = c1.aList; 
        Appointments[] appointment2 = appointmentList.accArr;

        Appointments aP2;
    
        %>
    
    <div class="sidebar">
            <div class="logo">
                <img src="img/logo.png" alt="Logo">
            </div>
            <div class="title">INKREDIBLE</div>
            <nav class="nav">
                <a href="artistsHomePage.jsp" class="nav-button">
                    Artist Home
                </a>
                <a href="artistAccountDetails.jsp" class="nav-button">
                    Artist Account Details
                </a>
            </nav>

        </div>

    <div class="content">
        <jsp:useBean id="a1" scope="session" class="Business.Artists"/>
            
            
            <h2>Appointments with Customer: <%=c1.getCFN()%></h2>
            <table border ="2">
                <thead>
                   <tr><td colspan="4">Appointment:</td></tr>
                </thead>
                <tbody>
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
                        <td>No appointments found for this customer <%=c1.getCFN()%> </td>
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
                 </tbody>   
            </table>
            
            <h2>The Appointment History for <%=c1.getCFN()%></h2>
            
            <table border="2">
                <thead>
                   <tr><td colspan="4">Appointment History:</td></tr>
                </thead>
                <tbody>
                    <tr>
                        <th>Appointment Date & Time</th>
                        <th>Customer ID</th>
                        <th>Artist ID</th>
                        <th>Total Cost</th>
                    </tr>

                    <%
                    for(int i = 0; i < c1.aList.count; i++){ //looping each appointment the employee ID is associated with, could be 1 or more appointments within the table.
                        aP2 = appointment2[i]; 

                        System.out.println("Getting an Account");
                        aP2.display(); //displaying the appoints to server log


                    %>


                    <tr>
                        <td><%= aP2.getADT() %></td>
                        <td><%= aP2.getCID() %></td>
                        <td><%= aP2.getAID() %></td>
                        <td><%= aP2.getTCST() %></td>
                    </tr>

                    <%
                        }
                    %>
                </tbody>
            </table>
            
        
    </div>
</body>
</html>
<!ARTIST HOME PAGE. USING ARTIST.JSP AS A BASE>
