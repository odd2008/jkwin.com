<%--
  Created by IntelliJ IDEA.
  User: baojize
  Date: 2018/4/21
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
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
    <link rel="stylesheet" href="../css/Register.css"/>
    <%--<link rel="stylesheet " href="css/datepicker.css">--%>
    <%--<link rel="stylesheet/less" href="less/datepicker.less">--%>
    <%----%>

    <%--js--%>
    <script type="text/javascript " src="../js/jquery-3.3.1.js "></script>
    <script type="text/javascript" src="../js/publicTop.js"></script>
    <script type="text/javascript " src="../js/bootstrap.js "></script>
    <%--<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>--%>
    <%--支付插件--%>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <head>
        <title>微胜挂号-重庆预约挂号</title>
        <script>

            function wexin() {
                document.getElementById("pay").value = "weixin";
            }

            function ali() {
                document.getElementById("pay").value = "ali";
            }

            /*协议模态框*/
            $(function () {
                $('[data-toggle="popover"]').popover()
            })
            /*患者表单验证*/
            $(function () {
                var ok1 = false;
                var ok2 = false;
                var ok3 = false;
                // 验证用户名
                $('input[name="patientName"]').focus(function () {
                    $(this).next().text("请输入正确的姓名...").removeClass("state1").addClass("state2");
                }).blur(function () {
                    if ($(this).val().length >= 2 && $(this).val().length <= 4 && $(this).val() != "") {
                        $(this).next().text("输入正确").removeClass("state1").addClass("state4");
                        ok1 = true;
                    } else {
                        $(this).next().text("请输入正确的姓名...").removeClass("state1").addClass("state3");
                    }

                });

                //验证密码
                $('input[name="patientIDcard"]').focus(function () {
                    $(this).next().text("请输入正确的18位身份证号码...").removeClass("state1").addClass("state2");
                }).blur(function () {
                    if ($(this).val().length >= 18 && $(this).val().length <= 18 && $(this).val() != "") {
                        $(this).next().text("输入正确").removeClass("state1").addClass("state4");
                        ok2 = true;
                    } else {
                        $(this).next().text("请输入正确的18位身份证号码...").removeClass("state1").addClass("state3");
                    }

                });

                //验证邮箱
                $('input[name="patientPhone"]').focus(function () {
                    $(this).next().text("请输入正确的11位电话号码... ").removeClass("state1").addClass("state2");
                }).blur(function () {
                    if ($(this).val().length >= 11 && $(this).val() != "") {
                        $(this).next().text("输入正确").removeClass("state1").addClass("state3");
                    } else {
                        $(this).next().text("请输入正确的11位电话号码...").removeClass("state1").addClass("state4");
                        ok3 = true;
                    }

                });

                //提交按钮,所有验证通过方可提交
                $(".submit").click(function () {
                    if (ok1 && ok2 && ok3) {
                        $("form").submit();
                    } else {

                        return false;
                    }
                });
            });
        </script>
    </head>
