package cn.com.jkwin.java.Entity;


import java.util.Date;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/24 13:58
 * @Modified By:
 */
public class Doctor {
    private Integer doctorId;
    private  String doctorName;
    private String doctorGrade;
    private String doctorIntro;
    private Date doctorTime;
    private int oficeId;
    private int hospitalId;
    private  String oficeName;
    private String hospitalName;

    public Doctor() {
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getDoctorGrade() {
        return doctorGrade;
    }

    public void setDoctorGrade(String doctorGrade) {
        this.doctorGrade = doctorGrade;
    }

    public String getDoctorIntro() {
        return doctorIntro;
    }

    public void setDoctorIntro(String doctorIntro) {
        this.doctorIntro = doctorIntro;
    }

    public Date getDoctorTime() {
        return doctorTime;
    }

    public void setDoctorTime(Date doctorTime) {
        this.doctorTime = doctorTime;
    }

    public int getOficeId() {
        return oficeId;
    }

    public void setOficeId(int oficeId) {
        this.oficeId = oficeId;
    }

    public int getHospitalId() {
        return hospitalId;
    }

    public void setHospitalId(int hospitalId) {
        this.hospitalId = hospitalId;
    }

    public String getOficeName() {
        return oficeName;
    }

    public void setOficeName(String oficeName) {
        this.oficeName = oficeName;
    }

    public String getHospitalName() {
        return hospitalName;
    }

    public void setHospitalName(String hospitalName) {
        this.hospitalName = hospitalName;
    }
}
