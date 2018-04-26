package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.CityDao;
import cn.com.jkwin.java.Entity.City;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/18 11:13
 * @Modified By:
 */
public class CityDaoImpl implements CityDao {
    /**
     *
     * @return
     */
    @Override
    public City getCityById(Integer id) {
        String sql = "SELECT cityId,cityName FROM city WHERE cityId=?";
        City city = null;
        try {
            city = BaseDao.getRunner().query(sql,new BeanHandler<City>(City.class),id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return city;
    }

    /**
     * 获取所有CITY对象 ，返回一个CITY集合
     * @return CITY集合
     */
    @Override
    public List<City> getAllCity() {
        String sql = "SELECT cityId,cityName FROM city";
        List<City> cities = null;
        try {
            cities = BaseDao.getRunner().query(sql,new BeanListHandler<City>(City.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cities;
    }

}
