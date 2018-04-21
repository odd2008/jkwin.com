package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.HospitalDao;
import cn.com.jkwin.java.Entity.Hospital;
import org.apache.commons.dbutils.handlers.BeanListHandler;

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

//    public Map<String, List<Hospital>> getHospitalsBy(){
//        String sql="select * from";
//        return null;
//    }
}
