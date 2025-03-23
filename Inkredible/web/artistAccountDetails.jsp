

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Artist Account Information Page</title>
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
            <a href="artistsAccountDetails.jsp">
                <img src="artistAccountDetails.png" alt="Account Details" title="Account Details">
            </a>
        </nav>
    </div>
            <jsp:useBean id="a1" scope="session" class="Business.Artists"/>
        <h1>Here you can view and edit your information for you account </h1>
        <form>
            <table border="2">
            <tbody>
            <thead>This is your current account information:</thead>
                    <tr>
                        <td>Username: </td>
                        <td><%= a1.getAID() %></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><%= a1.getAPW() %></td>
                    </tr>
                    <tr>
                        <td>First Name: </td>
                        <td><%= a1.getAFN() %></td>
                    </tr>
                    <tr>
                        <td>Last Name: </td>
                        <td><%= a1.getALN() %></td>
                    </tr>
                    <tr>
                        <td>Email: </td>
                        <td><%= a1.getAEM() %></td>
                    </tr>
                    <tr>
                        <td>Style: </td>
                        <td><%= a1.getASY() %></td>
                    </tr>
                    
            </tbody>
        </table>
        </form>
        <form id="edit" action="updateArtistInformation">
            <table border="3">
                <thead>To change your information use the form below: </thead>
                <h5>NOTICE: You are not able to change your ID number!</h5>
                <tr>
                    <td>Username: </td>
                    <td><input type="text" name="autb" value="<jsp:getProperty name="a1" property="AID" />" placeholder="Username..." </td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><input type="text" name="aptb" value="<jsp:setProperty name="a1" property="APW" />" placeholder="Password..." </td>
                </tr>
                <tr>
                    <td>First Name: </td>
                    <td><input type="text" name="aftb" value="<jsp:setProperty name="a1" property="AFN" />" placeholder="First Name..." </td>
                </tr>
                <tr>
                    <td>Last Name: </td>
                    <td><input type="text" name="altb" value="<jsp:setProperty name="a1" property="ALN" />" placeholder="Last Name..." </td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="text" name="aetb" value="<jsp:setProperty name="a1" property="AEM" />" placeholder="Email..." </td>
                </tr>
                <tr>
                    <td>Style: </td>
                    <td><input type="text" name="astb" value="<jsp:setProperty name="a1" property="ASY" />" placeholder="Style..." </td>
                </tr>
                <tr>
                <td><input type="submit" value="Submit Change" /></td>
                <td><input type="reset" value="Clear" /></td>
            </tr>
            </table>
        </form>
    </body>
</html>
