package cn.com.jkwin.java.Entity;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 10:17
 * @Modified By:
 */
public class Hospital {
    private Integer hospitalId;//医院编号
    private String hospitalName;//医院姓名
    private String hospitalType;//医院类型
    private String hospitalAddress;//医院地址
    private Integer hospitalPhoneNum;//医院联系电话
    private String hospitalMainpage;//医院主页
    private String hospitalIntro;//医院简介
    private String regionId;//地区编号  与地区表链接
    public Integer getHospitalId() {
        return hospitalId;
    }

    public void setHospitalId(Integer hospitalId) {
        this.hospitalId = hospitalId;
    }

    public String getHospitalName() {
        return hospitalName;
    }

    public void setHospitalName(String hospitalName) {
        this.hospitalName = hospitalName;
    }

    public String getHospitalType() {
        return hospitalType;
    }

    public void setHospitalType(String hospitalType) {
        this.hospitalType = hospitalType;
    }

    public String getHospitalAddress() {
        return hospitalAddress;
    }

    public void setHospitalAddress(String hospitalAddress) {
        this.hospitalAddress = hospitalAddress;
    }

    public Integer getHospitalPhoneNum() {
        return hospitalPhoneNum;
    }

    public void setHospitalPhoneNum(Integer hospitalPhoneNum) {
        this.hospitalPhoneNum = hospitalPhoneNum;
    }

    public String getHospitalMainpage() {
        return hospitalMainpage;
    }

    public void setHospitalMainpage(String hospitalMainpage) {
        this.hospitalMainpage = hospitalMainpage;
    }

    public String getHospitalIntro() {
        return hospitalIntro;
    }

    public void setHospitalIntro(String hospitalIntro) {
        this.hospitalIntro = hospitalIntro;
    }

    public String getRegionId() {
        return regionId;
    }

    public void setRegionId(String regionId) {
        this.regionId = regionId;
    }
}
