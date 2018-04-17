<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/11 0011
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>医事通-客服咨询</title>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/jquery.qqFace.js"></script>
    <link href="css/Chat.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" >
    <script type="text/javascript">
        var ws;//一个ws就相当于一个通信管道
        if(${requestScope.user!=null}){
        var userId = "${requestScope.user.userId}";
        var username = "${requestScope.user.username}";
        var userType="${requestScope.usertype}";
            alert("userType"+userType+"????????");
        }else{
            var userId = "${requestScope.userId}";
            var userType="${requestScope.userType}";
            var username="游客"+userId;
        }
        //编译为二进制传出去
        var username2=encodeURI(username);
        var target="ws://localhost:8080/yangli?username="+username2;
        var num = 0;//用于计数
        window.onload=subOpen();
        function subOpen(){
            if ('WebSocket' in window) {
                //建立通道连接
                ws = new WebSocket(target);
            } else if ('MozWebSocket' in window) {
                ws = new MozWebSocket(target);
            } else {
                alert('你的浏览器不支持WebSocket！');
                return;
            }
            ws.onmessage=function (event) {
                var kefu=document.getElementById("kefu");
                var kehu=document.getElementById("kehu");
                var jsonObj=eval("("+event.data+")");
                //将获取到的二进制转回来
                var uname=decodeURI(jsonObj.username);

                if(userType=="咨询师"){
                    if(username==uname) {
                        alert("咨询师的对话框");
                        var name = "<span style='padding-left: 278px'>" + uname + "&nbsp;" + CurentTime() + "</span>";
                        var sp = "<br><span style='padding-left: 330px'>" + replace_em(jsonObj.msg) + "</span>";
                        kefu.innerHTML += "<p  id='kehuchat' style='float: right'>" + name + sp + "</p><p class='clear'></p>";
                    }else if(username!=uname){
                        alert("客户的对话框");
                        var name = "<span >" + uname + "&nbsp;" + CurentTime() + "</span>";
                        var sp = "<br><span >" + replace_em(jsonObj.msg) + "</span>";
                        kefu.innerHTML += "<p id='huiyuan' >" + name + sp + "</p>";
                    }
                }else {
                    if(username!=uname) {
                        alert("对方的对话框");
                        if(num==0){
                            var name = "<span>" + uname + "&nbsp;" + CurentTime() + "</span>";
                            var sp = "<br><span> 您好，欢迎咨询！ </span>";
                            kefu.innerHTML += "<p class='kehuimg'>" + name + sp + "</p>";
                            num++;
                        }
                        var name = "<span>" + uname + "&nbsp;" + CurentTime() + "</span>";
                        var sp = "<br><span>" + replace_em(jsonObj.msg) + "</span>";
                        kefu.innerHTML += "<p class='kehuimg'>" + name + sp + "</p>";
                    }else if(username==uname){
                        alert("我的对话框");
                        var name = "<span style='padding-left: 278px'>" + uname + "&nbsp;" + CurentTime() + "</span>";
                        var sp = "<br><span style='padding-left: 330px'>" + replace_em(jsonObj.msg) + "</span>";
                        kefu.innerHTML += "<p class='myimg' style='float: right'>" + name + sp + "</p><p class='clear'></p>";
                    }
                }

                //设置滚动条
                var heit = $("#kefu")[0].scrollHeight;
                $("#kefu").scrollTop(heit);
            };
        }
        function subSend(){
            var talk = document.getElementById("saytext").value;
            ws.send(talk);
            //清空
            document.getElementById("saytext").value="";
        }
        //获取当前时间
        function CurentTime()
        {
            var now = new Date();
            var hh = now.getHours();            //时
            var mm = now.getMinutes();          //分
            var ss = now.getSeconds();           //秒
            var clock ="";
            if(hh < 10){clock += "0";}
            clock += hh + ":";
            if (mm < 10){clock += '0';}
            clock += mm + ":";
            if (ss < 10) {clock += '0';}
            clock += ss;
            return(clock);
        }
        //表情插件代码
        $(function(){
            $('.emotion').qqFace({
                id : 'facebox',
                assign:'saytext',
                path:'arclist/'	//表情存放的路径
            });

        });
        function replace_em(str){

            str = str.replace(/\</g,'&lt;');

            str = str.replace(/\>/g,'&gt;');

            str = str.replace(/\n/g,'<br/>');

            str = str.replace(/\[em_([0-9]*)\]/g,'<img src="arclist/$1.gif" border="0" />');

            return str;

        }
        //设置回车键发送功能，并禁止换行
        document.onkeydown=function(event){
            var e = event || window.event || arguments.callee.caller.arguments[0];
            if(e && e.keyCode==27){ // 按 Esc
                //要做的事情
            }
            if(e && e.keyCode==113){ // 按 F2
                //要做的事情
            }
            if(e && e.keyCode==13){ // enter 键
                //要做的事情
                subSend();
                //禁止换行
                event.cancelBubble=true;
                event.preventDefault();
                event.stopPropagation();
            }
        };
    </script>
</head>
<body>
<div id="father" class="container-fluid">
    <div class="row ">
    <div id="top" class="col-sm-12 col-md-12" >
        <p>医事通</p>
        <p>为您在线解答售前(5×8)，售后咨询(7×24)服务</p>
    </div>
    <div id="left" class="col-sm-6 col-md-12">
        <div id="chatcontent">
            <p id="welcome">${requestScope.username}欢迎为您咨询，期待为您服务!</p>
            <div id="kefu">

            </div>
        </div>
        <div id="mid">
            <p>
                <span class="emotion"><img src="arclist/1.gif"> </span>
            </p>
        </div>
        <div id="sent">
            <div id="show"></div>
            <div class="comment">
                <div class="com_form">
                    <textarea id="saytext" class="input" name="saytext"></textarea>
                    <input id="dosent"  type="button" class="sub_btn" value="发送" onclick="subSend()">
                </div>
            </div>
        </div>
    </div>
    <div id="right" class="col-sm-6 hidden-xs">
        <p id="aboutwe">关于我们</p>
        <div id="text">
        &nbsp;&nbsp;&nbsp;&nbsp;温馨提醒-：人工客服工作时间为周一到周五：8:30—21:00，
         法定节假日及周末：8:30—17:30 ,非工作时间您可以给我们留言；
         也可以发邮件给我们：
         <br><a href="yst@adtech.com.cn">yst@adtech.com.cn</a>,我们会在工作时间尽快给您回复，祝您-健康！
            <br>客服热线：4008-115-160
            <br><a>帮助中心</a>
            <br>医事通是面向社会公众、医疗机构、以及第三方提供医疗健康服务的信息服务平台，医事通平台采用云模式构建，通过各种云端设备（PC、手机、有线电视、健康卡、血糖仪等医疗终端设备）的使用，提供疾病预防、导医就诊、预约挂号、远程探视、妇幼保健、慢病服务、安全支付、康复关怀等方便、快捷、实用的全方位服务，真正实现医疗健康服务的“云端应用”，建立集互联网、移动互联网、云端系统为一体的医疗物联网应用平台。

        </div>
        <div id="logoimg">
            <img src="img/100527321392371416.jpg">
        </div>
    </div>
     <div class="clear"></div>
    </div>
</div>
</body>
</html>
