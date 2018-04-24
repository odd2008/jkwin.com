package cn.com.jkwin.java.Service;

import cn.com.jkwin.java.Entity.Doctor;

public interface DoctorService {
        //通过医生Did查询医生信息
        Doctor getDoctor(int Did) throws Exception;
}
