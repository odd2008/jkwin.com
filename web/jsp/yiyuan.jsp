<%--
  Created by IntelliJ IDEA.
  User: baojize
  Date: 2018/4/16
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="UTF-8">
<title>Title</title>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css"/>
    <link rel="stylesheet"type="text/css" href="../css/jkwin.css">
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background-color:palegreen">

<!--头部-->

<div class="row" style="background-color: whitesmoke;height: 35px;padding-top: 5px">
    <div class="col-md-1"></div>
    <div class="col-md-2">导航</div>
    <div class="col-md-5"> </div>
    <div class="col-md-2">欢迎来到医事通!</div>
    <div class="col-md-1"><a href="">注册</a> <a href="">登录</a>  </div>
    <div class="col-md-1"></div>
</div>
<div class="container">
    <!--第二头部-->
    <div class="row"style="padding-top: 50px;background-color: white">
        <div class="col-md-1"></div>
        <div class="col-md-2"><img src="../img/top_logo2.gif" style="margin-bottom: 20px;"></div>
        <div class="col-md-1" style="margin-right: 60px;font-size: 17px">预约诊疗</div>
        <div class="col-md-4"> </div>
        <div class="col-md-3"><img src="../img/suou.png" style="padding-bottom: 5px;margin-left: -10px">

            <input type="text"; value="通过医院/姓名查询"  onblur="if(!this.value.length){this.style.color='#FF5900';this.value='通过医院/姓名查询';}
           " onclick="if(this.value=='通过医院/姓名查询'){;this.value='';}">

            <input type="button" value="查找"style="height: 26px;width:50px ;background-color:lawngreen"></div>
        <div class="col-md-1"></div>
    </div>
    <div style="color: red;font-size: 30px;margin-left: 10px;margin-bottom: 30px;padding-top: 50px">你搜索的内容查询到0条结果</div>
</div>

<!--底部-->
<div class="row"style="padding-top: 50px;background-color: whitesmoke">
    <div class="col-md-1"></div>
    <div class="col-md-1"></div>
    <div class="col-md-3">
        <img src="../img/bottom_yst_logo.gif">
    </div>
    <div class="col-md-2">
        <h4>用户服务</h4>
        <p>帮助中心</p>
        <p>意见反馈</p>
        <p>黄牛举报</p>
    </div>
    <div class="col-md-3"> <h4>关于我们</h4>
        <p>Copyright©1998-2017 Adtech All Rights Reserved</p>
        <p>重庆云信医疗科技股份有限公司 版权所有 2017 渝ICP备11004654号-2</p>
        <p>增值电信业务经营许可证 B2-20070268</p>
        <p>互联网药品信息服务资格证书 (渝)-经营性-2016-0003</p></div>
    <div class="col-md-1"></div>
    <div class="col-md-1"></div>
</div>

</body>
</html>
