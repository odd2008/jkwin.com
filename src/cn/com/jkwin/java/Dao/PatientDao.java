package cn.com.jkwin.java.Dao;

import cn.com.jkwin.java.Entity.Patient;

import java.sql.SQLException;

public interface PatientDao {

    int addByPatientId(Patient Patient) throws SQLException;
}
