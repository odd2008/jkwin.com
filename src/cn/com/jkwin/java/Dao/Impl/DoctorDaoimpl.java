package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.DoctorDao;
import cn.com.jkwin.java.Entity.Doctor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.sql.DataSource;

public class DoctorDaoimpl extends BaseDao implements DoctorDao {
    public static DataSource dataSource;
    QueryRunner queryRunner=new QueryRunner(dataSource);


    @Override
    public Doctor GetDoctorBydoctorId(int doctorId) throws Exception {
        String sql = "select *  from Doctor where doctorId=?";
        return queryRunner.query(sql,new BeanHandler<Doctor>(Doctor.class),doctorId);
    }
}
