package cn.com.jkwin.java.Dao;
import java.util.List;
import cn.com.jkwin.java.Entity.Doctor;

public interface DoctorDao {
    //通过医生Did查询医生信息
    Doctor GetDoctorBydoctorId(int doctorId) throws Exception;

    List<Doctor> getDoctorByOidHid(Integer oficeId ,Integer hospitalId);

}
