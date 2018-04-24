package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.DoctorDao;
import cn.com.jkwin.java.Entity.Doctor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

public class DoctorDaoimpl extends BaseDao implements DoctorDao {
    @Override
    public Doctor GetDoctorBydoctorId(int doctorId) throws Exception {
        String sql = "select *  from Doctor where doctorId=?";
        QueryRunner runner=getRunner();
        return runner.query(sql,new BeanHandler<Doctor>(Doctor.class),doctorId);
        }
        }
