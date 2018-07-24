<%--
  Created by IntelliJ IDEA.
  User: leishuai
  Date: 2018/7/22
  Time: 13:41
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
        p{
            text-align: center;
        }
        input,select,textarea{
            width: 12em;
        }
        form{
             border: black 1px inset;
             width: 30em;
         }
        p{
            vertical-align: middle;
            /*line-height: 3em;*/
        }

    </style>
</head>
<body>
<jsp:include page="head.jsp"/>
<form method="post" action="${pageContext.request.contextPath}/todoItem/addOrEdit">
    <c:if test="${todoItem==null}">
        <input type="hidden" name="action" value="add">
        <p>action&nbsp;&nbsp;::&nbsp;&nbsp;<span style="color: red">add</span></p>
    </c:if>
    <c:if test="${todoItem!=null}">
        <input type="hidden" name="action" value="edit">
        <p>action&nbsp;&nbsp;::&nbsp;&nbsp;<span style="color: red">edit</span></p>
    </c:if>
    <input type="hidden" name="todo_item_id" value="${todoItem.todo_item_id}">
    <input type="hidden" name="user_id" value="${user.user_id}">
    <p>标&nbsp;&nbsp;&nbsp;&nbsp;题：<input type="text" name="todo_item_title" value="${todoItem.todo_item_title}" ></p>
    <%--<p>内&nbsp;&nbsp;&nbsp;&nbsp;容：<input type="text" name="todo_item_content" value="${todoItem.todo_item_content}"></p>--%>
    <p>内&nbsp;&nbsp;&nbsp;&nbsp;容：<textarea rows="3" name="todo_item_content" value="">${todoItem.todo_item_content}</textarea></p>
    <%--<p>优先级：<input type="text" name="priority" value="${todoItem.priority}"></p>--%>
    <p>优先级：
        <select id="pri" name="priority" >
            <%--<option value="1 最重要">1 最重要</option>--%>
            <%--<option value="2 比较重要">2 比较重要</option>--%>
            <%--<option value="3 不太重要">3 不太重要</option>--%>
            <option >1 最重要</option>
            <option >2 比较重要</option>
            <option >3 不太重要</option>
            <script>
                (function () {
                    var value='${todoItem.priority}';
                    var options=pri.childNodes;
                    for(var i=0;i<options.length;i++)
                        if(options[i].value==value)
                            options[i].selected="selected";
                })();
            </script>
        </select>
    </p>
    <p>备&nbsp;&nbsp;&nbsp;&nbsp;注：<input type="text" name="comments" value="${todoItem.comments}"></p>
    <p><input type="submit" value="提交">
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset"></p>
</form>
</body>
</html>
