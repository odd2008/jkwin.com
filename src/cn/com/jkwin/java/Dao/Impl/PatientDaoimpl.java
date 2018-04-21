package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.PatientDao;
import cn.com.jkwin.java.Entity.Patient;
import org.apache.commons.dbutils.QueryRunner;

import javax.sql.DataSource;
import java.sql.SQLException;

public class PatientDaoimpl extends BaseDao implements PatientDao {
    public static DataSource dataSource;
 QueryRunner queryRunner=new QueryRunner(dataSource);
    @Override
    public int addByPatientId(Patient Patient) throws SQLException {
        String sql = "insert into Patient (Pname,Pidcard,Pphone) values (?,?,?)";
        return queryRunner.update(sql,Patient.getPname(),Patient.getPidcard(),Patient.getPphone());
    }
}