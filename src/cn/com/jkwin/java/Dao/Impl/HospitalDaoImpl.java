package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.HospitalDao;
import cn.com.jkwin.java.Entity.Hospital;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 10:26
 * @Modified By:
 */
public class HospitalDaoImpl implements HospitalDao{

    /**
     * 取得所有医院信息，并返回一个医院List集合
     * @return 医院List集合
     */
    @Override
    public List<Hospital> getAllHospital() {
        String sql = "SELECT * FROM hospital";
        List<Hospital> hospitals = null;
        try {
            hospitals = BaseDao.getRunner().query(sql,new BeanListHandler<Hospital>(Hospital.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return hospitals;
    }

    /**
     * 通过地区ID取得所有医院信息，并返回一个医院List集合
     * @return 当前地区ID下医院List集合
     */
    @Override
    public List<Hospital> getHospitalsByRegionId(Integer regionId){
        String sql ="SELECT h.* FROM hospital h LEFT JOIN region r ON h.regionId = r.regionId WHERE r.regionId=?";
//        String sql =
//                "SELECT h.* FROM hospital h , region r, city c where h.regionId=r.regionId and r.cityId=c.cityId AND c.cityId=?";
        List<Hospital> hospitals = null;
//        Map<String,List<Hospital>> map =null;
        try {
            hospitals = BaseDao.getRunner().query(sql,new BeanListHandler<Hospital>(Hospital.class),regionId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return hospitals;
    }
}
