package cn.com.jkwin.java.Service;

import cn.com.jkwin.java.Entity.City;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 11:12
 * @Modified By:
 */
public interface CityService {
    /**
     * 获取所有的城市信息
     * @return 返回城市信息集合list
     */
    List<City> getAllCity();
}
