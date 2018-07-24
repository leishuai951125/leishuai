<%--
  Created by IntelliJ IDEA.
  User: leishuai
  Date: 2018/7/22
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        table{
            border: black 1px inset;
            text-align: center;
            width: 25em;
            margin: auto;
        }
        table td{
            /*padding-left: 32px;*/
            /*padding-right: 32px;*/
            padding: 1em ;
        }
        .input2{
            width: 5em;
            margin-left: 3em;
            margin-right: 3em;
        }
        .input1{
            width: 13em;
        }
        body{
            text-align: center;
        }

    </style>
    <script>
        function check() {
            if(regF.user_name.value=="")
            {
                alert("用户名不能为空")
                regF.user_name.focus();
                return false;
            }
            if(regF.password.value.length<1)
            {
                alert("密码不能少于6位")
                regF.password.focus();
                return false;
            }
            if(regF.password.value!==regF.password2.value)
            {
                alert("两次输入的密码不一致")
                regF.password.focus();
                return false;
            }
            var age=regF.age;
            if(isNaN(age.value)||parseInt(age.value)<10||parseInt(age.value)>100)
            {
                alert("年龄必须是数字，且大于10，小于100")
                age.focus();
                return false;
            }
            regF.password.value=jiami(regF.password.value);
//            alert(regF.password.value)
            regF.password2.value="隐藏";
            return true;
        }
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
    </script>
</head>
<body >
<c:if test="${user==null||error!=null}">
    <h2>申请账户</h2>
</c:if>
<c:if test="${user!=null&&error==null}">
    <h2>编辑账户信息</h2>
</c:if>

<form name="regF" onsubmit="return check()" action="${pageContext.request.contextPath}/user/register" >
    <table>
        <!--<caption>填写账户信息</caption>-->
        <%--<input type="hidden" name="papge" value="register">--%>
        <tr>
            <td>用户名</td>
            <td>
                <!--${user.user_name}-->
                <input type="text" class="input1" name="user_name" value="${user.user_name}">
            </td>
        </tr>
        <tr>
            <td>密码</td>
            <td>
                <!--${user.password}-->
                <input type="password" class="input1" name="password" value="">
            </td>
        </tr>
        <tr>
            <td>确认密码</td>
            <td>
                <!--${user.password}-->
                <input type="password" class="input1" name="password2" value="">
            </td>

        </tr>

        <!--<hr>-->
        <tr><td colspan="4"><hr></td></tr>
        <tr>
            <td>性别</td>
            <td>
                <!--${user.sex}-->
                <select class="input1" name="sex" id="sex">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
                <script>
                    (function () {
                        var options=sex.childNodes;
                        for(var i=0;i<options.length;i++)
                            if(options[i].value=='${user.sex}')
                                options[i].selected="selected";
                    })();
                </script>
            </td>
        </tr>
        <tr>
            <td>
                年龄
            </td>
            <td>
                <!--${user.age}-->
                <input type="text" class="input1" name="age" value="${user.age}">
            </td>

        </tr>
        <tr>
            <td>电话号码</td>
            <td>
                <!--${user.phone_number}-->
                <input type="text" class="input1" name="phone_number" value="${user.phone_number}">
            </td>
        </tr>
        <tr>
            <td>备注</td>
            <td>
                <!--${user.comments}-->
                <input type="text" class="input1" name="comments" value="${user.comments}">
            </td>
        </tr>
        <tr ><td style="color: red;padding: 0" colspan="2">${error}</td></tr>
    </table>
    <br>
    <p>
        <%--<c:if test="${user==null||error!=null}">--%>
            <%--<input class="input2" type="submit" value="申请账户">--%>
        <%--</c:if>--%>
        <%--<c:if test="${user!=null&&error==null}">--%>
            <input class="input2" type="submit" value="确认">
        <%--</c:if>--%>

        <input class="input2" type="submit" value="重置">
    </p>
</form>
</body>
</html>
