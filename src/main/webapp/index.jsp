<%--
  Created by IntelliJ IDEA.
  User: leishuai
  Date: 2018/7/21
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        form{
            text-align: center;
            width: 400px;
            margin: auto;
            border:black 1px inset
         }
    </style>
    <script>
        function jiami(s1) {
            var sum = 0;
            for (i = 0; i < s1.length; i++) {
                sum = sum + s1.charCodeAt(i);
                sum = sum % 10;
            }
            var LONG=20; //加密后的长度
            var chars = new Array(LONG); //10位
            var index = 0;
            var flag = 1;
            while (flag == 1) {
                for (i = 0; i < s1.length && (flag == 1); i++) {
                    t = s1.charCodeAt(i) % 10 + index+sum;
                    chars[index++] = (t * t+index) % 10;
                    if (index == LONG)
                        flag = 0;
                }
            }
            return chars.join("");
        }
        function changePassword() {
            loginForm.password.value=jiami(loginForm.password.value);
            return true;
        }
    </script>

</head>
<body>
<div>
    <span style="float: right">欢迎xx</span>
    <form name="loginForm" action="${pageContext.request.contextPath}/user/login"  onsubmit="return changePassword()" method="post">
        <h2>
            个人待办事项管理系统
        </h2>
        <%--<input type="hidden" name="page" value="login">--%>
        <p>
            用户名：<input type="text" name="user_name">
        </p>
        <p>
            密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password">
        </p>
        <input type="submit" value="登陆">
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" value="注册" onclick="window.location.href='${pageContext.request.contextPath}/user/toJsp?page=register';">
        <%--&nbsp;&nbsp;&nbsp;&nbsp;--%>
        <%--&nbsp;&nbsp;&nbsp;&nbsp;--%>
        <%--<input type="reset">--%>
        <br><br>
        <span style="color: red;font-size: 20px">${error}</span>

    </form>
</div>
</body>
</html>
