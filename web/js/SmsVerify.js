var getcode = document.getElementById('getCode');
var flag = 60;
var random = 888888;

function getcodes() {
    var telnumber = document.getElementById('userPhone').value;

    $.post("/TextingServlet", "telnumber=" + telnumber, x,"text");

    function x(data) {
        random = data;
    }

}

function count() {
    if (flag < 60) {
        return;
    }
    timer();


}

//短信接收的时间段
function timer() {
    flag--;
    getcode.innerHTML = flag + "秒后重新获取";
    if (flag == 0) {
        getcode.innerHTML = "获取验证码";
        flag = 60;
    } else {
        setTimeout("timer()", 1000);
    }
}

//验证短信
function checkSms() {
    var Sms = document.getElementById('SmsCode');
    var Smserr = document.getElementById('Sms-err')
    //判断为空
    if (Sms.value == "") {
        Smserr.innerHTML = "<img src='../img/register/pic_02.gif'>请填写你收到的验证码";
        Smserr.className = "error";
        return false;
    } else {


        var SmsCode = document.getElementById('SmsCode').value;
        if (random == SmsCode) {
            Smserr.innerHTML = "<img src='../img/register/pic_03.gif'>"
            return true;
        } else {
            Smserr.innerHTML = "<img src='../img/register/pic_02.gif'>"
            Smserr.innerHTML = "验证码错误";

            return false;
        }
    }
}