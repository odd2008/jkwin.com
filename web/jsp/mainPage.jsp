<%--
  Created by IntelliJ IDEA.
  User: Allen
  Date: 2018/4/10
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%----%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <%--自适应--%>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no"/>
    <%--引入--%>
    <%--css--%>
    <link rel="stylesheet" href="../css/publicTop.css"/>
    <link rel="stylesheet" href="../css/bootstrap.css"/>
    <%--<link rel="stylesheet " href="css/datepicker.css">--%>
    <%--<link rel="stylesheet/less" href="less/datepicker.less">--%>
    <%----%>

    <%--js--%>
    <script type="text/javascript " src="../js/jquery-3.3.1.js "></script>
    <script type="text/javascript" src="../js/publicTop.js"></script>
    <script type="text/javascript " src="../js/bootstrap.js "></script>
    <%--<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>--%>
    <%----%>
    <title>医事通 - 重庆网上预约挂号,移动医疗服务健康咨询平台</title>
</head>
<body style="
/*background: url('img/background.jpg') no-repeat ;*/
/*background-size: 100%;*/
padding: 50px;
height:600px;
background:-webkit-gradient(linear, 0 0, 0 bottom, from(#AECEA9), to(#F8FCFF));
">
<%@include file="publicTop.jsp" %>
<%--轮播图--%>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 col-xs-12">
            <div id="mainpageCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#mainpageCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#mainpageCarousel" data-slide-to="1"></li>
                    <li data-target="#mainpageCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="../img/轮播1.png " alt="图片1"/>
                    </div>
                    <div class="item ">
                        <img src="../img/轮播2.png " alt="图片2"/>
                    </div>
                    <div class="item ">
                        <img src="../img/轮播3.png " alt="图片3"/>
                    </div>
                </div>
                <a href="#mainpageCarousel" data-slide="prev" class="carousel-control left" role="button">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a href="#mainpageCarousel" data-slide="next" class="carousel-control right " role="button">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</div>
<%--轮播图结束--%>

<%--流动式公告栏--%>
<div class="container-fluid">
    <div class="row list-group" style="padding: 0 15px 0 15px;">
        <div class="col-md-12 col-sm-12 list-group-item" style="background-color: #00AA88;">
            流动式公告栏
        </div>
    </div>
</div>

<%--公告栏--%>
<div class="container-fluid">
    <div class="row" style="padding: 0 15px 0 15px;">
        <div class="col-md-8 col-xs-12">
            <ul class="nav nav-tabs">
                <li class="col-md-2 col-xs-12">
                    <a href="" style="" data-toggle="tab"><b>预约挂号&nbsp;&nbsp;&nbsp;</b>
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </li>
                <li class="col-md-2 col-xs-12 text-center active">
                    <a href="#area" data-toggle="tab">
                        <span class="glyphicon glyphicon-map-marker"></span>&nbsp;1选择城市&nbsp;&nbsp;
                        <br>
                        <span id="checkCity" class="small"></span>
                    </a>
                </li>
                <li class="col-md-2 col-xs-12 text-center">
                    <a href="#hospital" data-toggle="tab">
                        <span class="glyphicon glyphicon-leaf"></span>&nbsp;2选择医院
                        <br>
                        <span id="checkHospital" class="small"></span>
                    </a>
                </li>

                <li class="col-md-2 col-xs-12 text-center">
                    <a href="#department" data-toggle="tab">
                        <span class="glyphicon glyphicon-unchecked"></span>&nbsp;3选择科室
                        <br>
                        <span id="checkOffice" class="small"></span>
                    </a>
                </li>

                <li class="col-md-2 col-xs-12 text-center">
                    <a href="#doctor" data-toggle="tab">
                        <span class="glyphicon glyphicon-user"></span>&nbsp;4选择医生
                        <br>
                        <span id="checkDoctor" class="small"></span>
                    </a>
                </li>

                <li class="col-md-2 col-xs-12 text-center">
                    <a href="#date" data-toggle="tab">
                        <span class="glyphicon glyphicon-calendar"></span>&nbsp;5选择日期
                        <br>
                        <span id="checkDate" class="small"></span>
                    </a>
                </li>

            </ul>

            <div class="tab-content">
                <%--选择地区--%>
                <div class="tab-pane fade in active" id="area">
                    <div class="container-fluid">
                        <div class="row">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <span>
                                        <h4>西南地区</h4>
                                    </span>
                                </li>
                                <c:set var="checkSymbol" value="1" scope="page"></c:set>
                                <c:forEach var="city" varStatus="cities" items="${requestScope.cities}">
                                    <li class="list-group-item">
                                        <a href="javascript:void(0)"
                                           onclick="checkSelect(this,'#checkCity')">${city.getCityName()}
                                            <span></span></a><br>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <%--选择医院--%>
                <div class="tab-pane fade" id="hospital">
                    <div class="container-fluid">
                        <div class="row">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <span>
                                        <h4>沙坪坝区</h4>
                                    </span>
                                </li>
                                <c:forEach var="hospital" items="${requestScope.hospitals}">
                                    <li class="list-group-item">
                                        <a href="javascript:void(0)"
                                           onclick="checkSelect(this,'#checkHospital')">${hospital.getHospitalName()}
                                            <span></span></a><br>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <%--选择科室--%>
                <div class="tab-pane fade" id="department">
                    <ul class="list-group">
                        <li class="list-group-item">
                                    <span>
                                        <h4>科室名称</h4>
                                    </span>
                        </li>
                        <c:forEach var="adminofice" items="${requestScope.adminofices}">
                            <li class="list-group-item">
                                <a href="javascript:void(0)"
                                   onclick="checkSelect(this,'#checkOffice')">${adminofice.getOficeName()}
                                    <span></span></a><br>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <%--选择医生--%>
                <div class="tab-pane fade" id="doctor">
                    <div class="container-fluid">
                        <div class="row">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <h4>选择医生</h4>
                                    <span class="glyphicon glyphicon-minus-sign">
                                        已满
                                    </span>
                                    <span>/</span>
                                    <span class="glyphicon glyphicon-plus-sign">
                                        未满
                                    </span>
                                </li>
                                <li class="list-group-item">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <span class="lable glyphicon glyphicon-minus-sign "></span>
                                            <a href="#" id="doctor2">别平（专家门诊(肝胆专家)）</a>
                                        </li>
                                        <li class="list-group-item">
                                            <span class="lable glyphicon glyphicon-minus-sign "></span>
                                            <a href="#">王槐志（专家门诊(肝胆专家)）</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%--选择日期--%>
                <div class="tab-pane fade" id="date">
                    <div class="container-fluid">
                        <div class="row">
                            <ul class="list-group">
                                <li class="list-group-item list-group-item-success ">
                                    <span>
                                        <h4>今月号源</h4>
                                    </span>
                                </li>
                                <li class="list-group-item">
                                    <input type="text" id="dpd1">
                                    <input type="button" id="dpd2" value="选择日期">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%--挂号按钮--%>
                <button type="button" class="btn btn-primary "
                        data-toggle="button"
                        style="line-height: 2; font-size: 150%; margin:5px 0 10px 0; ">立即挂号
                </button>
            </div>
        </div>

        <div class="col-md-4 col-xs-12">
            <div class="row list-group">
                <div class="col-md-12 list-group-item-success text-center">公告</div>
                <div class="col-md-12 list-group-item">内容</div>
                <div class="col-md-12 list-group-item">内容</div>
                <div class="col-md-12 list-group-item">内容</div>
                <div class="col-md-12 list-group-item">内容</div>
                <div class="col-md-12 list-group-item">内容</div>
            </div>
        </div>
    </div>
</div>
<%--公告栏结束--%>

<%--<%@include file="footer.jsp" %>--%>
</body>

<script type="text/javascript">
    <%--导航栏滑动样式--%>
    $(".checkedli").hover(function () {
        $(this).addClass("active");
        $(this).siblings().removeClass("active");
    })

    <%--选项打勾之后--%>
    function checkSelect(aclick, checkString) {
        $(checkString).text($(aclick).text());
        $(aclick).find("span").addClass("lable lable-primary glyphicon glyphicon-ok");
        $(aclick).parent().siblings().find("span").removeClass("lable lable-primary glyphicon glyphicon-ok");
        $(checkString).parent().parent().next().find("a").tab('show');
    }
</script>
</html>