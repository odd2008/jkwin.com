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
    <%--css--%>
    <meta charset="UTF-8">
    <%--自适应--%>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no"/>
    <%--引入--%>
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
            <marquee scrollAmount="10" direction="left" scrollDelay="0"
                     onmouseover="this.stop()" onmouseout="this.start()"
                     direction="up"
                     style="color: white;"
            >
                <a href="http://www.sina.com.cn">新浪</a>
                <a href="http://www.baidu.com">baidu</a>
                <a href=http://www.qq.com>腾讯</a>
                <a href=http://www.sohu.com>搜狐</a>
                <a href=http://www.nwnu.edu.cn>西北师范大学</a>
            </marquee>
        </div>
    </div>
</div>

<%--公告栏--%>
<div class="container-fluid">
    <div class="row" style="padding: 0 15px 0 15px;">
        <div class="col-md-8 col-xs-12">
            <ul class="nav nav-tabs">
                <li class="col-md-2 col-xs-12">
                    <a href="" data-toggle="tab"><b>预约挂号&nbsp;&nbsp;&nbsp;</b>
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
                        <span class="glyphicon glyphicon-hand-right"></span>&nbsp;5挂号
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
                                <%--<c:set var="checkSymbol" value="1" scope="page"></c:set>--%>
                                <c:forEach var="city" varStatus="cities" items="${requestScope.cities}">
                                    <li class="list-group-item">
                                        <a href="javascript:void(0)"
                                           onclick="checkSelect(this,'#checkCity',${city.getCityId()})">${city.getCityName()}
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
                            <ul class="list-group" id="region">
                                <li class="list-group-item text-center">请先选择地区!</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%--选择科室--%>
                <div class="tab-pane fade" id="department">
                    <div class="container-fluid">
                        <div class="row">
                            <ul class="list-group" id="ofice">
                                <li class="list-group-item text-center">请先选择医院!</li>
                                <%--
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
                                </c:forEach>--%>
                            </ul>
                        </div>
                    </div>
                </div>
                <%--选择医生--%>
                <div class="tab-pane fade" id="doctor">
                    <div class="container-fluid">
                        <div class="row">
                            <ul class="list-group" id="doctorx">
                                <li class="list-group-item text-center">暂无医生!</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%--选择日期--%>
                <div class="tab-pane fade" id="date">
                    <div class="container-fluid">
                        <div class="row">
                            <ul class="list-group" id="CheckInBTN">
                                <li class="list-group-item text-center">请先完成前面的操作!</li>

                                <%--挂号按钮--%>
                                <%--<button type="button" class="btn btn-primary " data-toggle="button" style="line-height: 2; font-size: 150%; margin:5px 0 10px 0; ">--%>
                                    <%--<a href="/DoctorServlet">立即挂号</a></button>--%>
                            </ul>
                        </div>
                    </div>
                </div>


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

<%@include file="/html/footer.html" %>
</body>

<script type="text/javascript">
    <%--导航栏滑动样式--%>
    $(".checkedli").hover(function () {
        $(this).addClass("active");
        $(this).siblings().removeClass("active");
    })

    <%--选项打勾之后--%>

    function checkSelect(aclick, checkString, Id, Id2) {
        $(checkString).text($(aclick).text());
        $(aclick).find("span").addClass("lable lable-primary glyphicon glyphicon-ok");
        $(aclick).parent().siblings().find("span").removeClass("lable lable-primary glyphicon glyphicon-ok");
        $(checkString).parent().parent().next().find("a").tab('show');

        if (checkString == "#checkCity") {
            cityToHospital(Id);
        } else if (checkString == "#checkHospital") {
            HospitalToOfice(Id);
        } else if (checkString == "#checkOffice") {
            OficeToDoctor(Id, Id2);
        } else if (checkString == "#checkDoctor"){
            checkIn(Id);
        }
    }

    //城市-->地区+医院
    function cityToHospital(Id) {
        //异步请求
        $.ajax({
            url: "/CityIdtoNextServlet",
            type: "POST",
            dataType: "json",
            data: "cityId=" + Id,
            success: function (data) {
                $("#region").html("");
                $.each(data, function (key, val) {
                    $("#region").append("<li class=\"list-group-item prev\" ><span><h4>" + key + "</h4></span></li>");
                    for (var i = 0; i < val.length; i++) {
                        $("#region").children().last().append("<a href=\"javascript:void(0)\" onclick=\"checkSelect(this,'#checkHospital'," + val[i].hospitalId + ")\">"
                            + val[i].hospitalName + "<span></span></a>&nbsp;&nbsp;&nbsp;&nbsp;");
                    }
                });
            },
            error: function () {
                alert("医院请求没成功");
            }
        });
        //----异步请求结束
    }

    //医院-->科室
    function HospitalToOfice(Id) {
        //异步请求
        $.ajax({
            url: "/HospitalToNextServlet",
            type: "POST",
            dataType: "json",
            data: "hospitalId=" + Id,
            success: function (data) {
                $("#ofice").html("");
                $.each(data, function (key, val) {
                    $("#ofice").append("<li class=\"list-group-item prev\" ><span><a href=\"javascript:void(0)\" onclick=\"checkSelect(this,'#checkOffice'," + key + "," + Id + ")\">" + val.oficeName + "</a>&nbsp;&nbsp;&nbsp;&nbsp;</span></li>");
                });
            },
            error: function () {
                alert("科室请求没成功");
            }
        });
        //----异步请求结束
    }

    //科室-->医生
    function OficeToDoctor(Id, Id2) {
        //异步请求
        $.ajax({
            url: "/OficeToNextServlet",
            type: "POST",
            dataType: "json",
            data: "oficeId=" + Id + "&hospitalId=" + Id2,
            success: function (data) {
                console.log(Id, Id2);
                $("#doctorx").html("");
                $.each(data, function (key, val) {
                    $("#doctorx").append("<li class=\"list-group-item prev\" ><span><a href=\"javascript:void(0)\" onclick=\"checkSelect(this,'#checkDoctor'," + val.doctorId + ")\">" + val.doctorName + "</a>&nbsp;&nbsp;&nbsp;&nbsp;</span></li>");
                });
            },
            error: function () {
                alert("请点击挂号按钮,进行挂号");
            }
        });
        //----异步请求结束
    }

    //医生-->挂号
    function checkIn(doctorId) {
        $("#CheckInBTN").html("");
        $("#CheckInBTN").append("<a class='btn btn-primary' href=\"/DoctorServlet?doctorId="+doctorId+"\" style='color: white;'>立即挂号</a></a>");
        $("#CheckInBTN").append("<a class='btn btn-primary' href=\"javascript:location.reload();\" style='color: white;'>重置</a></a>");
    }

</script>

<%--
<li class="list-group-item">
    <a href="javascript:void(0)" onclick="checkSelect(this,'#checkHospital')">${hospital.getHospitalName()}
        <span></span></a><br>
</li>
--%>
</html>