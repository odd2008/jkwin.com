function myFunction(){
    if(document.getElementById('Pname').value=='')
    {
        alert('姓名不能为空！');
        return false;
    }
    if(document.getElementById('Pidcard').value=='')
    {
        alert('身份证不能为空！');
        return false;
    }
    if(document.getElementById('Pphone').value=='')
    {
        alert('电话不能为空！');
        return false;
    }

    var v=$("#ab").attr('checked');
    if($("#ab").is(":checked")){
        window.location.href="/jsp/renai.jsp"
        }else {
            alert("请同意支付协议！");
        }
};