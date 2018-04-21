package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.RegionDao;
import cn.com.jkwin.java.Entity.Region;
import com.sun.org.apache.bcel.internal.generic.LSTORE;
import com.sun.org.apache.bcel.internal.generic.NEW;
import org.apache.commons.dbutils.handlers.BeanHandler;
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
    public List<String> getRegionNameByCityId(Integer cityId) {
        String sql = "SELECT r.regionName FROM region r LEFT JOIN city c ON r.cityid=c.cityid WHERE c.cityid=?";
        List<String> regionNames = null;
        try {
            regionNames = BaseDao.getRunner().query(sql, new BeanListHandler<String>(String.class),cityId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return regionNames;
    }
}
