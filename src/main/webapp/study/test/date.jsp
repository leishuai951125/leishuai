<%--
  Created by IntelliJ IDEA.
  User: leishuai
  Date: 2018/7/23
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        window.onload=function () {
            date.value=new Date();
        }
    </script>
</head>
<body>
<form action="${pageContext.request.contextPath}/test/date">
    <input name="date" type="text" id="date">
    <br><br>
    <input type="submit">
</form>

</body>
</html>
