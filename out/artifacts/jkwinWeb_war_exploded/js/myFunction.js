
function myFunction() {
    if (document.getElementById('Pname').value == '') {
        alert('姓名不能为空！');
        return false;
    }
    if (document.getElementById('Pidcard').value == '') {
        alert('身份证不能为空！');
        return false;
    }
    if (document.getElementById('Pphone').value == '') {
        alert('电话不能为空！');
        return false;
    }
}