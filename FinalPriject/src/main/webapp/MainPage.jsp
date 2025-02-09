<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(to bottom, lightpink , purple, white);
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .header .logo img {
            width: 100px;
        }

        .header .nav a {
            margin: 0 15px;
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        .header .nav a:hover {
            text-decoration: underline;
        }

        .profile {
            text-align: center;
            margin-bottom: 30px;
        }

        .profile img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            border: 3px solid white;
            margin-bottom: 10px;
        }

        .profile h2 {
            color: white;
            margin: 10px 0;
        }

        .profile .bio {
            color: white;
            font-size: 14px;
            margin: 10px 0;
        }
        .bio a{
            text-decoration: none;
            position: relative;
            color: rgb(43, 37, 37);
            font-weight: bold;
            right: 17px;
        }

        .buttons-container {
            margin: 20px 0;
        }

        .follow-button, .message-button {
            background-color: rgb(2, 128, 245);
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            margin: 10px;
            width: 120px;
            text-align: center;
        }

        .follow-button:hover, .message-button:hover {
            background-color: rgb(1, 100, 200);
        }

        .posts {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 15px;
        }

        .post {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .post img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .footer {
            text-align: center;
            margin-top: 50px;
            color: white;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="header">
            <div class="logo">
                <a href="https://www.instagram.com/"><img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png" alt="Instagram Logo"></a>
            </div>
            <div class="nav">
                <a href="#">Home</a>
                <a href="#">Explore</a>
                <a href="#">Messages</a>
                <a href="#">Profile</a>
            </div>
        </div>

        <div class="profile">
            <a href="https://www.instagram.com/instagram/?hl=en"><img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png" alt="Profile Picture"></a>
            <h2>@Instagram</h2>
            <div class="bio">Discover what's new on Instagram 🔎✨<br>
                <a href="https://help.instagram.com/">help.instagram.com</a>
            </div>
            
            <div class="buttons-container">
                <button class="follow-button">Follow</button>
                <button class="message-button">Message</button>
            </div>
        </div>

        <div class="posts">
            <div class="post">
                <img src="GiNnEVSaoAAM4_C.jpg" alt="Post 1">
            </div>
            <div class="post">
                <img src="GiNDdfbXMAAaFEE.jpg" alt="Post 2">
            </div>
            <div class="post">
                <img src="vijayLeo.jpg" alt="Post 3">
            </div>
            <div class="post">
                <img src="Gh5NjrfWUAAsDap.jpg" alt="Post 4">
            </div>
            <div class="post">
                <img src="vijay.jpg" alt="Post 5">
            </div>
            <div class="post">
                <img src="GiXQN83a0AAHNWz.jpg" alt="Post 6">
            </div>
            <div class="post">
                <img src="leo.jpg" alt="Post 7">
            </div>
            <div class="post">
                <img src="ajith.jpg" alt="Post 8">
            </div>
            <div class="post">
                <img src="leo2.jpg" alt="Post 9">
            </div>
            <div class="post">
                <img src="messi.jpg" alt="Post 10">
            </div>
        </div>

        <div class="footer">
            <p>© Instagram</p>
        </div>
    </div>

</body>
</html>
