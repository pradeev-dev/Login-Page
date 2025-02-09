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
        }
        h2{
            text-align: center;
        }
        form{
            text-align: center;
        }
        .container{
            position: absolute;
            background: white;
            padding: 35px;
            padding-top: 15px;
            top: 230px;
            left: 40%;
            border-radius: 20px;
            text-align: center;
        }
        #button{
            width: 100%;
            height: 45px;
            background: blue;
            color: white;
            border-radius: 5px;
            border: none;
            margin-top: 10px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Password reset successful</h2><br>
        <form action="LoginPage.jsp">
        <input type="submit" id="button" value="Back to login page">
        </form>
    </div>
    
</body>
</html>