<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
        body{
            background: linear-gradient(to bottom, lightpink 50%, purple 50%);
        }
        html{
            margin: 0;
            padding: 0;
            height: 100%;
        }
        .image img{
            height: 100px;
        }
        .image a{
            display: block;
            color: white;
            text-decoration: none;
            font-size: 20px;
            margin-top: 7px;
            margin-left: 10px;
        }
        .container{
            position: absolute;
            background: white;
            padding: 30px;
            padding-top: 10px;
            top: 200px;
            left: 40%;
            border-radius: 20px;
            text-align: center;
        }
        .container #password{
            border:1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            height: 40px;
            padding: 0 10px;
            margin-bottom: 15px;
            font-size: 15px;
        }
        #submit{
            width: 100%;
            background: blue;
            color: white;
            height: 40px;
            border: none;
            border-radius: 4px;
            font-size: 15px;
            cursor: pointer;
        }
        h2{
            font-family: Dancing Script, sans-serif;
            color: purple;
        }
    </style>
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
</head>
<body>
    <div class="image">
        <img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png" alt="Instagram logo"><br>
        <a href="https://www.instagram.com/">Instagram</a>
    </div>
    <div class="container">
        <h2>Password Reset</h2>
        <form action="ResetSuccessfulPage.jsp">
            <input type="password" id="password" placeholder="Enter new password" required><br>
            <input type="password" id="password" placeholder="Re-enter new password" required><br>
            <input type="submit" id="submit">
        </form>
    </div>
    
</body>
</html>