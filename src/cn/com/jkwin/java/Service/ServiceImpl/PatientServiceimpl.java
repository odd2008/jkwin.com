package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.PatientDaoimpl;
import cn.com.jkwin.java.Dao.PatientDao;
import cn.com.jkwin.java.Entity.Patient;
import cn.com.jkwin.java.Service.PatientService;

public class PatientServiceimpl implements PatientService {

    @Override
    public int add(Patient Patient) throws Exception {
        PatientDao patientDao = new PatientDaoimpl();
        patientDao.addByPatientId(Patient);
        return 0;
    }
}
