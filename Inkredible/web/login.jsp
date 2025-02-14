<!-- customer-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Inkredible</title>
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

        .error-msg {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login to Inkredible</h2>
        <form action="login.jsp" method="post">
            <input type="text" name="username" class="input-field" placeholder="Username" required>
            <input type="password" name="password" class="input-field" placeholder="Password" required>
            <button type="submit" class="login-btn">Login</button>
        </form>
        <div class="error-msg">
            <!-- Error message for invalid -->
            <p>Invalid credentials, please try again.</p>
        </div>
    </div>
</body>
</html>
