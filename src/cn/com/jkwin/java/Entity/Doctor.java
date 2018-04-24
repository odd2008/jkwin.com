package cn.com.jkwin.java.Entity;

public class Doctor {
    private Integer doctorId;
    private String doctorName;
    private String doctorGrade;
    private String doctorIntro;
    private String oficeName;
    private String hospitalName;
    public Doctor() {
    }

    public Doctor(Integer doctorId, String doctorName, String doctorGrade, String doctorIntro, String oficeName, String hospitalName) {
        this.doctorId = doctorId;
        this.doctorName = doctorName;
        this.doctorGrade = doctorGrade;
        this.doctorIntro = doctorIntro;
        this.oficeName = oficeName;
        this.hospitalName = hospitalName;
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
