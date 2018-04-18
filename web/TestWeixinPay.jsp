<%--
  Created by IntelliJ IDEA.
  User: RZY
  Date: 2018/4/18
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/WeixinPayServlet" method="post">
    输入金额<input type="text" name="total_fee">
    输入身份证<input type="text" name="userIdcard">
    <input type="submit" value="提交订单">
    <br>
</form>
</body>
</html>
