package cn.com.jkwin.java.Entity;

import com.sun.imageio.plugins.common.I18N;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/24 11:16
 * @Modified By:
 */
public class Temp {
    private Integer tempId;
    private Integer hospitalId;
    private Integer oficeId;

    public Integer getTempId() {
        return tempId;
    }

    public void setTempId(Integer tempId) {
        this.tempId = tempId;
    }

    public Integer getHospitalId() {
        return hospitalId;
    }

    public void setHospitalId(Integer hospitalId) {
        this.hospitalId = hospitalId;
    }

    public Integer getOficeId() {
        return oficeId;
    }

    public void setOficeId(Integer oficeId) {
        this.oficeId = oficeId;
    }
}
