function checkForm() {
    var phonetip = checkPhone();
    var passtip = checkPassword();
    var imgtip = checkImg();
    var Smstip = checkSms();
    return phonetip && passtip && Smstip && imgtip ;
}

//验证手机号
function checkPhone() {
    var userphone = document.getElementById('userPhone').value;
    var phoneErr = document.getElementById('phone-err');
    var pattern = /^1[34578]\d{9}$/; //验证手机号正则表达式
    //判断为空
    if (userphone == "") {
        phoneErr.innerHTML = "<img src='../img/register/pic_02.gif'>手机号不可为空"
        phoneErr.className = "error"
        return false;
    }
    //判断错误
    if (!pattern.test(userphone)) {
        phoneErr.innerHTML = "<img src='../img/register/pic_02.gif'>手机号码不合规范"
        phoneErr.className = "error"
        return false;
    } else {

        $.post("/VerificationInformationServlet", "username=" + userphone, x);

        function x(data) {

            if (data == "true") {
                phoneErr.innerHTML = "<img src='../img/register/pic_02.gif'>该手机号已被注册"
                phoneErr.className = "error"
                return false;
            } else {
                phoneErr.innerHTML = "<img src='../img/register/pic_03.gif'>";
                return true;
            }
        }

    }

}

//验证密码
function checkPassword() {
    var userpwd = document.getElementById('pwd');
    var userpwderr = document.getElementById('pwd-err');
    var pattern = /^\w{4,8}$/; //密码要在4-8位
    //判断为空
    if (userpwd.value == "") {
        userpwderr.innerHTML = "<img src='../img/register/pic_02.gif'>密码不可为空"
        userpwderr.className = "error"
        return false;
    }
    //判断错误
    if (!pattern.test(userpwd.value)) {
        userpwderr.innerHTML = "<img src='../img/register/pic_02.gif'>请输入4-8位数密码"
        userpwderr.className = "error"
        return false;
    } else {
        userpwderr.innerHTML = "<img src='../img/register/pic_03.gif'>";
        return true;
    }
}


