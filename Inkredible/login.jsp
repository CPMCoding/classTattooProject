<!-- Landing Page-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Type - Inkredible</title>
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

        .container {
            text-align: center;
        }

        .container h1 {
            font-size: 28px;
            margin-bottom: 20px;
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

        .btn {
            background-color: #d35400;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            margin: 10px;
        }

        .btn:hover {
            background-color: #e67e22;
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="index.html">
            <button class="home-btn">Home</button>
        </a>

        <h1>Welcome to Inkredible</h1>
        <p>Are you a customer or an artist?</p>
        <a href="customerLogin.jsp">
            <button class="btn">Customer Login</button>
        </a>
        <a href="artistLogin.jsp">
            <button class="btn">Artist Login</button>
        </a>
    </div>
</body>
</html>
