<%--
  Created by IntelliJ IDEA.
  User: Zhao
  Date: 2018/7/18
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
This is test.jsp
<c:forEach var="user" items="${users}">
    <br>${user.user_id}<br>
    ${user.user_name}<br>
    ${user.last_update_date}<hr>
</c:forEach>
</body>
</html>
