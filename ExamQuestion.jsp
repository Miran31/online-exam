<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.QuestionSet" %>
<%@ page import="model.Question" %>
<%@ page import="org.json.JSONArray" %><%--
  Created by IntelliJ IDEA.
  User: Miran
  Date: 02/25/2020
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.4.1.min.js"></script>
    <title>ExamQuestion | Online Mock Test</title>



    <style>
        h1{
            color: white;
        }
        .navbar-custom{
            background-color: black;
        }
        body{
            width: 100%;
            background-image: url("bg-image.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .nav-link:hover{
            color: white;
        }
        a{
            color:white;
            font-family: sans-serif;
        }
        .exam_que{
            margin-left: 100px;
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
                <a href="Login.jsp" class="nav-link">Logout</a>
            </li>
            <li class="nav-item">
            <a href="About.jsp" class="nav-link">About</a>
        </li>
        </ul>
    </div>

</nav>


 <%
     int n = Integer.valueOf(request.getAttribute("number_of_question").toString());
     QuestionSet questionSet = new QuestionSet();
     List<Question> questions = questionSet.getExamQues(n);

     System.out.println("# "+questions.toString());

 %>
    <div class="exam_que" id="questionholder">
        <%
            for (int i=0;i<questions.size();i++){
                Question question = questions.get(i);
        %>
            <%=i+1%>.&nbsp
            <div id="ques"><%=question.getQues()%><br></div>
            &nbsp&nbsp&nbsp&nbsp<input type="radio" name="ans<%=i%>" value="<%=question.getA()%>"><%=question.getA()%><br>
            &nbsp&nbsp&nbsp&nbsp<input type="radio" name="ans<%=i%>" value="<%=question.getB()%>"><%=question.getB()%><br>
            &nbsp&nbsp&nbsp&nbsp<input type="radio" name="ans<%=i%>" value="<%=question.getC()%>"><%=question.getC()%><br>
            &nbsp&nbsp&nbsp&nbsp<input type="radio" name="ans<%=i%>" value="<%=question.getD()%>"><%=question.getD()%><br>
        <%
            }
        %>
            <input type="submit" id="submit" value="Submit">
    </div>





<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>

    $(document).ready(function () {

        $("#submit").click(function () {

            var questions = <%= new JSONArray(questions).toString()%>;
            ra = 0, wa = 0, na = 0;


            for(var i=0; i<questions.length; i++)
            {

                var question = questions[i];
                var ans = $("input[name=ans"+i+"]:checked").val();
                if(ans==undefined){
                    na++;
                }else if(question.cans==ans){
                    ra++;
                }else{
                    wa++;
                }
            }


            alert("Right Ans : "+ra+", Wrong Ans : "+wa+", No Ans : "+na);

            $.get("insertResult",{ra:ra, wa:wa, na:na}, function(data){
            });
        });
    });

</script>



</body>
</html>

