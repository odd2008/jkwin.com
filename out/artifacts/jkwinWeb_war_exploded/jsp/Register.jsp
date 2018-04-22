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
    <link rel="stylesheet" href="../css/bootstrap.css"/>
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
    <title>Title</title>
</head>
<body style="
padding: 50px;
height:600px;
background:-webkit-gradient(linear, 0 0, 0 bottom, from(#AECEA9), to(#F8FCFF));">
<%--头部插入--%>
<%@include file="heard.jsp" %>
<%--y预约--%>
<div class="container-fluid">
    <div class="row list-group" style="padding: 0 15px 0 15px;">
        <div class="col-md-12 col-sm-12 list-group-item" style="background-color: wheat">
            <a href="" style="color:green; font-weight: bold">预约挂号</a>
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
            <div class="row list-group" >

                <div class="col-md-12 list-group-item"style="background-color: wheat">头像</div>
                <div class="col-md-12 list-group-item"style="background-color: wheat;padding-top: 33px"><img src="../img/16.jpg"></div>

            </div>
        </div>
        <div class="col-md-2 col-xs-12">
            <div class="row list-group " style="font-weight: bold" >
                <div class="col-md-12 list-group-item"style="background-color: wheat">姓名:</div>
                <div class="col-md-12 list-group-item"style="background-color: wheat">医院:</div>
                <div class="col-md-12 list-group-item"style="background-color: wheat">科室:</div>
                <div class="col-md-12 list-group-item"style="background-color: wheat">性别:</div>
                <div class="col-md-12 list-group-item"style="background-color: wheat;">年龄:</div>
            </div>
        </div>
        <div class="col-md-1 col-xs-12">
            <div class="row list-group" >

            </div>
        </div>
        <div class="col-md-6 col-xs-12">
            <div class="row list-group"style="font-weight: bold" >
                <div class="col-md-12 list-group-item"style="background-color: wheat;padding-bottom: 133px">医生擅长:</div>
                <div class="col-md-12 list-group-item"style="background-color: wheat;">预约时间:</div>

            </div>
        </div>
        <div class="col-md-1 col-xs-12">
            <div class="row list-group" >

            </div>
        </div>
        <%--缴费内容--%>
        <div class="col-md-1 col-xs-12">
            <div class="row list-group" >
            </div>
        </div>
    </div>
</div>
<%--提交内容--%>
<form action="/PatientServlet" method="post">
    <div class="container-fluid">
        <div class="row" style="padding: 0 15px 0 15px;">
            <div class="col-md-1 col-xs-12">
            </div>
            <%--患者表单--%>
            <div class="col-md-3 col-xs-12">
                <div class="row list-group" >
                    <div class="col-md-12 list-group-item"style="background-color: wheat;color: red;font-weight: bold">注意事项
                        <a href="/jsp/guahaoxieyi.jsp" style="font-size: 16px;">&lt;挂号须知&gt; 点击查看</a></div>
                    <div class="col-md-12 list-group-item"style="background-color: wheat;">
                        <tr>
                            <td >姓名:</td>
                            <td>
                                <input name="P" type="text" id="P" onBlur="validate();"style="margin-left: 40px;margin-bottom: 25px" />
                            </td>
                            <td>
                                <em id="Pname"></em>
                            </td>
                        </tr><br/>

                        <tr>
                            身份证:<input id="Pidcard" name="Pidcard" type="text" style="margin-left: 30px ;margin-bottom: 26px" onBlur="checkid()">
                            <span id="show"></span>

                        </tr><br/>
                        <tr>
                            <td >手机号码:</td>
                            <td><input name="Pphone" type="text"   id="Pphone"  value=""style="margin-left: 12px; margin-bottom: 25px"/>  </td>
                        </tr><br/>
                    </div>
                </div>
            </div>
            <div class="col-md-1 col-xs-12">
                <div class="row list-group" >
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <div class="row list-group" >
                    <div class="col-md-12 list-group-item"style="background-color: wheat;color: red;font-weight: bold">注意事项</div>
                    <div class="col-md-12 list-group-item"style="background-color: wheat;">1.医院需要您提供就诊者的真实姓名</div>
                    <div class="col-md-12 list-group-item"style="background-color: wheat;padding-bottom: 22px">
                        2.为了防止炒号和倒号行为，要求输入就诊者的身份证号，请注意身份证和姓名的一一对应关系。
                        婴儿或小孩的身份证号您可查看其户口本,身份证是您取号凭证。若小孩无身份证，无法取预约号，请到现场挂号</div>
                    <div class="col-md-12 list-group-item"style="background-color: wheat;padding-bottom: 22px">3.此手机号将接收预约挂号成功与否的反馈信息，
                        没有费用的产生</div>

                </div>
            </div>
            <div class="col-md-1 col-xs-12">
                <div class="row list-group" >

                </div>
            </div>
            <%--缴费内容--%>
            <div class="col-md-1 col-xs-12">
                <div class="row list-group" >
                </div>
            </div>
        </div>
    </div>
    <%--支付许可--%>
    <div class="col-md-4 col-xs-12">
        <div class="row list-group" >
            <div class="col-md-12 list-group-item"style="background-color: wheat;color: green;font-weight: bold">支付许可&nbsp;<a href="/jsp/zhifubaoxieyi.jsp" style="font-size: 16px">&lt;支付协议&gt; 点击查看</a></div>
        </div>
    </div>
    <div class="col-md-8 col-xs-12">
        <div class="row list-group" >
            <div class="col-md-12 list-group-item"style="background-color: wheat"><input type="checkbox" id="ab">我已阅读并同意此协议</div></div>
        </div>
    </div>
    <div class="col-md-12 col-xs-12">
        <div class="row list-group" >
            <div class="col-md-12 list-group-item"style="background-color: wheat">
                您将为本次预约支付：1.00元 ,本次支付只收取短信服务费， 您还需到医院支付挂号诊疗费。
                短信服务费是由医事通网站收取，与医院无关，如不同意收取，请取消本次挂号。
            </div>
    </div>
    </div>
    <%--支付宝微信选择--%>
    <div class="col-md-6 col-xs-12">
        <div class="row list-group" >
            <div class="col-md-12 list-group-item"style="background-color: wheat;color: green;font-weight: bold">支付方式</div>
            <div class="col-md-12 list-group-item"style="background-color: wheat">
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active">
                        <a href="#home" data-toggle="tab">
                            微信支付
                        </a>
                    </li>
                    <li><a href="#ios" data-toggle="tab">支付宝支付</a></li>
                </ul><br/>
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
            </div>
        </div>
    </div>
    <%--温馨提示及确认支付--%>
    <div class="col-md-6 col-xs-12">
        <div class="row list-group" >
            <div class="col-md-12 list-group-item"style="background-color: wheat">
                <h4 style="color: red">温馨提示</h4>
                <p>微信支付/支付宝支付请在15分钟内完成支付，逾期支付将导致该预约无效。</p>
            </div>
            <div class="col-md-12 list-group-item"style="background-color: wheat;padding-top: 90px;">
                <input id="bu" type="submit" name="submit"onclick="myFunction()" value="确认支付" style="background-color:
                     green;color: white;width: 80px;height: 40px;">
            </div>
        </div>
    </div>
</form>
</div>
<%--底部--%>
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

</body>
</html>
