<%--
  Created by IntelliJ IDEA.
  User: leishuai
  Date: 2018/7/21
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body,table,form{
            margin: auto;
            text-align: center;
        }
        a{
            text-decoration: none;
            color: darkcyan;
        }

        table{
            border: black 1px inset;
        }
        table td{
            padding-left: 20px;
            padding-right: 20px;
        }

    </style>
</head>
<body>
<h1>
    这里是待办事务列表页面
</h1>
<%--<h3>欢迎您：<span style="color: red">${user.user_name}</span></h3>--%>
<%--<a href="${pageContext.request.contextPath}/todoItem/showAll">--%>
    <%--待办事务列表--%>
<%--</a>--%>
<%--&lt;%&ndash;<br>&ndash;%&gt;--%>
<%--<a href="${pageContext.request.contextPath}/user/toJsp?page=user_manage">--%>
    <%--个人信息维护--%>
<%--</a>--%>
<%--<div style="margin-top: 2em;margin-bottom: 1em">--%>
    <%--<a href="${pageContext.request.contextPath}">添加</a>--%>
    <%--<a href="${pageContext.request.contextPath}/todoItem/showAll">刷新</a>--%>
    <%--&lt;%&ndash;<a href="${pageContext.request.contextPath}">删除</a>&ndash;%&gt;--%>
<%--</div>--%>
<jsp:include page="head.jsp"></jsp:include>
<div style="margin-top: 1em;margin-bottom: 1em">
    可选操作：
    <a href="${pageContext.request.contextPath}/user/toJsp?page=add_or_edit">添加</a>
    <a href="${pageContext.request.contextPath}/todoItem/showAll">刷新</a>
    <%--<a href="${pageContext.request.contextPath}">删除</a>--%>
</div>
<table border="1px" style="text-align: center">
    <tr>
        <th>序号</th>
        <th>标题</th>
        <th>内容</th>
        <th>优先级</th>
        <th>创建时间</th>
        <th>最近更新时间</th>
        <th>备注</th>
        <th colspan="2">操作</th>
    </tr>
    <c:forEach var="todoItem" items="${todoItems}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${todoItem.todo_item_title}</td>
            <td width="150px">${todoItem.todo_item_content}</td>
            <td>${todoItem.priority}</td>
            <td>${todoItem.creation_date}</td>
            <td>${todoItem.last_update_date}</td>
            <td>${todoItem.comments}</td>
            <td><a href="${pageContext.request.contextPath}/todoItem/deleteItem?id=${todoItem.todo_item_id}">
                删除
            </a></td>
            <td><a href="${pageContext.request.contextPath}/todoItem/toEditJsp?id=${todoItem.todo_item_id}">
                修改
            </a></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
