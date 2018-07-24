<%--
  Created by IntelliJ IDEA.
  User: leishuai
  Date: 2018/7/22
  Time: 1:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>
    欢迎您：<span style="color: red">${user.user_name}</span>

</h3>
<a href="${pageContext.request.contextPath}/todoItem/showAll">
    待办事务列表
</a>
<%--<br>--%>
<a href="${pageContext.request.contextPath}/user/toJsp?page=user_manage">
    个人信息维护
</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a  onclick="return confirm('您确定要退出登陆吗？')" href="${pageContext.request.contextPath}/user/logout" style="color: red">
    退出登陆</a>
<hr>

</body>
</html>
