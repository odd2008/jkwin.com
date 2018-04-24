package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.DoctorDaoImpl;
import cn.com.jkwin.java.Entity.Doctor;
import cn.com.jkwin.java.Service.DoctorService;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/24 14:16
 * @Modified By:
 */
public class DoctorServiceImpl implements DoctorService {


    @Override
    public List<Doctor> getDoctorByOidHid(Integer oficeId, Integer hospitalId) {
        DoctorDaoImpl doctorDao = new DoctorDaoImpl();
        return doctorDao.getDoctorByOidHid(oficeId,hospitalId);
    }
}
