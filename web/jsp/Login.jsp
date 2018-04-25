<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/21
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/login-header.css" />
    <link rel="stylesheet" type="text/css" href="../css/login-section.css" />
    <link rel="stylesheet" type="text/css" href="../css/login-footer.css" />
    <link rel="stylesheet" type="text/css" href="../css/publicTop.css" />
    <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <!--头部JS-->
    <script type="text/javascript" src="../js/publicTop.js"></script>
    <!--成功预约JS-->
    <script type="text/javascript" src="../js/LoginRoll.js"  charset="utf-8"></script>
    <!--滚动的ili-->
    <script type="text/javascript">
        $(document).ready(function() {
            $("#sItem").scrollQ();
        });
    </script>
    <!--手机号验证-->
    <script type="text/javascript" src="../js/LoginVerify.js"></script>
    <title>登陆</title>
</head>

<body>
<!--row行下添加style:"padding: 0 15px 0 15px;"-->
<!--返回顶部  header-->
<header class="bs-docs-nav" id="top"></header>

<!--导航栏-->
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 col-xs-12">
            <nav class="navbar navbar-default" id="">
                <div class="navbar-header">
                    <div class="dropdown navbar-brand navbar-left">
                        <div class="btn btn-default dropdown-toggle header-menu" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                            网站导航
                            <span class="caret"></span>
                        </div>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li>
                                <a href="#">平台首页</a>
                            </li>
                            <li>
                                <a href="#">我的健康中心</a>
                            </li>
                            <li>
                                <a href="#">预约诊疗服务</a>
                            </li>
                            <li>
                                <a href="#">咨询服务</a>
                            </li>
                            <li>
                                <a href="#">慢病服务</a>
                            </li>
                        </ul>
                    </div>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <!--收缩内容-->
                <div class="collapse navbar-collapse" id="navbar-collapse" style="overflow-x: hidden">
                    <ul class="nav navbar-nav navbar-right" id="navbar_collapse">
                        <li>
                            <form action="" class="navbar-form navbar-left" role="search">
                                <div class="form-group form-inline input-group">
                                    <input type="text" class="form-control" id="searchArea" placeholder="Search"  />
                                    <span class="input-group-btn">
                                     <button type="submit" class="btn btn-default btn-search " id="searchBtn" style="padding:9.2px 12px">
                                         <span class="glyphicon glyphicon-search"></span>
											</button>
											</span>
                                </div>
                            </form>
                        </li>
                        <li class="">
                            <a href="#"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a>
                        </li>
                        <li class="">
                            <a href="#"><span class="glyphicon glyphicon-th-list"></span>&nbsp;资讯</a>
                        </li>
                        <li class="">
                            <a href="#"><span class="glyphicon glyphicon-header"></span>&nbsp;医院</a>
                        </li>
                        <li class="">
                            <a href="#"><span class="glyphicon glyphicon-leaf"></span>&nbsp;药品库</a>
                        </li>
                        <li class="active">
                            <a href="Login.jsp">登录</a>
                        </li>
                        <li class="">
                            <a href="Register.jsp">注册</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</div>
<!--导航栏结束-->

<!-- 导航栏标签-->
<div class="container">
    <div class="row">
        <!--<div class="col-md-12 col-xs-12">-->
        <!--<ol class="breadcrumb">-->
        <!--<li><a href="#">首页</a></li>-->
        <!--<li><a href="#">资讯</a></li>-->
        <!--<li class="active">内容</li>-->
        <!--</ol>-->
        <!--</div>-->
        <div class="col-md-12">
            <div class="affix affix-top" data-spy="affix" id="sidebar">
                <div id="sidebar_contsent">
                    <a href="#">
                        <button class="btn btn-default btn-md sidebarbtn">
                            <span class="glyphicon glyphicon-qrcode" aria-hidden="true"></span>
                        </button>
                    </a>
                </div>
                <div id="sidebar_content1">
                    <a href="#">
                        <button class="btn btn-default btn-md sidebarbtn">
                            <span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
                        </button>
                    </a>
                </div>
                <div id="sidebar_content2">
                    <a href="http://192.168.5.77:8080/ChatServlet">
                        <button class="btn btn-default btn-md sidebarbtn">
            <span class="glyphicon glyphicon-headphones"
                  aria-hidden="true"></span>
                        </button>
                    </a>
                </div>

                <!-- 返回顶部-->
                <div class="affix affix-top" data-spy="affix" id="backToTop">
                    <a href="#top" class="back-to-top">
                        <button class="btn btn-default btn-md sidebarbtn">
            <span class="glyphicon glyphicon-chevron-up"
                  aria-hidden="true"></span>
                        </button>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 导航栏标签结束-->

<!-- 附加导航-->

