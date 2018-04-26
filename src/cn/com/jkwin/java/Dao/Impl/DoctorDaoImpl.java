package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.DoctorDao;
import cn.com.jkwin.java.Entity.Doctor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class DoctorDaoImpl extends BaseDao implements DoctorDao {
    @Override
    public Integer findDoctorCountsByHid(Integer Hid) {
        String sql="select count(doctorId) from doctor where hospitalId=?";
        long query = 0;
        try {
            query = (long) BaseDao.getRunner().query(sql, new ScalarHandler(), Hid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        int i=(int)query;
        return i;
    }

    @Override
    public Doctor findDoctorById(Integer Did) {
        String sql="SELECT d.doctorName,d.doctorGrade,d.doctorIntro,a.oficeName,h.hospitalName FROM doctor d,admin_ofice a,hospital h where \n" +
                "d.oficeId=a.oficeId and d.hospitalId=h.hospitalId and d.doctorId=?;";
        Doctor query = null;
        try {
            query = BaseDao.getRunner().query(sql, new BeanHandler<>(Doctor.class), Did);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return query;
    }

    @Override
    public Doctor GetDoctorBydoctorId(int doctorId) throws Exception {
        String sql = "select *  from Doctor where doctorId=?";
        QueryRunner runner=getRunner();
        return runner.query(sql,new BeanHandler<Doctor>(Doctor.class),doctorId);
        }

    @Override
    public List<Doctor> getDoctorByOidHid(Integer oficeId ,Integer hospitalId) {
        String sql = "SELECT d.* FROM doctor d , hospital h, admin_ofice a where a.oficeId=d.oficeId and d.hospitalId = h.hospitalId AND a.oficeId=? and h.hospitalId=?";
        List<Doctor> doctors = null;
        try {
            doctors = BaseDao.getRunner().query(sql,new BeanListHandler<Doctor>(Doctor.class),oficeId,hospitalId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return doctors;
    }
}
