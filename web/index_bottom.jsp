<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/18 0018
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/cont.css" />
</head>
<style>
    .ft-span1 {
        background: url(img/num_bg.png) no-repeat;
    }

    .ft-span2 {
        background: url(img/num_bg.png) no-repeat -31px 0;
    }

</style>
<%--<script>
    location.href="/CityServlet";
    location.href="/HospitalServlet";
    location.href="/DoctorContServlet";
    location.href="/DoctorInfoServlet";
</script>--%>
<body>
<%@include file="jsp/mainPage.jsp"%>
<div class="container" style="background: white">
    <div class="g-hd-guahao col-lg-12 col-xs-12 row">
        <div class="hospital-tj col-lg-8 col-xs-12  ">
            <div class="hospital-hd col-lg-12 col-xs-12">
                <div class="col-lg-9 col-xs-6" style="height: 44px;"><h4 >医院推荐</h4></div>
                <div class="col-lg-3 col-xs-6 hospital-hd-cit ">
                    <ul id="myTab" class="nav nav-tabs">
                        <li class="active">
                            <a href="#cq" data-toggle="tab">${requestScope.byIdCity.getCityName()}</a>
                        </li>
                        <li>
                            <a href="#sc" data-toggle="tab">${requestScope.byIdCity1.getCityName()}</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="hospital-con col-lg-12 col-xs-12">
                <!--<div class="col-lg-2">
                    <div class="col-lg-12">1111111111</div>
                    <div class="col-lg-12">11111111</div>
                </div>-->
                <div class="col-lg-12">
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade in active col-lg-12 col-xs-12" id="cq">
                            <div class="hospital-tj-d col-lg-4 col-xs-4">
                                <img src="img/20180228115008388_948.jpg" />
                                <dl>
                                    <dd>
                                        <a href="">${requestScope.hospitalByid1.getHospitalName()}</a>
                                    </dd>
                                    <dd>${requestScope.hospitalByid1.hospitalLevel}</dd>
                                    <dd>${requestScope.hospitalByid1.getHospitalPhoneNum()}</dd>
                                    <dd><span>${requestScope.doctorCountsByTid1}</span>位医生可挂号</dd>
                                </dl>
                            </div>
                            <div class="hospital-tj-d col-lg-4 col-xs-4">
                                <img src="img/20180402165740359_629.jpg" />
                                <dl>
                                    <dd>
                                        <a href="">${requestScope.hospitalByid2.getHospitalName()}</a>
                                    </dd>
                                    <dd>${requestScope.hospitalByid2.hospitalLevel}</dd>
                                    <dd>${requestScope.hospitalByid2.getHospitalPhoneNum()}</dd>
                                    <dd><span>${requestScope.doctorCountsByTid2}</span>位医生可挂号</dd>
                                </dl>
                            </div>
                            <div class="hospital-tj-d col-lg-4 col-xs-4">
                                <img src="img/08DE4413_B9A2_493D_AD0E_D8637E459AA4.jpg" />
                                <dl>
                                    <dd>
                                        <a href="">${requestScope.hospitalByid3.getHospitalName()}</a>
                                    </dd>
                                    <dd>${requestScope.hospitalByid3.hospitalLevel}</dd>
                                    <dd>${requestScope.hospitalByid3.getHospitalPhoneNum()}</dd>
                                    <dd><span>${requestScope.doctorCountsByTid3}</span>位医生可挂号</dd>
                                </dl>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="sc">
                            <div class="hospital-tj-d col-lg-4 col-xs-4">
                                <img src="img/hosptial.jpg" />
                                <dl>
                                    <dd>
                                        <a href="">${requestScope.hospitalByid4.hospitalName}</a>
                                    </dd>
                                    <dd>${requestScope.hospitalByid4.hospitalLevel}</dd>
                                    <dd>${requestScope.hospitalByid4.getHospitalPhoneNum()}</dd>
                                    <dd><span>${requestScope.doctorCountsByTid4}</span>位医生可挂号</dd>
                                </dl>
                            </div>
                            <div class="hospital-tj-d col-lg-4 col-xs-4">
                                <img src="img/hosptial.jpg" />
                                <dl>
                                    <dd>
                                        <a href="">${requestScope.hospitalByid5.hospitalName}</a>
                                    </dd>
                                    <dd>${requestScope.hospitalByid5.hospitalLevel}</dd>
                                    <dd>${requestScope.hospitalByid5.getHospitalPhoneNum()}</dd>
                                    <dd><span>${requestScope.doctorCountsByTid5}</span>位医生可挂号</dd>
                                </dl>
                            </div>
                            <div class="hospital-tj-d col-lg-4 col-xs-4">
                                <img src="img/hosptial.jpg" />
                                <dl>
                                    <dd>
                                        <a href="">${requestScope.hospitalByid6.hospitalName}</a>
                                    </dd>
                                    <dd>${requestScope.hospitalByid6.hospitalLevel}</dd>
                                    <dd>${requestScope.hospitalByid6.hospitalPhoneNum}</dd>
                                    <dd><span>${requestScope.doctorCountsByTid6}</span>位医生可挂号</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="hospital-num col-lg-4 col-xs-12 ">
            <div class="hd col-lg-12 col-xs-12">
                <p class="hd-p1">现已开通</p>
                <p class="hd-p2"><span>${requestScope.hospitalCountsByTid}</span>家医院</p>
            </div>
            <div class="bd col-lg-12 col-xs-12">
                <div class="col-lg-12 col-xs-12">
                    <div class="col-lg-4 col-xs-4 bd-d1"><dt>今日总号源</dt></div>
                    <div class="col-lg-4 col-xs-4 bd-d1"><dt>已预约</dt></div>
                    <div class="col-lg-4 col-xs-4 bd-d1"><dt>可预约</dt></div>
                    <!--<dt>今日总号源</dt>
                    <dt>已预约</dt>
                    <dt>可预约</dt>-->
                </div>
                <div class="col-lg-12 col-xs-12">
                    <div class="col-lg-4 col-xs-4 bd-d2"><dd>2075724个</dd></div>
                    <div class="col-lg-4 col-xs-4 bd-d2"><dd>354个</dd></div>
                    <div class="col-lg-4 col-xs-4 bd-d2"><dd>2045370个</dd></div>
                    <!--<dd>2075724个</dd>
                    <dd>354个</dd>
                    <dd>2045370个</dd>-->
                </div>
            </div>
            <div class="ft col-lg-12 col-xs-12">
                <p class="col-lg-12 col-xs-12">可预约医生数</p>
                <div class="col-lg-12 col-xs-12">
                    <span class="ft-span1">0</span>
                    <span class="ft-span1">0</span>
                    <span class="ft-span1">0</span>
                    <span class="ft-span2">5</span>
                    <span class="ft-span2">7</span>
                    <span class="ft-span2">8</span>
                    <span class="ft-span2">6</span>
                    <span class="ft-span2">8</span>
                </div>
                <p class="col-lg-12 col-xs-12">已服务人数</p>
                <div class="col-lg-12 col-xs-12">
                    <span class="ft-span1">0</span>
                    <span class="ft-span2">5</span>
                    <span class="ft-span2">7</span>
                    <span class="ft-span2">2</span>
                    <span class="ft-span2">2</span>
                    <span class="ft-span2">9</span>
                    <span class="ft-span2">1</span>
                    <span class="ft-span2">4</span>
                </div>
            </div>
        </div>
    </div>
    <div class="g-hd-doctor col-lg-12 col-xs-12 row">
        <div class="doctor-hd col-lg-12 col-xs-12">
            <h3 class="doctor-hd-h3  col-lg-6 col-xs-12">名医推荐</h3>
            <div class="col-lg-6 col-xs-12 doctor-hd-lx ">
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active" style="width: 110px;">
                        <a href="#xe" data-toggle="tab">小儿常见病</a>
                    </li>
                    <li style="width: 80px;">
                        <a href="#fck" data-toggle="tab">妇产科</a>
                    </li>
                    <li style="width: 70px;">
                        <a href="#yk" data-toggle="tab">眼科</a>
                    </li>
                    <li style="width: 110px;">
                        <a href="#zx" data-toggle="tab">整形美容科</a>
                    </li>
                    <li style="width: 80px;">
                        <a href="#pf" data-toggle="tab">皮肤科</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="doctor-con col-lg-12 col-xs-12">
            <div id="myTabContent" class="tab-content col-lg-12 col-xs-12">
                <div class="tab-pane fade in active col-lg-12 col-xs-12" id="xe">
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20141020111455.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor1.doctorName}</a><span>${requestScope.doctor1.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor1.oficeName}</dd>
                                <dd>${requestScope.doctor1.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor1.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20141113114159.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor2.doctorName}</a><span>${requestScope.doctor2.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor2.oficeName}</dd>
                                <dd>${requestScope.doctor2.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor2.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20160302101254889_706.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor3.doctorName}</a><span>${requestScope.doctor3.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor3.oficeName}</dd>
                                <dd>${requestScope.doctor3.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor3.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20160406101725490_770.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor4.doctorName}</a><span>${requestScope.doctor4.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor4.oficeName}</dd>
                                <dd>${requestScope.doctor4.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor4.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="fck">
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20110402100357357.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor5.doctorName}</a><span>${requestScope.doctor5.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor5.oficeName}</dd>
                                <dd>${requestScope.doctor5.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor5.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20110402100526526.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor6.doctorName}</a><span>${requestScope.doctor6.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor6.oficeName}</dd>
                                <dd>${requestScope.doctor6.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor6.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20151217154132445_39.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor7.doctorName}</a><span>${requestScope.doctor7.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor7.oficeName}</dd>
                                <dd>${requestScope.doctor7.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor7.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20150618111107.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor8.doctorName}</a><span>${requestScope.doctor8.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor8.oficeName}</dd>
                                <dd>重${requestScope.doctor8.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor8.doctorName}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="yk">
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20160216155507807_752.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor9.doctorName}</a><span>${requestScope.doctor9.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor9.oficeName}</dd>
                                <dd>${requestScope.doctor9.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor9.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20110402160353353.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor10.doctorName}</a><span>${requestScope.doctor10.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor10.oficeName}</dd>
                                <dd>${requestScope.doctor10.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor10.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20110402160814814.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor11.doctorName}</a><span>${requestScope.doctor11.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor11.oficeName}</dd>
                                <dd>${requestScope.doctor11.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor11.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20160301140042300_311.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor12.doctorName}</a><span>${requestScope.doctor12.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor12.oficeName}</dd>
                                <dd>${requestScope.doctor12.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor12.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="zx">
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20170223161036698_197.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor13.doctorName}</a><span>${requestScope.doctor13.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor13.oficeName}</dd>
                                <dd>${requestScope.doctor13.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor13.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20110402094602462.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor14.doctorName}</a><span>${requestScope.doctor14.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor14.oficeName}</dd>
                                <dd>${requestScope.doctor14.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor14.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20151102145720459_346.gif" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor15.doctorName}</a><span>${requestScope.doctor15.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor15.oficeName}</dd>
                                <dd>${requestScope.doctor15.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor15.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20151229104605138_49.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor16.doctorName}</a><span>${requestScope.doctor16.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor16.oficeName}</dd>
                                <dd>${requestScope.doctor16.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor16.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="pf">
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/201104021619451945.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor17.doctorName}</a><span>${requestScope.doctor17.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor17.oficeName}</dd>
                                <dd>${requestScope.doctor17.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor17.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20180403165311112_512.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor18.doctorName}</a><span>${requestScope.doctor18.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor18.oficeName}</dd>
                                <dd>${requestScope.doctor18.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor18.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20180403165712238_849.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor19.doctorName}</a><span>${requestScope.doctor19.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor19.oficeName}</dd>
                                <dd>${requestScope.doctor19.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor19.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                    <div class="doctor-con-d col-lg-3 col-xs-12">
                        <div class="doctor-con-d-top">
                            <div class="radius"><img src="img/20160817103850331_540.jpg" /></div>
                            <dl>
                                <dt><a href="">${requestScope.doctor20.doctorName}</a><span>${requestScope.doctor20.doctorGrade}</span></dt>
                                <dd>${requestScope.doctor20.oficeName}</dd>
                                <dd>${requestScope.doctor20.hospitalName}</dd>
                            </dl>
                        </div>
                        <div class="mid">
                            <div class="fen">5分</div>
                            <p>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                                <span class="pf01"></span>
                            </p>
                        </div>
                        <div class="bottom">
                            <span>擅长：</span> ${requestScope.doctor20.doctorIntro}
                        </div>
                        <div class="bottom-btn">
                            <a href="#">
                                <img src="img/yy.png" />
                            </a>
                            <a href="#">
                                <img src="img/tw.png" />
                            </a>
                            <a href="#">
                                <img src="img/dh.jpg" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="g-hd-link col-lg-12 col-xs-12 row">
        <div class="link-hd col-lg-12 col-xs-12">
            <span class="link-hd-span1">友情连接</span>
            <span class="link-hd-span2">以下排名不分先后</span>
            <a href="#" style="float: right;padding-left: 15px;padding-right: 10px">更多&gt;</a>
        </div>
        <div class="picMarquee-left col-lg-12 col-xs-12">
            <ul>
                <li class="col-xs-4 col-lg-2"><img src="img/030918048uwz.jpg" alt="" /></li>
                <li class="col-xs-4 col-lg-2"><img src="img/03092240jccu.jpg" alt="" /></li>
                <li class="col-xs-4 col-lg-2"><img src="img/03092333qitd.jpg" alt="" /></li>
                <li class="col-xs-4 col-lg-2"><img src="img/05143306aoot.jpg" alt="" /></li>
                <li class="col-xs-4 col-lg-2"><img src="img/060959076rez.jpg" alt="" /></li>
                <li class="col-xs-4 col-lg-2"><img src="img/06161943boou.jpg" alt="" /></li>
                <!--<li><img src="img/08172459c0g3.png" alt="" /></li>-->
            </ul>
        </div>
        <div class="text-link col-lg-12 col-xs-12">
            <div class="col-lg-12 col-xs-12">
                <a href="">云信医疗</a>
                |

                <a href="">第三军医西南大学</a>
                |

                <a href="">重庆医科大学附属儿童医院</a>
                |

                <a href="">第三军医大学新桥医院</a>
                |

                <a href="">重庆医科大学附属第一医院</a>
                |

                <a href="">医生点评</a>
                |
            </div>
            <div class="col-lg-12 col-xs-12">
                <a href="">重庆医科大学附属第二医院</a>
                |
                <a href="">重庆市肿瘤医院</a>
                |
                <a href="">重庆市急救医疗中心</a>
                |
                <a href="">重庆市涪陵中心医院</a>
                |
                <a href="">重庆海扶医院</a>
                |
                <a href="">生活养生</a>
                |
            </div>
            <div class="col-lg-12 col-xs-12">
                <a href="">重庆市卫生信息中心</a>
                |
                <a href="">子宫肌瘤患者家园</a>
                |
                <a href="">重庆市药品安全科普中心</a>
                |
                <a href="">动脉网</a>
                |
                <a href="">合肥健康网</a>
                |
                <a href="">重庆市巴南区人民医院</a>
                |
            </div>
        </div>
    </div>
    <div class="g-ft-bottom col-lg-12 col-xs-12 row">
        <div class="bottom-logo col-lg-4 col-xs-12">
            <a href=""><img src="img/bottom_yst_logo2.gif" alt="" /></a>
            <a href=""><img src="img/bottom_wsj_logo2.gif" alt="" /></a>
        </div>
        <div class="bottom-list1 col-lg-1 col-xs-6 ">
            <dl>
                <dt><a href="">用户服务</a></dt>
                <dd><a href="">帮助中心</a></dd>
                <dd><a href="">意见反馈</a></dd>
                <dd><a href="">黄牛举报</a></dd>
            </dl>
        </div>
        <div class="bottom-list2 col-lg-2 col-xs-6">
            <dl>
                <dt><a href="">医院加盟</a></dt>
                <dd><a href="">接入医事通的好处</a></dd>
                <dd><a href="">医事通提供的服务</a></dd>
                <dd><a href="">现在就申请接入</a></dd>
                <dd><a href=""><img src="img/21.gif"/></a></dd>
            </dl>
        </div>
        <div class="bottom-list3 col-lg-5 col-xs-12">
            <dl>
                <dt><a href="">关于我们</a></dt>
                <dd><span>Copyright©1998-2017 Adtech All Rights Reserved</span></dd>
                <dd><span>重庆云信医疗科技股份有限公司 版权所有 2017 渝ICP备11004654号-2</span></dd>
                <dd><a href="">增值电信业务经营许可证 B2-20070268</a></dd>
                <dd><a href="">互联网药品信息服务资格证书 (渝)-经营性-2016-0003</a></dd>
            </dl>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="js/jquery-3.3.1.js" ></script>
<script type="text/javascript" src="js/bootstrap.js" ></script>
</html>
