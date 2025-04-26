<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Business.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Customer Home</title>
        <style>
            body {
                margin: 0;
                font-family: Arial, sans-serif;
                background-color: #121212;
                color: #ffffff;
                display: flex;
                flex-direction: column;
                height: 100vh;
                overflow: hidden;
            }

            .sidebar {
                width: 200px;
                background-color: #1f1f1f;
                padding: 20px;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: flex-start; 
                height: 100vh;
                position: fixed;
            }


            .logo {
                width: 120px;
                height: 120px;
                margin-bottom: 10px;
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
                text-align: center;
                color: #ff6f61;
                margin-bottom: 20px;
            }

            .nav {
                display: flex;
                flex-direction: column;
                gap: 20px;
                width: 100%;
                align-items: center;
            }

            .nav a {
                display: flex;
                flex-direction: column;
                align-items: center;
                background-color: #333333;
                border-radius: 10px;
                padding: 15px;
                color: white;
                text-decoration: none;
                transition: all 0.3s ease;
                border: 2px solid transparent;
            }

            .nav a:hover {
                background-color: #ff6f61;
                color: black;
                border: 2px solid #ff6f61;
                box-shadow: 0 0 10px #ff6f61;
                transform: scale(1.05);
            }

            .nav a img {
                width: 60px;
                height: auto;
            }

            .nav a span {
                margin-top: 8px;
                font-size: 14px;
            }

            .content {
                margin-left: 220px;
                padding: 20px;
                flex: 1;
                overflow-y: auto;
            }

            h1, h2 {
                color: #ff6f61;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
                background-color: #1f1f1f;
                border-radius: 10px;
                overflow: hidden;
            }

            table, th, td {
                border: 1px solid #444;
            }

            th, td {
                padding: 10px;
                text-align: left;
            }

            th {
                background-color: #333333;
                text-transform: uppercase;
                font-weight: bold;
                letter-spacing: 1px;
            }

            tr:nth-child(even) {
                background-color: #2c2c2c;
            }

            .input-field {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #444;
                border-radius: 5px;
                background-color: #222;
                color: #fff;
            }

            .login-btn {
                background-color: #ff6f61;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s;
            }

            .login-btn:hover {
                background-color: #ff3b2f;
            }

            form {
                margin-bottom: 30px;
            }

            .image {
                position: fixed;
                bottom: 0;
                right: 0;
                opacity: 0.1;
            }

            .image img {
                max-width: 500px;
                height: auto;
            }

            @media (max-width: 768px) {
                .sidebar {
                    flex-direction: row;
                    height: auto;
                    width: 100%;
                    justify-content: space-around;
                    padding: 10px;
                    position: relative;
                }

                .content {
                    margin-left: 0;
                }

                .nav {
                    flex-direction: row;
                    gap: 15px;
                }

                .nav a img {
                    width: 40px;
                }

                .nav a span {
                    font-size: 12px;
                }

                .logo {
                    width: 60px;
                    height: 60px;
                }
            }
        </style>
    </head>
    <body>

        <%
            Customers c1 = (Customers) session.getAttribute("c1");
            AppointmentList appointmentList = c1.aList;
            Appointments[] appointment = appointmentList.accArr;
            Appointments aP1;
        %>

        <div class="sidebar">
            <div>
                <div class="logo">
                    <img src="img/logo.png" alt="Logo">
                </div>
                <div class="title">INKREDIBLE</div>
            </div>
            <nav class="nav">
                <a href="index.html">
                    <img src="img/menuHome.png" alt="Home" title="Home">
                    
                </a>
                <a href="customerAccountDetails.jsp">
                    <!-- <img src="customerAccountDetails.png" alt="Account Details" title="Account Details"> -->
                    <span>Account</span>
                </a>
            </nav>
        </div>

        <div class="content">
            <div class="text">
                <h1>Welcome, <%= c1.getCFN()%>!</h1>

                <table>
                    <tr>
                        <th>Customer ID</th>
                        <th>Password</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                    </tr>
                    <tr>
                        <td><%= c1.getCID()%></td>
                        <td><%= c1.getCPW()%></td>
                        <td><%= c1.getCFN()%></td>
                        <td><%= c1.getCLN()%></td>
                        <td><%= c1.getCEM()%></td>
                    </tr>
                </table>

                <h2>Update Account Information</h2>
                <form action="CustomerHome" method="post">
                    <input type="text" name="pass" class="input-field" placeholder="Password">
                    <input type="text" name="cFN" class="input-field" placeholder="First Name">
                    <input type="text" name="cLN" class="input-field" placeholder="Last Name">
                    <input type="text" name="cEM" class="input-field" placeholder="Email">
                    <button type="submit" class="login-btn">Update</button>
                </form>

                <h2>Appointment Information</h2>
                <table>
                    <tr>
                        <th>Appointment Date & Time</th>
                        <th>Customer ID</th>
                        <th>Artist ID</th>
                        <th>Total Cost</th>
                    </tr>
                    <%
                        for (int i = 0; i < c1.aList.count; i++) {
                            aP1 = appointment[i];
                            aP1.display();
                    %>
                    <tr>
                        <td><%= aP1.getADT()%></td>
                        <td><%= aP1.getCID()%></td>
                        <td><%= aP1.getAID()%></td>
                        <td><%= aP1.getTCST()%></td>
                    </tr>
                    <% }%>
                </table>

                <h2>Update Appointment Time</h2>
                <form action="CustomerHome" method="post">
                    <input type="text" name="cID" class="input-field" placeholder="Customer ID">
                    <input type="text" name="aDT" class="input-field" placeholder="Appointment Time">
                    <button type="submit" class="login-btn">Update</button>
                </form>
                
                <%
                    AppointmentList availableList = (AppointmentList) session.getAttribute("availableAppts");
                    Appointments[] availableAppts = availableList.accArr;
                    
                    Appointments aP2;
                %>
                
                <h2>Available Appointments</h2>
                <table>
                    <tr>
                        <th> Appointment Date & Time </th>
                        <th>Artist</th>
                    </tr>
                    
                    <%
                        for(int i = 0; i < availableList.count; i++){
                            aP2 = availableAppts[i];
                        
                    %>
                    <tr>
                        <td><%=aP2.getADT()%></td>
                        <td><%=aP2.getAID()%></td>
                    </tr>
                    
                    <%
                        }
                    %>
                    
                    
                </table>

                <h2>Create Appointment</h2>
                <form action="createAppointment" method="post">
                    <input type="text" name="naAID" class="input-field" placeholder="Artist ID">
                    <input type="text" name="naADT" class="input-field" placeholder="Appointment Time">
                    <button type="submit" class="login-btn">Create</button>
                </form>
            </div>
        </div>

        <div class="image">
            <img src="background3.png" alt="Background" title="Background">
        </div>

    </body>
</html>
