package cn.com.jkwin.java.Dao;

import cn.com.jkwin.java.Entity.Doctor;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/24 13:58
 * @Modified By:
 */
public interface DoctorDao {

    List<Doctor> getDoctorByOidHid(Integer oficeId ,Integer hospitalId);

}
