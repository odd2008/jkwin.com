<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/9 0009
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Socket</title>
    <script type="text/javascript">
        var ws;//一个ws就相当于一个通信管道
        var username = "${requestScope.username}";
        var target="ws://localhost:8080/yangli?username="+username;
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
                var dv=document.getElementById("dv");
                dv.innerHTML+="<p>"+event.data+"</p>";
            };
        }
        function subSend(){
            var msg = document.getElementById("msg").value;
            ws.send(username+msg);
            //清空
            document.getElementById("msg").value="";
        }
    </script>
</head>
<body>
<%--<button onclick="subOpen()">open</button>--%>
<input id="msg"> <button onclick="subSend()">发送</button>
<div id="dv"></div>
</body>
</html>
