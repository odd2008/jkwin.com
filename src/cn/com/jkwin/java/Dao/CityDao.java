package cn.com.jkwin.java.Dao;

import cn.com.jkwin.java.Entity.City;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/18 11:13
 * @Modified By:
 */
public interface CityDao {
    /**
     * 通过查找一条City记录
     * @return 返回一条City对象
     */
    City getCityById(Integer id);

    /**
     * 获取所有CITY对象 ，返回一个CITY集合
     * @return CITY集合
     */
    List<City> getAllCity();


}
