package cn.com.jkwin.java.Entity;

public class Patient {
    private Integer Pid;
    private String Pname;
    private String Pidcard;
    private String Pphone;

    public Patient() {

    }

    public Integer getPid() {
        return Pid;
    }

    public void setPid(Integer pid) {
        Pid = pid;
    }

    public String getPname() {
        return Pname;
    }

    public void setPname(String pname) {
        Pname = pname;
    }

    public String getPidcard() {
        return Pidcard;
    }

    public void setPidcard(String pidcard) {
        Pidcard = pidcard;
    }

    public String getPphone() {
        return Pphone;
    }

    public void setPphone(String pphone) {
        Pphone = pphone;
    }
}