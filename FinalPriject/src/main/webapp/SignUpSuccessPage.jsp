<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body{
            background: linear-gradient(to bottom, purple 50%, lightpink 50%);
        }
        html{
            height: 100%;
            font-family: Arial, Helvetica, sans-serif;
        }
        .container{
            text-align: center;
            margin-top: 225px;
            background: white;
            position: absolute;
            left: 41%;
            padding: 30px;
            border: 1px solid #ccc;
            border-radius: 20px;
        }
        .container h2{
            color: blue;
        }
        .container p{
            font-weight: bold;
            color: blueviolet;
        }
        .container a{
            text-decoration: none;
            color: purple;
            font-weight: bold;
            cursor: pointer; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Signup Successful!</h2>
        <p>Click below to login:</p>
        <a href="LoginPage.jsp">Go to Login</a>        
    </div>
</body>
</html>