<!-- 附加导航结束-->
<section>
    <!-- 图片 -->
    <div style="background: #A5CC9F;">
        <img src="../img/zhuc_banner.jpg" class="img-responsive center-block">
    </div>
    <!-- 表单头 -->
    <div class="container form-head" style="margin-bottom: 50px;">
        <span class="glyphicon glyphicon-home"></span>
        <a href="">首页</a>
        <span style="padding-left:10px ;">登陆</span>
    </div>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-3">
            <form class="login-form" action="${pageContext.request.contextPath}/UserLoginServlet" method="get" >
                <div class="col-sm-8 col-md-10">
                    <div class="input-group">
                        <div class="input-group-addon glyphicon glyphicon-user"></div>
                        <input type="text" class="form-control" id="userphone" name="userNumber" placeholder="请输入手机号" onBlur="checkPhone()" oninput="checkPhone()">
                    </div>
                    <span id="phone-err" class="default">请输入正确的11位电话号码</span>
                </div>
                <div class="col-sm-8 col-md-10" style="margin-top: 10px; margin-bottom: 10px;">
                    <div class="input-group">
                        <div class="input-group-addon glyphicon glyphicon-lock"></div>
                        <input type="password" class="form-control" id="pwd" name="userPwd"  placeholder="请输入密码" onblur="checkPassword()" oninput="checkPassword()">
                    </div>
                    <span id="pwd-err"></span>
                </div>
                <div class="form-group">
                    <div class="col-md-12 col-sm-8 col-xs-12">
                        <input type="submit" class="btn btn-success col-xs-12 col-md-10 login-submit" value="登陆"/>
                        <span>
							<a href="Register.jsp" class="col-md-12 col-xs-12">还没有账号?立即注册</a>
							</span>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-3 col-sm-8 col-xs-12 roll">
            <div class="roll-title">他们已成功预约</div>
        </div>
        <div class="col-md-4 col-sm-12 col-xs-12">
            <ul id="sItem">
                <li>
                    <span class="name">邓女士</span>
                    于
                    <span class="time">09:45</span>
                    预约
                    <a href=""   class="org">重庆医科大学附属第二医院</a>
                    <span>></span>
                    <a href=""    class="org">专家门诊</a>
                    <span>></span>
                    <a href=""   class="org">侯雪勤</a>
                </li>
                <li>
                    <span class="name">王女士</span>
                    于
                    <span class="time">09:46</span>
                    预约
                    <a href=""   class="org">重庆医科大学附属医院</a>
                    <span>></span>
                    <a href=""    class="org">专家门诊</a>
                    <span>></span>
                    <a href=""   class="org">柴虹</a>
                </li>
                <li>
                    <span class="name">钟女士</span>
                    于
                    <span class="time">09:47</span>
                    预约
                    <a href=""   class="org">陆军军医大学西南医院</a>
                        <span>></span>
                        <a href=""    class="org">专家门诊</a>
                        <span>></span>
                        <a href=""   class="org">张利军</a>
                </li>
                <li>
                    <span class="name">张先生</span>
                    于
                    <span class="time">09:45</span>
                    预约
                    <a href=""   class="org">陆军军医大学第三附属医院（大坪医院）</a>
                    <span>></span>
                    <a href=""    class="org">疼痛科门诊</a>
                    <span>></span>
                    <a href=""   class="org">周远华</a>
                </li>
                <li>
                    <span class="name">蔡先生</span>
                    于
                    <span class="time">09:50</span>
                    预约
                    <a href=""   class="org">第一人民医院</a>
                    <span>></span>
                    <a href=""    class="org">口腔门诊</a>
                    <span>></span>
                    <a href=""   class="org">陈俊霖</a>
                </li>
                <li>
                    <span class="name">肖女士</span>
                    于
                    <span class="time">11:10</span>
                    预约
                    <a href=""   class="org">重庆医科大学附属大学城医院</a>
                    <span>></span>
                    <a href=""    class="org">妇科</a>
                    <span>></span>
                    <a href=""   class="org">王佳</a>
                </li>
                <li>
                    <span class="name">王先生</span>
                    于
                    <span class="time">11:35</span>
                    预约
                    <a href=""   class="org">陆军军医大学新桥医院</a>
                    <span>></span>
                    <a href=""    class="org">皮肤·风湿免疫科门诊</a>
                    <span>></span>
                    <a href=""   class="org">周春丽</a>
                </li>
            </ul>
        </div>
    </div>
</section>

<footer>
    <!--底部-->
    <div class="row" style="background-color: whitesmoke;margin-top:380px;">
        <div class="col-md-1"></div>
        <div class="col-md-1"></div>
        <div class="col-md-3">
            <a href="" class="footer-logo pull-left"></a>
            <a href="http://www.cqwsjsw.gov.cn/" class="footer-wsj-logo pull-left"></a>
        </div>
        <div class="col-md-2 col-xs-6">
            <h4>用户服务</h4>
            <p>帮助中心</p>
            <p>意见反馈</p>
            <p>黄牛举报</p>
        </div>
        <div class="col-md-3 col-xs-6">
            <h4>关于我们</h4>
            <p>Copyright©1998-2017 Adtech All Rights Reserved</p>
            <p>重庆云信医疗科技股份有限公司 版权所有 2017 渝ICP备11004654号-2</p>
            <p>增值电信业务经营许可证 B2-20070268</p>
            <p>互联网药品信息服务资格证书 (渝)-经营性-2016-0003</p>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-1"></div>
    </div>
</footer>
</body>
</html>
