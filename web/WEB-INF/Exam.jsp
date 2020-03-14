<%@ page import="jdk.nashorn.internal.ir.RuntimeNode" %><%--
  Created by IntelliJ IDEA.
  User: Miran
  Date: 02/28/2020
  Time: 7:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="exam.css">
    <script src="jquery-3.4.1.min.js"></script>
    <title>Exam | Online Mock Test</title>



    <style>
        body{
            font-family:sans-serif;
            /*background-image: url();*/
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
        }
        .main-section{
            margin: 0 auto;
            margin-top: 130px;
            padding: 0;
        }
        .modal-content{
            background-color: black;
            opacity: .85;
            padding: 30px 10px;
        }
        .form-group{
            margin-bottom: 25px;
        }
        .form-group input{
            height: 40px;
            border-radius: 5px;
            border: 0;
            font-size: 18px;
        }
        .login{
            margin-bottom: 20px;
            text-align: center;
            color: white;
            font-size: 22px;
        }
        h1{
            color: white;
        }
        .navbar-custom{
            background-color: black;
        }
        .fas{
            position: relative;
        }
        .input-group-prepend span{
            position: absolute;
            height: 40px;
            width: 40px;
            color: black;
            border:0 !important;
        }
        .hello a{
            text-decoration: none;
        }

    </style>




</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark navbar-custom">
    <h1>Online Mock Test</h1>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarMenu">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a href="Home.jsp" class="nav-link">Home</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">Result</a>
            </li>
            <li class="nav-item">
                <a href="Login.jsp" class="nav-link">LogOut</a>
            </li>
            <li class="nav-item">
                <a href="Aabout.jsp" class="nav-link">About</a>
            </li>
        </ul>
    </div>
</nav>
<div class="modal-dialog text-center" id="SelectQues">
    <div class="col-sm-8 main-section">
        <div class="modal-content">
            <div class="col-12 login">
                Select Number of Question
            </div>
            <form method="post" action="Exam">
                <div class="form-group">
                    <input type="text" placeholder="No. Of Ques" name="no_of_ques" class="form-control" required>
                </div>
                <button type="submit" id="Start">Start Exam</button>
            </form>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>