package cn.com.jkwin.java.Entity;

public class Patient {
    private Integer patientid;
    private String patientName;
    private String patientIDcard;
    private String patientPhone;

    public Patient() {

    }

    public Integer getPatientid() {
        return patientid;
    }

    public void setPatientid(Integer patientid) {
        this.patientid = patientid;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public String getPatientIDcard() {
        return patientIDcard;
    }

    public void setPatientIDcard(String patientIDcard) {
        this.patientIDcard = patientIDcard;
    }

    public String getPatientPhone() {
        return patientPhone;
    }

    public void setPatientPhone(String patientPhone) {
        this.patientPhone = patientPhone;
    }
}