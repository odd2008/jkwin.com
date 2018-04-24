function checkForm() {
	var phonetip = checkPhone();
	var pwdtip = checkPassword();
	return phonetip && pwdtip;
}
//验证手机号 
function checkPhone() {
	var userphone = document.getElementById('userphone');
	var phoneErr = document.getElementById('phone-err');
	var pattern = /^1[34578]\d{9}$/; //验证手机号正则表达式 
	//判断为空
	if(userphone.value == "") {
		phoneErr.innerHTML = "<img src='../img/pic_02.gif'>手机号不可为空"
		phoneErr.className = "error"
		return false;
	}
	//判断错误
	if(!pattern.test(userphone.value)) {
		phoneErr.innerHTML = "<img src='../img/pic_02.gif'>手机号码不合规范"
		phoneErr.className = "error"
		return false;
	} else {
		phoneErr.innerHTML = ""
		return true;
	}
}
//验证密码   
function checkPassword() {
	var userpwd = document.getElementById('pwd');
	var userpwderr = document.getElementById('pwd-err');
	//判断为空
	if(userpwd.value == "") {
		userpwderr.innerHTML = "<img src='../img/pic_02.gif'>请输入密码"
		userpwderr.className = "error"
		return false;
	} else {
		return true;
	}
}