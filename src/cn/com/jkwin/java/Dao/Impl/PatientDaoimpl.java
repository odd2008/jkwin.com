package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.PatientDao;
import cn.com.jkwin.java.Entity.Patient;
import org.apache.commons.dbutils.QueryRunner;

import javax.sql.DataSource;
import java.sql.SQLException;

public class PatientDaoimpl extends BaseDao implements PatientDao {

    @Override
    public int addByPatientId(Patient Patient) throws SQLException {
        String sql = "insert into Patient (PatientName,PatientIDcard,PatientPhone) values (?,?,?)";
        QueryRunner runner =getRunner();
        return runner.update(sql,Patient.getPatientName(),Patient.getPatientIDcard(),Patient.getPatientPhone());
    }
}