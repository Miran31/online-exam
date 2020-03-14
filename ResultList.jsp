<%--
  Created by IntelliJ IDEA.
  User: Miran
  Date: 03/10/2020
  Time: 4:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="dao.ResultDao" %>
<%@ page import="model.Result" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viweport" charset="width=devide-width , initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="jquery-3.4.1.min.js"></script>
    <title>userlist</title>
</head>
<body>

<%
    String email = request.getSession().getAttribute("email").toString();
    ResultDao resultDao = new ResultDao();
    List<Result> results = resultDao.allResult(email);
    System.out.println("email in the jsp page" + email);
%>


<table>
    <thead>
    <th>SL</th>
    <th>Time</th>
    <th>Firstname</th>
    <th>lasrname</th>
    <th>email</th>
    <th>CorrectAns</th>
    <th>WrongAns</th>
    <th>NoAns</th>
    </thead>
    <tbody>
    <%

        for(int i=0; i<results.size(); i++){
            Result result = results.get(i);
    %>
    <tr>
        <td><%=i%></td>
        <td><%=result.getTime()%></td>
        <td><%=result.getFirstName()%></td>
        <td><%=result.getLastName()%></td>
        <td><%=result.getEmail()%></td>
        <td><%=result.getCorrectAns()%></td>
        <td><%=result.getWrongAns()%></td>
        <td><%=result.getNoAns()%></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>


enter in the result lust jsp



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
