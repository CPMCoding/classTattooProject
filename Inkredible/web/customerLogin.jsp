<!-- customer-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Inkredible</title>
      <link rel="icon" href="favicon.ico" type="image/x-icon">
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

        .login-container {
            background-color: #333;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);
            width: 300px;
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: 600;
        }
         .home-btn {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
        }

        .home-btn:hover {
            background-color: #2980b9;
        }

        .input-field {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 2px solid #555;
            border-radius: 5px;
            background-color: black;
            color: white;
            font-size: 16px;
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

        .Sign-up {
            color: pink;
            font-size: 14px;
            margin-top: 10px;
            a:visited {
            color: pink;

        }
    </style>
</head>
<body>
    <div class="login-container">
         <a href="index.html">
            <button class="home-btn">Home</button>
        </a>
        <h2>Login to Inkredible</h2>
        <form action="CustomerLogin" method="post">  <!-- added correct action -->
            <input type="text" name="cID" id = "cID" class="input-field" placeholder="Username" required>
            <input type="password" name="pass" id = "pass" class="input-field" placeholder="Password" required>
            <button type="submit" class="login-btn">Login</button>
        </form>
        <div class="Sign-up">
            <!-- signup link -->
            <a href="customerSignup.jsp">
            <p>New Customer Signup!</p>
            </a>
        </div>
    </div>
</body>
</html>
