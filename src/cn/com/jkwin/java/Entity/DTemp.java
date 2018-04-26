package cn.com.jkwin.java.Entity;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/24 13:55
 * @Modified By:
 */
public class DTemp {
    private  Integer temp;
    private  Integer hospitalId;
    private Integer doctor;

    public Integer getTemp() {
        return temp;
    }

    public void setTemp(Integer temp) {
        this.temp = temp;
    }

    public Integer getHospitalId() {
        return hospitalId;
    }

    public void setHospitalId(Integer hospitalId) {
        this.hospitalId = hospitalId;
    }

    public Integer getDoctor() {
        return doctor;
    }

    public void setDoctor(Integer doctor) {
        this.doctor = doctor;
    }
}
