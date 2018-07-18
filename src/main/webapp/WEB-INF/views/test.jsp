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
    ${user.id}
    ${user.name}
</c:forEach>
</body>
</html>
