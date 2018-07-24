<%--
  Created by IntelliJ IDEA.
  User: leishuai
  Date: 2018/7/21
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body,table,form{
            margin: auto;
            text-align: center;
        }
        table{
            border-top: black 1px inset;
        }
        table td{
            padding-left: 15px;
            padding-right: 15px;
        }
        a{
            text-decoration: none;
            color: darkcyan;
        }

    </style>
</head>
<body>
<h1>这里是个人信息维护页面</h1>
<%--<h3>欢迎您：<span style="color: red">${user.user_name}</span></h3>--%>
<%--<a href="${pageContext.request.contextPath}/todoItem/showAll">--%>
    <%--待办事务列表--%>
<%--</a>--%>
<%--&lt;%&ndash;<br>&ndash;%&gt;--%>
<%--<a href="${pageContext.request.contextPath}/user/toJsp?page=user_manage">--%>
    <%--个人信息维护--%>
<%--</a>--%>
<%--<div>--%>
<jsp:include page="head.jsp"></jsp:include>
<a href="${pageContext.request.contextPath}/user/toJsp?page=register">编辑账户信息</a>
    <table>
        <caption>基本信息</caption>
        <tr>
            <td>用户名</td>
            <td>${user.user_name}</td>
            <td>密码</td>
            <td>${user.password}</td>
        </tr>
        <tr>
            <td>性别</td>
            <td>${user.sex}</td>
            <td>年龄</td>
            <td>${user.age}</td>
        </tr>
        <tr>
            <td>电话号码</td>
            <td>${user.phone_number}</td>
        </tr>
    </table>
    <br>
    <table>
        <tr>
            <td>创建时间</td>
            <td>${user.creation_date}</td>
        </tr>
        <tr>
            <td>修改时间</td>
            <td>${user.last_update_date}</td>
        </tr>
        <tr>
            <td>备注</td>
            <td>${user.comments}</td>
        </tr>
    </table>
</div>
</body>
</html>
