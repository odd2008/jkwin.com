package cn.com.jkwin.java.Entity;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 22:56
 * @Modified By:
 */
public class Region {
    private Integer regionId; //地区编号
    private String regionName;//地区名
    private Integer cityId;//城市编号

    public Integer getRegionId() {
        return regionId;
    }

    public void setRegionId(Integer regionId) {
        this.regionId = regionId;
    }

    public String getRegionName() {
        return regionName;
    }

    public void setRegionName(String regionName) {
        this.regionName = regionName;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }
}
