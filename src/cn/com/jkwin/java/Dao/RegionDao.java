package cn.com.jkwin.java.Dao;

import cn.com.jkwin.java.Entity.Region;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/20 8:50
 * @Modified By:
 */
public interface RegionDao {
    /**
     * 通过城市ID查找地区
     * @return 返回该城市下所有地区名list<String>
     */
    List<Region> getAllRegionByCityId(Integer cityId);
}
