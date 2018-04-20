package cn.com.jkwin.java.Entity;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 15:01
 * @Modified By:
 */
public class AdminOfice {
    private Integer oficeId;//门诊编号
    private String oficeName;//门诊名
    public Integer getOficeId() {
        return oficeId;
    }

    public void setOficeId(Integer oficeId) {
        this.oficeId = oficeId;
    }

    public String getOficeName() {
        return oficeName;
    }

    public void setOficeName(String oficeName) {
        this.oficeName = oficeName;
    }
}
