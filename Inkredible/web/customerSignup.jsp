

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Sign up Here</h1>
                <form action="createCustomerServlet" method="post">  
                    <p>Username</p>
            <input type="text" name="ncID" id = "ncID" class="input-field" placeholder="Username" required>
            <p>Password</p>
            <input type="password" name="ncPW" id = "ncPW" class="input-field" placeholder="Password" required>
            <p>First Name</p>
            <input type="text" name="ncFN" id = "ncFN" class="input-field" placeholder="First Name" required>
            <p>Last Name</p>
            <input type="text" name="ncLN" id = "ncLN" class="input-field" placeholder="Last Name" required>
            <p>Email</p>
               <input type="Email" name="ncEM" id = "ncEM" class="input-field" placeholder="Email" required>
            <button type="submit" class="login-btn">Sign up</button>
    </body>
</html>
