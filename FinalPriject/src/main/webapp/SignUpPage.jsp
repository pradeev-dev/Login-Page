<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <style>
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
        .back {
            background: linear-gradient(to bottom, purple 50%, lightpink 50%);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;

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
            max-width: 900px;
            background: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        h2{
            text-align: center;
            font-family: Great Vibes, sans-serif;
            font-size: 2em;
            font-weight: bold;
            margin-bottom: 20px;
            color: purple;
        }
        input{
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;

        }
        .gender-container{
            width: 15px;
            padding: 10px;
            margin: 10px;
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 15px;
        }
        label{
            padding-right: 90%;
            font-weight: bold;
        }
        label[for="mname"]
        {
            padding-right: 89%;
        }
        label[for="number"],
        label[for="email"]
        {
            padding-right: 87%;
        }
        label[for="dob"]
        {
            padding-right: 89%;
        }
        #button{
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
       
        
        
    </style>
</head>
<body class="back">
    <div class="image">
        <img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png" alt="Instagram logo"><br>
        <a href="https://www.instagram.com/">Instagram</a>
    </div>
    <div class="container">
        <h2>Sign up</h2>
        <%
            String error = request.getParameter("error");
            if (error != null) {
                out.println("<p style='color:red;'>Error during registration. Please try again.</p>");
            }
        %>
        <form action="SignUpServlet" method="post">
            <label for="fname">First Name</label><br>
            <input type="text" id="fname" name="fname" placeholder="Enter your first name" required><br>
            <label for="mname">Middle name</label><br>
            <input type="text" id="mname" name="mname" placeholder="Enter your Middle name"><br>
            <label for="lname">Last Name</label><br>
            <input type="text" id="lname" name="lname" placeholder="Enter your Last name" required><br>
            <label for="password">Password</label><br>
            <input type="password" id="password" name="password" placeholder="Enter new password" required><br>
            <label for="number">Mobile number</label><br>
            <input type="tel" id="number" name="number" placeholder="Enter your mobile number" required><br>
            <label for="dob">Date of Birth</label><br>
            <input type="date" id="dob" name="dob" required><br>
            <label for="gender">Gender</label><br>
            <div class="gender-container">
            <input type="radio" id="male" name="gender" value="male" required>
            <label for="male">Male</label>
            <input type="radio" id="female" name="gender" value="female" required>
            <label for="female">Female</label>
        </div>
            <label for="email">Email Address</label><br>
            <input type="email" id="email" name="email" placeholder="Enter yout emaol address" required><br>
            <input type="submit" id="button">

        </form>
    </div>
</body>
</html>


