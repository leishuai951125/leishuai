<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    <h2>Hello World!</h2>
    <form action="${pageContext.request.contextPath}/user/test" method="post">
        <input type="submit" value="跳转"/>
    </form>
</body>
</html>
