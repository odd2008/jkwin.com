<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/24
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <title></title>
    <style type="text/css">
        #skip{
            font-size: 18px;
            display: block;
            text-align: center;
            margin-top: 20px;
        }
        h3{
            text-align: center;
        }
    </style>
</head>
<body>
<div id="SuccessPage" class="row">
    <div class="col-md-4 col-sm-4 col-xs-4"></div>
    <div class="col-md-4 col-sm-4 col-xs-4">
        <h3><b>支付成功</b></h3>
        <a href="maninPage.jsp" id="skip" ></a>
    </div>
</div>
</body>
<script type="text/javascript">
    //设定倒数秒数
    var t = 5;
    //显示倒数秒数
    function showTime() {
        t--;
        document.getElementById('skip').innerHTML ="页面将于"+t+"秒后跳转至登陆界面,若没反应点击跳转" ;
        if(t == 0) {
            location.href = 'mainPage.jsp';
        }
        //每秒执行一次,showTime()
        setTimeout("showTime()", 1000);
    }
    //执行showTime()
    showTime();
</script>
</html>