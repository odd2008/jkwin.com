package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.CityDaoImpl;
import cn.com.jkwin.java.Entity.City;
import cn.com.jkwin.java.Service.CityService;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 11:14
 * @Modified By:
 */
public class CityServiceImpl implements CityService {
    /**
     * 获取所有的城市信息
     * @return 返回城市信息集合list
     */
    @Override
    public List<City> getAllCity() {
        CityDaoImpl cityDao = new CityDaoImpl();
        return cityDao.getAllCity();
    }

    @Override
    public City getCityById(Integer id) {
        CityDaoImpl cityDao = new CityDaoImpl();
        return cityDao.getCityById(id);
    }
}
