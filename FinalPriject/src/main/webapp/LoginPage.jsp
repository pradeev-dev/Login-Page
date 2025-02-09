<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
        .back {
            background: linear-gradient(to bottom, purple 50%, lightpink 50%);
        }
        html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
        }
        .container {
            position: relative;
            margin: 0 auto;
            top: 10%;
            max-width: 400px;
            background: white;
            padding: 40px 30px;
            border-radius: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        .image img {
            height: 100px;
            width: 100px;
        }
        .image a {
            display: block;
            color: white;
            text-decoration: none;
            font-size: 15px;
            margin-top: 7px;
        }
        #username, #password {
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            height: 40px;
            padding: 0 10px;
            margin-bottom: 15px;
            font-size: 16px;
        }
        .container a {
            color: purple;
            font-size: 85%;
            margin: 5px;
            text-decoration: none;
        }
        .container a:hover {
            text-decoration: underline;
        }
        h2 {
            text-align: center;
            font-family: Great Vibes, sans-serif;
            font-size: 2em;
            font-weight: bold;
            margin-bottom: 20px;
            color: purple;
        }
        #button {
            width: 100%;
            height: 45px;
            background: purple;
            color: white;
            border-radius: 5px;
            border: none;
            margin-top: 10px;
            font-size: 16px;
            cursor: pointer;
        }
        .error-message {
            color: red;
            font-size: 14px;
        }
    </style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">
</head>
<body class="back">
<div class="whole">
  <div class="image">
      <img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png" alt="Instagram logo"><br>
      <a href="https://www.instagram.com/">Instagram</a>
  </div>
  
  <div class="container">
    <h2>Login</h2>
    
    <!-- Error Message -->
    <%
        String error = request.getParameter("error");
        if ("true".equals(error)) {
    %>
        <div class="error-message">Invalid username or password. Please try again.</div>
    <%
        }
    %>
    
    <form action="LoginServlet" method="post">
      <!-- Add name attributes to form fields -->
      <input type="text" placeholder="Username" id="username" name="username" required><br>
      <input type="password" placeholder="Password" id="password" name="password" required><br>
      <div style="text-align: center; margin-top: 10px;">
        <a href="ForgotPassWordPage.jsp">Forgot password?</a>
        |
        <a href="SignUpPage.jsp">Create new account</a>
      </div>
      <input type="submit" id="button">
    </form>
  </div>
</div> 
</body>
</html>