<body style="
padding: 50px;
height:600px;
background:-webkit-gradient(linear, 0 0, 0 bottom, from(#AECEA9), to(#F8FCFF));">
<%--头部插入--%>
<%@include file="publicTop.jsp" %>
<%--预约--%>
<div class="container-fluid">
    <div class="row list-group" style="padding: 0 15px 0 15px;">
        <div class="col-md-12 col-sm-12 list-group-item" style="background-color: wheat">
            <a href="mainPage.jsp" style="color:green; font-weight: bold">预约挂号</a>
        </div>
    </div>
</div>
<%--医生头像--%>
<div class="container-fluid">
    <div class="row" style="padding: 0 15px 0 15px;">
        <div class="col-md-1 col-xs-12">
        </div>
        <%--医生头像--%>
        <div class="col-md-1 col-xs-12">
            <div class="row list-group">
                <div class="col-md-12 list-group-item" style="background-color: wheat;"><img src="../img/16.jpg" style="margin-bottom: 23px">
                </div>
            </div>
        </div>
        <div class="col-md-2 col-xs-12">
            <div class="row list-group " style="font-weight: bold">
                <div class="col-md-12 list-group-item" style="background-color: wheat">
                    姓名: ${requestScope.doctor.doctorName}</div>
                <div class="col-md-12 list-group-item" style="background-color: wheat">医院:</div>
                <div class="col-md-12 list-group-item" style="background-color: wheat">
                    科室:${requestScope.doctor.doctorGrade}</div>
                <div class="col-md-12 list-group-item" style="background-color: wheat">
                    日期:${requestScope.doctor.doctorTime}</div>
            </div>
        </div>
        <div class="col-md-1 col-xs-12">
            <div class="row list-group">

            </div>
        </div>
        <div class="col-md-6 col-xs-12">
            <div class="row list-group" style="font-weight: bold">
                <div class="col-md-12 list-group-item" style="background-color: wheat;padding-bottom: 115px">
                    医生擅长:${requestScope.doctor.doctorIntro}</div>

            </div>
        </div>
        <div class="col-md-1 col-xs-12">
            <div class="row list-group">
            </div>
        </div>
    </div>
    <!-- 支付协议,点击查看 -->
    <div class="col-md-12 col-xs-12">
        <div class="row list-group">
            <div class="col-md-12 list-group-item" style="background-color: wheat;font-weight: bold">

                <h5 style="color: red">温馨提示:您将为本次预约支付：1.00元 ,本次支付只收取短信服务费， 您还需到医院支付挂号诊疗费。
                    短信服务费是由医事通网站收取，与医院无关，如不同意收取，请取消本次挂号。</h5>
                <br/><span style="color: green;margin-left: 10px;">支付协议:</span>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg"
                        style="margin-left: 38px">点击查看
                </button>
                <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
                     aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <p style="text-align: center">医事通网络预约挂号支付许可及服务协议 ：</p>
                            <p>温馨提示：感谢您使用医事通网络预约挂号支付服务，请在下一步操作前详细阅读本协议。 </p>
                            <p>1, 用户应认真阅读、充分理解本《协议》中各条款，并选择接受或不接受本《协议》（未成年人应在法定监护人陪同下阅读）。
                                除非您接受本《协议》所有条款，否则您无法进行下一步操作。您在点击“我同意接受本协议”之后的操作行为，将视为对本《协议》的接受。 </p>
                            <p>2、本《协议》是用户与医事通之间关于网络预约挂号支付所订立的协议。本《协议》描述医事通与用户之间关于医事通网络预约挂号平台在线支付许可使用及服务相关方面的权利义务。
                                “用户”是指通过医事通终端进行医院网络预约挂号并支付相关费用的个人或组织。 </p>
                            <p>
                                3、根据国家工信部及本地移动通信运营商的相关规定，代理方应在用户知情、自愿的情况下，向用户收取相关代理或服务费，代理方应在技术、管理等方面采取有效措施切实保证收费的准确性、
                                真实性和一致性。本次预约挂号支付包含元的（短信通道服务费/平台短信服务费/平台移动网络服务费），并在本次支付成功完成后扣除，敬请您注意。 </p>
                            <p>4、本《协议》的效力、解释、变更、执行与争议解决均适用中华人民共和国法律。如双方就本协议内容或其执行发生任何争议，双方应尽量友好协商解决；如协商不成，
                                任何与本协议有关的争议均由医事通平台所在地的人民法院管辖。 </p>
                            <br/>
                        </div>
                    </div>
                </div>
                <%--支付宝微信选择--%>
                </p>


                <ul id="myTab" class="nav nav-tabs">

                    <li class="active "onclick="wexin()">
                        <a href="#home" data-toggle="tab" > 微信支付 </a>
                    </li>
                    <li onclick="ali()">
                        <a href="#ios" data-toggle="tab" >支付宝支付</a>
                    </li>
                </ul>
                <br/>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="home">
                        <p>
                            <img src="../img/wxpay.png"><br/><br/>
                            微信支付是集成在微信客户端的支付功能，用户可以通过手机完成快速的支付流程。
                            微信支付以绑定银行卡的快捷支付为基础，向用户提供安全、快捷、高效的支付服务。
                        </p>
                    </div>
                    <div class="tab-pane fade" id="ios">
                        <p>
                            <img src="../img/zfb.gif"><br/><br/>
                            支付宝，全球领先的独立第三方支付平台，
                            致力于为广大用户提供安全快速的电子支付/网上支付/安全支付/手机支付体验，
                            及转账收款/水电煤缴费/信用卡还款/AA收款等生活服务应用
                        </p>
                    </div>
                </div>
                <%--提交表单内容--%>
                <form action="/PatientServlet" method="post">
                    姓名:&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="patientName">
                    <span class="state1" style="color: red;font-weight: normal">请输入姓名</span><br/><br/>
                    身份证: <input type="text" name="patientIDcard">
                    <span class="state1" style="color: red;font-weight: normal">请输入身份证</span><br/><br/>
                    电话:&nbsp;&nbsp;&nbsp; &nbsp;<input type="text" name="patientPhone">
                    <span class="state1"style="color: red;font-weight: normal">请输入电话</span><br/><br/>
                    <input id="pay" name="pay" value="weixin" style="display: none">
                    <br/><input type="submit" name="submit" onclick="click()" value="确认支付" style="background-color:
                     green;color: white;width: 80px;height: 40px;"/>

                    <h5 style="color: red">温馨提示:微信支付/支付宝支付请在15分钟内完成支付，逾期支付将导致该预约无效。</h5>
                </form>
            </div>
        </div>
    </div>
</div>
<%--底部--%>
<%@include file="footer.jsp" %>
</body>
</html>
