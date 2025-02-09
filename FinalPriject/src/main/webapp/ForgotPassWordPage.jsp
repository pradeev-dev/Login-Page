<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .back{
            background: linear-gradient(to bottom, purple 50%, lightpink 50%);
        }
        html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
        }
        .container{
            position: absolute;
            margin: 0 auto;
            top: 26%;
            left: 43%;
            max-width: 1500px;
            background: white;
            padding: 10px 30px;
            border-radius: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        .container .password{
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            height: 40px;
            padding: 0 10px;
            margin-bottom: 15px;
            font-size: 16px;
        }
        .image img{
            height: 100px;
        }
        .image a{
            display: block;
            color: white;
            text-decoration: none;
            font-size: 15px;
            margin-top: 7px;
        }
        #submit{
            color: white;
            background: blue;
            cursor: pointer;
        }
        h2{
            color: purple;
            font-family: Great Vibes;
            font-size: 2em;
        }
        
    </style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">
</head>
<body class="back">
    <div class="image">
        <img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png" alt="Instagram logo"><br>
        <a href="https://www.instagram.com/">Instagram</a>
    </div>
    <div class="container">
        <h2>Forgot password</h2>
        <form action="PasswordResetPage.jsp">
        <input type="tel" class="password" id="phone" placeholder="Enter phone number"><br>
        <input type="email" class="password" id="email" placeholder="Enter email address"><br>
        <input type="submit" class="password" id="submit">
        </form>
    </div>
    
</body>
</html>