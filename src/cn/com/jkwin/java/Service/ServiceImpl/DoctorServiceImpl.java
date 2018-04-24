package cn.com.jkwin.java.Service.ServiceImpl;



import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.Impl.DoctorDaoImpl;
import cn.com.jkwin.java.Entity.Doctor;
import cn.com.jkwin.java.Service.DoctorService;

import java.sql.SQLException;

public class DoctorServiceImpl extends BaseDao implements DoctorService {
    @Override
    public Integer getDoctorCountsByHid(Integer Hid){
        DoctorDaoImpl doctorDao = new DoctorDaoImpl();
        Integer doctorCountsByTid = doctorDao.findDoctorCountsByHid(Hid);
        return doctorCountsByTid;
    }

    @Override
    public Doctor getDoctorById(Integer Did){
        DoctorDaoImpl doctorDao = new DoctorDaoImpl();
        Doctor doctor = doctorDao.findDoctorById(Did);
        return doctor;
    }


}
