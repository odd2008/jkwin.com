<%--
  Created by IntelliJ IDEA.
  User: baojize
  Date: 2018/4/13
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>挂号页面</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css"/>
    <link rel="stylesheet"type="text/css" href="../css/jkwin.css">
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="../js/myFunction.js"></script>
    <script type="text/javascript" src="../js/yonghu.js"></script>

</head>
<body style="background-color:palegreen">
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
        <div class="col-md-2"><img src="/img/top_logo2.gif" style="margin-bottom: 20px;"></div>
        <div class="col-md-1" style="margin-right: 60px;font-size: 17px">预约诊疗</div>
        <div class="col-md-4"> </div>
        <%--查询医院表--%>
        <form action="/YiYuanServlet" method="post">
            <img src="../img/suou.png" style="padding-bottom: 5px;margin-left: -10px">
            <input id="chazhao" type="text"; value="通过医院/姓名查询"  name="Y_name" onblur="if(!this.value.length){this.style.color='#FF5900';this.value='通过医院/姓名查询';}
           " onclick="if(this.value=='通过医院/姓名查询'){;this.value='';}">
            <input type="submit" value="查找"style="height: 26px;width:50px ;background-color:lawngreen">
            </form>

        <div class="col-md-1"></div>
    </div>
    <div class="row"style="padding-top: 50px">
        <div class="col-md-1"></div>
        <div class="col-md-3"style="background-color: white;height:30px;height: 50px;padding-top: 15px;width: 1169px"><img src="../img/mbx_ico.gif">&nbsp;<a href="" style="color:green">
            预约挂号</a>
            &nbsp;&nbsp;<img src="../img/mbx_arrow.gif">&nbsp;&nbsp;预约支付</div>
        <div class="col-md-7"></div>
        <div class="col-md-1"></div>
    </div>
    <div class="row"style="padding-top: 50px ;">
        <div class="col-md-1"></div>
        <div class="col-md-2"style="background-color: white;height: 220px;"><img src="../img/16.jpg"></div>
        <div class="col-md-4"style="background-color: white;">
            <p><span>医生:</span> ${requestScope.doctor.doctorName}</p>
            <p><span>科室:</span>${requestScope.doctor.doctorGrade}</p>
            <p><span>性别:</span>${requestScope.doctor.doctorIntro}</p>
            <p><span>医院:</span></p>
            <p><span>擅长:</span></p><br/><br/>
            <p>预约时间:${requestScope.doctor.doctorTime}</p>
        </div>
        <div class="col-md-2"style="background-color: white;height: 220px">
            <h4 style="color: green">应收费</h4>
            <p>短信服务费:<span style="color: red;font-size: 30px">1元</span><p/>
            <p>挂号费:<span style="color: red;font-size: 30px">19元</span><p/>
        </div>
        <div class="col-md-2"style="background-color: white;height: 220px">
            <h4 style="color: green">应收费</h4>
            <p >总收费:<span style="color: red;font-size: 30px" id="money">20元</span><p/>
            <p>说明:<span style="color: red">本次支付只收取短信服务费，您还需到医院支付挂号诊疗费。</span><p/>
        </div>
        <div class="col-md-1"></div>
    </div>
    <!--挂号须知-->
    <div class="row"style="padding-top: 50px">
        <div class="col-md-1"></div>
        <div class="col-md-5"style="background-color: white;height: 220px">
            <h3 style="color: green">挂号须知 &nbsp;<a href="/guahaoxieyi.jsp" style="font-size: 16px;">&lt;挂号须知&gt; 点击查看</a></h3>
            <!--姓名验证-->
            <%--患者查询--%>
            <form name="login" class="login" method="POST" action="/PatientServlet">
                    <tr>
                        <td >姓名:</td>
                        <td>
                            <input name="Pname" type="text" id="Pname" onBlur="validate();"style="margin-left: 40px;margin-bottom: 25px" />
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
                     <input type="hidden" id="paymoney" name="paymoney" value="20">
                     <input id="bu" type="submit" name="submit"onclick="myFunction()" value="确认支付" style="background-color:
                     green;color: white;width: 80px;height: 40px;position: absolute;left: 750px; top: 620px; z-index: 9999">
                </form>
        </div>
        <div class="col-md-4"style="background-color: white;height: 220px;width: 489px"> <h3 style="color: red">注意事项</h3>
            <p>1.医院需要您提供就诊者的真实姓名<p/>
            <p>2.为了防止炒号和倒号行为，要求输入就诊者的身份证号，请注意身份证和姓名的一一对应关系。
                婴儿或小孩的身份证号您可查看其户口本,身份证是您取号凭证。若小孩无身份证，无法取预约号，请到现场挂号<p/>
            <p>3.此手机号将接收预约挂号成功与否的反馈信息，没有费用的产生<p/>
        </div>
        <div class="col-md-1"></div>
    </div>
    <!--支付许可-->
    <div class="row"style="padding-top: 55px">
        <div class="col-md-1"></div>
        <div class="col-md-4"style="background-color: white;height: 65px"> <h3 style="color: green">支付许可&nbsp;<a href="/zhifubaoxieyi.jsp" style="font-size: 16px">&lt;支付协议&gt; 点击查看</a></h3></div>
        <div class="col-md-2" style="padding-top: 25px;background-color: white;height: 65px;width: 590px">
            <input type="checkbox" id="ab">我已阅读并同意此协议</div>
        <div class="col-md-4"></div>
        <div class="col-md-1"></div>
    </div>

    <!--支付提示-->
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10"style="padding-bottom: 20px;background-color: white;height: 55px;width: 980px">您将为本次预约支付：1.00元 ,本次支付只收取短信服务费，
            您还需到医院支付挂号诊疗费。,短信服务费是由医事通网站收取，与医院无关，如不同意收取，请取消本次挂号。</div>
        <div class="col-md-1"></div>
    </div>
    <!--支付方式-->
    <div class="row"style="padding-top: 50px">
        <div class="col-md-1"></div>
        <div class="col-md-7"style="background-color: white;height: 250px">

            <div class="col-md-7" style="padding-bottom: 20px;">
                <h4 style="color: green"> 支付方式</h4>
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
        <div class="col-md-3"style="padding-top: 50px;background-color: white;height: 250px">

            <h4 style="color: red">温馨提示</h4>
            <p>微信支付/支付宝支付请在15分钟内完成支付，逾期支付将导致该预约无效。</p>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>

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

