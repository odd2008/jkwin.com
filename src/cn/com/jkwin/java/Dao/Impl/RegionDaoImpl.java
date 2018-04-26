package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.RegionDao;
import cn.com.jkwin.java.Entity.Region;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/20 8:50
 * @Modified By:
 */
public class RegionDaoImpl implements RegionDao{

    /**
     * 通过城市ID查找地区
     * @return 返回该城市下所有地区名list<String>
     */
    @Override
    public List<Region> getAllRegionByCityId(Integer cityId) {
        String sql = "SELECT r.* FROM region r LEFT JOIN city c ON r.cityid=c.cityid WHERE c.cityid=?";
        List<Region> regions = null;
        try {
            regions = BaseDao.getRunner().query(sql, new BeanListHandler<Region>(Region.class),cityId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return regions;
    }
}
