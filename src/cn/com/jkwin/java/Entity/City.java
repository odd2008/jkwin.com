package cn.com.jkwin.java.Entity;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/16 22:32
 * @Modified By:
 */
public class City {
    private Integer cityId;
    private String cityName;

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    @Override
    public String toString() {
        return "City{" +
                "cityId=" + cityId +
                ", cityName='" + cityName + '\'' +
                '}';
    }
}
