package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.RegionDaoImpl;
import cn.com.jkwin.java.Dao.RegionDao;
import cn.com.jkwin.java.Service.RegionService;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/20 9:18
 * @Modified By:
 */


public class RegionServiceImpl implements RegionService {

    /**
     * 通过城市ID获取城市下所有地区名
     * @param cityId
     * @return 地区名list<String>
     */
    @Override
    public List<String> getRegionNameBycityId(Integer cityId) {
        RegionDaoImpl regionDao = new RegionDaoImpl();
        return regionDao.getRegionNameByCityId(cityId);
    }
}
