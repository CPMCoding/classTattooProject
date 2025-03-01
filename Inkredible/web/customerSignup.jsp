

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Sign up Here</h1>
                <form action="CustomerSignup" method="post">  
                    <p>First Name</p>
            <input type="text" name="cID" id = "cID" class="input-field" placeholder="Username" required>
            <p>Last Name</p>
            <input type="text" name="cID" id = "cID" class="input-field" placeholder="Username" required>
            <p>Password</p>
            <input type="password" name="pass" id = "pass" class="input-field" placeholder="Password" required>
            <p>Email</p>
               <input type="Email" name="eMail" id = "pass" class="input-field" placeholder="Email" required>
            <button type="submit" class="login-btn">Sign up</button>
    </body>
</html>
