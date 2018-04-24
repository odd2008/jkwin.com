package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.DoctorDaoImpl;
import cn.com.jkwin.java.Entity.Doctor;
import cn.com.jkwin.java.Service.DoctorService;

public class DoctorServiceImpl implements DoctorService {
    @Override
    public Integer getDoctorCountsByHid(Integer Hid) {
        DoctorDaoImpl doctorDao = new DoctorDaoImpl();
        Integer doctorCountsByTid = doctorDao.findDoctorCountsByHid(Hid);
        return doctorCountsByTid;
    }

    @Override
    public Doctor getDoctorById(Integer Did) {
        DoctorDaoImpl doctorDao = new DoctorDaoImpl();
        Doctor doctor = doctorDao.findDoctorById(Did);
        return doctor;
    }

    @Override
    public Doctor getDoctor(int Did) throws Exception {
            return null;
    }
}
