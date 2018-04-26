package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.HospitalDao;
import cn.com.jkwin.java.Dao.Impl.HospitalDaoImpl;
import cn.com.jkwin.java.Entity.Hospital;
import cn.com.jkwin.java.Service.HospitalService;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 10:40
 * @Modified By:
 */
public class HospitalServiceImpl implements HospitalService{

    /**
     * 获取所有的医院信息
     * @return 返回医院信息集合list
     */
    @Override
    public List<Hospital> getAllHospital() {
        HospitalDaoImpl hospitalDao = new HospitalDaoImpl();
        return hospitalDao.getAllHospital();
    }

    @Override
    public Integer fingHospitalCounts() {
        HospitalDaoImpl hospitalDao = new HospitalDaoImpl();
        Integer in = hospitalDao.fingHospitalCounts();
        return in;
    }

    @Override
    public Hospital findHospitalByid(Integer id) {
        HospitalDaoImpl hospitalDao = new HospitalDaoImpl();
        Hospital hospital = hospitalDao.findHospitalByid(id);
        return hospital;
    }
}
