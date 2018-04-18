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
<body>
<div class="container">
    <div class="g-hd-guahao col-lg-12 col-xs-12 row">
        <div class="hospital-tj col-lg-8 col-xs-12  ">
            <div class="hospital-hd col-lg-12 col-xs-12">
                <div class="col-lg-9 col-xs-6" style="height: 44px;"><h4 >医院推荐</h4></div>
                <div class="col-lg-3 col-xs-6 hospital-hd-cit ">
                    <ul id="myTab" class="nav nav-tabs">
                        <li class="active">
                            <a href="#cq" data-toggle="tab">重庆</a>
                        </li>
                        <li>
                            <a href="#sc" data-toggle="tab">四川</a>
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
                                        <a>陆军军医大学西南医院</a>
                                    </dd>
                                    <dd>三级甲等</dd>
                                    <dd>总机：（023）65318301</dd>
                                    <dd><span>1113</span>位医生可挂号</dd>
                                </dl>
                            </div>
                            <div class="hospital-tj-d col-lg-4 col-xs-4">
                                <img src="img/20180402165740359_629.jpg" />
                                <dl>
                                    <dd>
                                        <a>陆军军医大学新桥医院</a>
                                    </dd>
                                    <dd>三级甲等</dd>
                                    <dd>总机：（023）68755114</dd>
                                    <dd><span>1646</span>位医生可挂号</dd>
                                </dl>
                            </div>
                            <div class="hospital-tj-d col-lg-4 col-xs-4">
                                <img src="img/08DE4413_B9A2_493D_AD0E_D8637E459AA4.jpg" />
                                <dl>
                                    <dd>
                                        <a>陆军军医大学附属医院</a>
                                    </dd>
                                    <dd>三级甲等</dd>
                                    <dd>023-68811229</dd>
                                    <dd><span>1023</span>位医生可挂号</dd>
                                </dl>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="sc">
                            <div class="hospital-tj-d col-lg-4 col-xs-4">
                                <img src="img/hosptial.jpg" />
                                <dl>
                                    <dd>
                                        <a>阆中市妇幼保健院</a>
                                    </dd>
                                    <dd>二级甲等</dd>
                                    <dd><span>0</span>位医生可挂号</dd>
                                </dl>
                            </div>
                            <div class="hospital-tj-d col-lg-4 col-xs-4">
                                <img src="img/hosptial.jpg" />
                                <dl>
                                    <dd>
                                        <a>广元市人民医院</a>
                                    </dd>
                                    <dd>三级甲等</dd>
                                    <dd><span>0</span>位医生可挂号</dd>
                                </dl>
                            </div>
                            <div class="hospital-tj-d col-lg-4 col-xs-4">
                                <img src="img/hosptial.jpg" />
                                <dl>
                                    <dd>
                                        <a>简阳市人民医院</a>
                                    </dd>
                                    <dd>三级特等</dd>
                                    <dd>02827017805</dd>
                                    <dd><span>308</span>位医生可挂号</dd>
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
                <p class="hd-p2"><span>1502</span>家医院</p>
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
                                <dt>李廷玉<span>礼嘉李廷玉</span></dt>
                                <dd>儿保科专家</dd>
                                <dd>重庆医科大学附属儿童医院</dd>
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
                            <span>擅长：</span> 擅长儿童营养、发育行为疾病诊治、儿童早期教育。
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
                                <dt>刘恩梅<span>礼嘉刘恩梅</span></dt>
                                <dd>呼吸科专家</dd>
                                <dd>重庆医科大学附属儿童医院</dd>
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
                            <span>擅长：</span> 熟悉小儿内科常见病、多发病及危重病的诊断和处理。擅长诊治反复呼吸道感染、难治性肺炎、支气管哮喘、慢性咳嗽、胸膜腔疾病等各种呼吸系统疾病。
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
                                <dt>余加林<span>礼嘉余加林</span></dt>
                                <dd>新生儿专家</dd>
                                <dd>重庆医科大学附属儿童医院</dd>
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
                            <span>擅长：</span> 熟悉小儿内科常见病、多发病及危重病的诊断和处理。擅长诊治反复呼吸道感染、难治性肺炎、支气管哮喘、慢性咳嗽、胸膜腔疾病等各种呼吸系统疾病。
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
                                <dt>周德凯<span>礼嘉周德凯</span></dt>
                                <dd>血管瘤专业专家</dd>
                                <dd>重庆医科大学附属儿童医院</dd>
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
                            <span>擅长：</span> 小儿普外科各种疾病；各类血管瘤、血管畸形、淋巴管瘤的诊治
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
                                <dt>梁志清<span>专家门诊</span></dt>
                                <dd>妇科专家门诊</dd>
                                <dd>陆军军医大学西南医院</dd>
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
                            <span>擅长：</span> 擅长于卵巢恶性肿瘤、子宫颈癌、外阴癌和子宫体癌，恶性黑色素瘤的综合治疗，尤以妇科良性和恶性肿瘤领域的手术治疗（特别是腹腔镜下手术治疗）有较深的造诣。 率先在国内开展了子宫内膜癌的腹腔镜下广泛子宫切除术和盆腔淋巴结切除术、压力性尿失禁的腹腔镜膀胱颈悬吊术、盆腔器官脱垂的子宫颈悬吊和直肠悬吊术等。 独创了腹腔镜下子宫动脉阻断加子宫肌瘤挖除治疗子宫肌瘤、三角形子宫体切除治疗子宫腺肌症、以及阴道癌的腹腔镜下全阴道切除术等。 擅长出生缺陷和胎儿疾病的诊断与宫内干预，在国内率先开展胎儿镜下激光凝固术阻断胎盘血管交通支治疗双胎输血综合征和EXIT处理胎儿气道梗阻性疾病。
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
                                <dt>常青<span>专家门诊</span></dt>
                                <dd>妇科专家门诊</dd>
                                <dd>陆军军医大学西南医院</dd>
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
                            <span>擅长：</span> 擅长妇科内分泌和老年疾病的保健与治疗。尤其是对围绝经期疾病的诊断和处理有独特的方法和丰富经验。擅长出生缺陷、母婴血型不合等高危妊娠的诊断和处理。
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
                                <dt>朱宁生<span>副高专家号</span></dt>
                                <dd>乳腺科</dd>
                                <dd>重庆肿瘤医院（未用）</dd>
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
                            <span>擅长：</span> 对乳腺癌的早期诊断、前哨淋巴结的活检、保留乳房、乳腺癌治疗的规范化等方面进行了深入研究，积累了丰富的经验，在该领域具有较高的临床理论和实践水平
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
                                <dt>杨锡蒂<span>主任医师教授</span></dt>
                                <dd>产科</dd>
                                <dd>重庆学府医院</dd>
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
                            <span>擅长：</span> 擅长项目：围产医学、各种的高危妊娠、妊娠合并症、并发症的诊断，妇科内分泌及不育症的诊治，妇科肿瘤诊断，享誉重庆地区乃至西南地区。
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
                                <dt>周志奇<span>主任医师</span></dt>
                                <dd>眼科</dd>
                                <dd>重庆爱尔眼科医院</dd>
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
                            <span>擅长：</span> 屈光不正、眼表疾病的诊治，2010年在重庆成功实施飞秒激光近视矫正术，对超高度近视者有丰富的临床研究经验。
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
                                <dt>阴正晴<span>名医门诊</span></dt>
                                <dd>眼科名医门诊</dd>
                                <dd>陆军军医大学西南医院</dd>
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
                            <span>擅长：</span> 有丰富的临床工作经验和坚实宽广的医学和眼科学基础理论知识，特别对眼底病和小儿眼科有较深入的研究，掌握本学科国际国内临床科研的发展现状。
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
                                <dt>王一<span>专家门诊</span></dt>
                                <dd>眼科名医门诊</dd>
                                <dd>陆军军医大学西南医院</dd>
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
                            <span>擅长：</span> 从事眼科临床工作28年，有丰富的临床工作经验和坚实宽广的医学和眼科学基础理论知识，开展玻璃体视网膜手术多年，在重庆市率先开展现代玻璃体手术,治疗了大量的严重眼外伤、复杂性视网膜脱离及各种原因引起的玻璃体出血等疾病的患者。在玻璃体视网膜手术及眼外伤治疗方面有丰富的临床经验
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
                                <dt>戴超<span>副主任医师</span></dt>
                                <dd>眼科门诊</dd>
                                <dd>陆军军医大学西南医院</dd>
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
                            <span>擅长：</span> 青光眼。
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
                                <dt>张家龙<span>主任医师</span></dt>
                                <dd>皮肤科</dd>
                                <dd>医事通认证医生</dd>
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
                            <span>擅长：</span> 各种原因所致的瘢疤痕修复美容、功能重建整形； 各种瘢痕、色沉、黑毛痣、血管瘤、斑秃整形美容； 各种原因所致的软组织缺损、急诊修复再造； 毁容再造、再植。
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
                                <dt>李世荣<span>专家门诊</span></dt>
                                <dd>整形外科专家门诊</dd>
                                <dd>陆军军医大学西南医院</dd>
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
                            <span>擅长：</span> 擅长各类整形美容手术，先后开展新业务新技术三十余项，在国际上率先采用阴囊皮瓣覆盖延长的海绵体作阴茎延长术，论文已在国际权威的美国整形外科杂志“PRS”（PRS105：596－599，2000）公开发表。1986年在国内率先将前臂尺侧皮瓣应用于临床，在国际上首先开展应用SOD提高非生理性皮瓣存活率的实验研究。
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
                                <dt>张恒术<span>主任医师</span></dt>
                                <dd>烧伤科/医疗美容科</dd>
                                <dd>重庆医科大学附属第一医院</dd>
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
                            <span>擅长：</span> 双眼皮、隆鼻术、眼袋切除术、除皱术、隆乳术、吸脂瘦身术、生殖器整形
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
                                <dt>李喆<span>主治医师</span></dt>
                                <dd>整形外科门诊</dd>
                                <dd>陆军军医大学西南医院</dd>
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
                            <span>擅长：</span> 从事整形美容行业近十年，师从中华医师协会美容整形分会会长、著名整形外科专家李世荣教授，毕业后在西南医院整形美容外科工作至今，具有丰富的临床经验, 指导多名进修生、研究生开展临床工作。收治了大量来自全国各地的整形与美容患者，独立完成手术数千例，其中成功完成头皮撕脱伤7例，为酉阳县面部被丈夫砍伤六刀的杨女士进行了成功修复，取得了非常满意的效果。 在面部的微创美容手术中有独到见解，主张自然、微创、快速恢复，对先天性单眼皮、上睑皮肤松弛、眼袋、鼻、唇外形欠佳等美容顾客具有丰富的临床经验，并在胸部的综合整治上摸索出一套行之有效的办法，典型病例及临床经验在国内核心期刊发表多篇论文，并获得国家发明专利一项。学术论文在第五届中国美容与整形医师大会上进行交流，并获得中青年优秀论文。
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
                                <dt>杨希川<span>专家门诊</span></dt>
                                <dd>皮肤科专家门诊</dd>
                                <dd>陆军军医大学西南医院</dd>
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
                            <span>擅长：</span> 主要从事毛囊基因调控及斑秃发病机理研究。擅长脱发性皮肤病的诊治及皮肤病理诊断。
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
                                <dt>李惠<span>主任医师</span></dt>
                                <dd>皮肤科</dd>
                                <dd>重庆医科大学附属第一医院</dd>
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
                            <span>擅长：</span> 擅长皮肤美容、结缔组织病、银屑病及疑难杂症的诊治
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
                                <dt>郝飞<span>专家门诊</span></dt>
                                <dd>皮肤科专家门诊</dd>
                                <dd>陆军军医大学西南医院</dd>
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
                            <span>擅长：</span> 从事临床工作30余年，擅长痤疮、面部皮炎、感染性皮肤病、性病、过敏性皮肤病以及复杂疑难皮肤病的诊治。
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
                                <dt>何威<span>专家号</span></dt>
                                <dd>皮肤.风湿免疫科门诊</dd>
                                <dd>陆军军医大学新桥医院</dd>
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
                            <span>擅长：</span> 银血病/白癜风等色素障碍性皮肤病/过敏性皮肤病/皮肤病理诊断/结缔组织疾病/风湿病/性传播疾病和疑难皮肤病的诊断与治疗。
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
