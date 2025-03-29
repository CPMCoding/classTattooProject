<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
                background-color: black;
                color: white;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .signup-container {
                background-color: #333;
                padding: 40px;
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);
                width: 300px;
                text-align: center;
            }

            .signup-container h1 {
                margin-bottom: 20px;
                font-size: 24px;
                font-weight: 600;
                margin-top: 0;
                color: white;  
            }

            form {
                display: flex;
                flex-direction: column;
                gap: 15px; /* Adjust space between inputs */
                 align-items: center; 
            }

            .input-field {
                width: 100%;
                padding: 12px;
                margin: 0;  
                border: 2px solid #555;
                border-radius: 5px;
                background-color: black;
                color: white;
                font-size: 16px;
                text-align: left;
            }

            .input-field:focus {
                border-color: #d35400;
                outline: none;
            }

            .login-btn {
                width: 100%;
                padding: 12px;
                background-color: #d35400;
                color: white;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
            }

            .login-btn:hover {
                background-color: #e67e22;
            }

            p {
                text-align: left; 
                margin: 0 0 5px 0;
                font-size: 20px;
            }
              .home-btn {
                background-color: #3498db;
                color: white;
                border: none;
                padding: 10px 15px;
                border-radius: 5px;
                font-size: 14px;
                cursor: pointer;
                margin-top: 20px;
            }

            .home-btn:hover {
                background-color: #2980b9;
            }

        </style>
    </head>
    <body>
        <div class="signup-container">
            <h1>Sign up Here</h1>
            <form action="createCustomerServlet" method="post">  
                <p>Username</p>
                <input type="text" name="ncID" id="ncID" class="input-field" placeholder="Username" required>
                <p>Password</p>
                <input type="password" name="ncPW" id="ncPW" class="input-field" placeholder="Password" required>
                <p>First Name</p>
                <input type="text" name="ncFN" id="ncFN" class="input-field" placeholder="First Name" required>
                <p>Last Name</p>
                <input type="text" name="ncLN" id="ncLN" class="input-field" placeholder="Last Name" required>
                <p>Email</p>
                <input type="email" name="ncEM" id="ncEM" class="input-field" placeholder="Email" required>
                <button type="submit" class="login-btn">Sign up</button>
            </form>
             <!-- Home Button -->
            <a href="index.html">
                <button class="home-btn">Home</button>
            </a>
        </div>
    </body>
</html>
