package cn.com.jkwin.java.Service;

import cn.com.jkwin.java.Entity.Doctor;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/24 14:15
 * @Modified By:
 */
public interface DoctorService {
    //通过医生Did查询医生信息
    Doctor getDoctor(int Did) throws Exception;

    List<Doctor> getDoctorByOidHid(Integer oficeId, Integer hospitalId);

}
