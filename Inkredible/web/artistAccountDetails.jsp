<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Artist Account Information Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            height: 100px;
            border-radius: 50%;
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
    </nav>
</div>

<div class="content">
    <jsp:useBean id="a1" scope="session" class="Business.Artists"/>
    
    <h1>Here you can view and edit your information for you account</h1>

    <form>
        <table border="2">
            <thead>
                <tr><td colspan="2">This is your current account information:</td></tr>
            </thead>
            <tbody>
                <tr><td>Username:</td><td><%= a1.getAID() %></td></tr>
                <tr><td>Password:</td><td><%= a1.getAPW() %></td></tr>
                <tr><td>First Name:</td><td><%= a1.getAFN() %></td></tr>
                <tr><td>Last Name:</td><td><%= a1.getALN() %></td></tr>
                <tr><td>Email:</td><td><%= a1.getAEM() %></td></tr>
                <tr><td>Style:</td><td><%= a1.getASY() %></td></tr>
            </tbody>
        </table>
    </form>

    <h5>NOTICE: To see any changes you will need to re-log!</h5>

    <form id="edit" action="UpdateArtistServlet" method="post">
        <table>
            <thead>
                <tr><th colspan="2">Edit Your Info</th></tr>
            </thead>
            <tbody>
<!--                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="cutb" value="<%= a1.getAID() %>" placeholder="Username..."></td>
                </tr>-->
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="dptb" value="<%= a1.getAPW() %>" placeholder="Password..."></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td><input type="text" name="dftb" value="<%= a1.getAFN() %>" placeholder="First Name..."></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><input type="text" name="dltb" value="<%= a1.getALN() %>" placeholder="Last Name..."></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="detb" value="<%= a1.getAEM() %>" placeholder="Email..."></td>
                </tr>
                <tr>
                    <td>Style:</td>
                    <td><input type="text" name="dastb" value="<%= a1.getASY() %>" placeholder="Style..."></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit Change"></td>
                    <td><input type="reset" value="Clear"></td>
                </tr>
            </tbody>
        </table>
    </form>
</div>

</body>
</html>
