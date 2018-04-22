
/*用户名验证*/
function checkUser(){
    var str = str.substr(0, 1); //截取用户提交的用户名的前两字节，也就是姓。
    var surname = " 赵钱孙李周吴郑王冯陈褚卫蒋沈韩杨朱秦尤许何吕施张孔曹严华金魏陶姜戚谢邹喻柏水窦章云苏潘葛奚范彭" +
        "郎鲁韦昌马苗凤花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤 滕殷罗毕郝邬安常乐于时傅皮卞齐康伍余元卜顾孟平黄和穆萧尹姚" +
        "邵堪汪祁毛禹狄米贝明臧计伏成戴谈宋茅庞熊纪舒屈项祝董粱杜阮蓝闵席季麻强贾路娄危江童颜郭 梅盛林刁钟徐邱骆高夏蔡" +
        "田樊胡凌霍虞万支柯咎管卢莫经房裘缪干解应宗宣丁贲邓郁单杭洪包诸左石崔吉钮龚程嵇邢滑裴陆荣翁荀羊於惠甄魏加封芮羿" +
        "储靳汲邴糜松 井段富巫乌焦巴弓牧隗山谷车侯宓蓬全郗班仰秋仲伊宫宁仇栾暴甘钭厉戎祖武符刘姜詹束龙叶幸司韶郜黎蓟薄印" +
        "宿白怀蒲台从鄂索咸籍赖卓蔺屠蒙池乔阴郁胥能苍双 闻莘党翟谭贡劳逄姬申扶堵冉宰郦雍郤璩桑桂濮牛寿通边扈燕冀郏浦尚农温" +
        "别庄晏柴瞿阎充慕连茹习宦艾鱼容向古易慎戈廖庚终暨居衡步都耿满弘匡国文寇广禄阙东 殴殳沃利蔚越夔隆师巩厍聂晁勾敖融冷" +
        "訾辛阚那简饶空曾毋沙乜养鞠须丰巢关蒯相查后江红游竺权逯盖益桓公万俟司马上官欧阳夏侯诸葛闻人东方赫连皇甫尉迟公羊 澹台" +
        "公冶宗政濮阳淳于仲孙太叔申屠公孙乐正轩辕令狐钟离闾丘长孙慕容鲜于宇文司徒司空亓官司寇仉督子车颛孙端木巫马公西漆雕乐" +
        "正壤驷公良拓拔夹谷宰父谷粱 晋楚闫法汝鄢涂钦段干百里东郭南门呼延妫海羊舌微生岳帅缑亢况後有琴梁丘左丘东门西门商牟佘佴伯赏南宫墨哈谯笪年爱阳佟第五言福";
    r = surname.search(str); // 查找字符串。
    if (r == -1) {
        return false;
    }
    else{
        return true;
    }
}
function validate(theform) {
    if (document.getElementById("P").value != "") {
        if (document.getElementById("P").value.length == 1) {
            document.getElementById("_Pname").innerHTML ="真实姓名必须是一个字以上！";
            document.getElementById("P").focus();
            return false;
        }
        var nnname = document.getElementById("P").value;
        var reg = /^([\u4E00-\u9FA5])*$/;
        if (arr = nnname.match(reg)) {
            if (!check_surname(nnname)) {
                document.getElementById("_Pname").innerHTML ="真实姓名格式错误！";
                document.getElementById("P").focus();
                return false;
            }
        } else {  // www.jbxue.com
            document.getElementById("_Pname").innerHTML ="真实姓名必须全部为中文";
            document.getElementById("P").focus();
            return false;
        }
        document.getElementById("_Pname").innerHTML ="姓名格式正确！";
    }else{
        document.getElementById("_Pname").innerHTML ="请填入真实姓名！";
    }
    return true;
}
/*身份证验证*/
var arr2=[7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
var arr3=[1,0,'X',9,8,7,6,5,4,3,2];
function checkid(){
    var t=document.getElementById("Pidcard").value;
    if(t.length==18){
        var arr=t.split('');
        var s;
        var reg = /^\d+$/;
        var pd=0;
        for(i=0;i<17;i++){
            if(reg.test(arr[i])){
                s=true;
                pd=arr[i]*arr2[i]+pd;
            }else{
                s=false;
                break;
            }
        }
        if(s=true){
            var r=pd%11;
            if(arr[17]==arr3[r]){
                document.getElementById("show").innerHTML="身份证号合法  尾号为："+arr3[r];
            }else{
                document.getElementById("show").innerHTML="非合法身份证号";
            }
        }

    }else{
        document.getElementById("show").innerHTML="非合法身份证号";
    }
}

