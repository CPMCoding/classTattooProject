<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Account Information Page</title>
    </head>
    <body>
        <div class="sidebar">
        <div class="logo">
            <img src="logo.png" alt="Logo">
        </div>
        <div class="title">INKREDIBLE</div>
        <nav class="nav">
            <a href="index.html">
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
            <a href="customerAccountDetails.jsp">
                <img src="customerAccountDetails.png" alt="Account Details" title="Account Details">
            </a>
        </nav>
    </div>
            <jsp:useBean id="c1" scope="session" class="Business.Customers"/>
        <h1>Here you can view and edit your information for you account </h1>
        <form>
            <table border="2">
            <tbody>
            <thead>This is your current account information:</thead>
                    <tr>
                        <td>Username: </td>
                        <td><%= c1.getCID() %></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><%= c1.getCPW() %></td>
                    </tr>
                    <tr>
                        <td>First Name: </td>
                        <td><%= c1.getCFN() %></td>
                    </tr>
                    <tr>
                        <td>Last Name: </td>
                        <td><%= c1.getCLN() %></td>
                    </tr>
                    <tr>
                        <td>Email: </td>
                        <td><%= c1.getCEM() %></td>
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
                    <td><input type="text" name="cutb" value="<jsp:getProperty name="c1" property="CID" />" placeholder="Username..." </td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><input type="text" name="cptb" value="<jsp:setProperty name="c1" property="CPW" />" placeholder="Password..." </td>
                </tr>
                <tr>
                    <td>First Name: </td>
                    <td><input type="text" name="cftb" value="<jsp:setProperty name="c1" property="CFN" />" placeholder="First Name..." </td>
                </tr>
                <tr>
                    <td>Last Name: </td>
                    <td><input type="text" name="cltb" value="<jsp:setProperty name="c1" property="CLN" />" placeholder="Last Name..." </td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="text" name="cetb" value="<jsp:setProperty name="c1" property="CEM" />" placeholder="Email..." </td>
                </tr>
                <tr>
                <td><input type="submit" value="Submit Change" /></td>
                <td><input type="reset" value="Clear" /></td>
            </tr>
            </table>
        </form>
    </body>
</html>

