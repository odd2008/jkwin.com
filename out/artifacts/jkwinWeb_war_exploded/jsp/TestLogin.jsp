<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/10 0010
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>we
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        <%--var userId=${sessionScope.userId!=null?sessionScope.userId:cookie.userId.value};--%>
        <c:choose>
            <c:when test="${sessionScope.userId!=null}">
                var userId= ${requestScope.userId};
            </c:when>
            <c:otherwise>
                var userId = ${cookie.userId.value};
            </c:otherwise>
        </c:choose>
    </script>
</head>
<body>


<a href="/ChatServlet?userId=1">在线咨询1</a>
<a href="/ChatServlet?userId=2">在线咨询2</a>
<form name="testform" action="ChatServlet" method="post">

    <%--用户名：<input name="userId" type="text"><br>--%>
    <%--<input type="submit" value="登录">--%>
</form>
</body>
</html>
