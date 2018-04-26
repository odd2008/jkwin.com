package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.AdminOficeDao;
import cn.com.jkwin.java.Entity.AdminOfice;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 15:04
 * @Modified By:
 */
public class AdminOficeDaoImpl implements AdminOficeDao{

    /**
     * 获取所有科室门诊信息
     * @return 返回科室门诊信息list
     */
    @Override
    public List<AdminOfice> getAllAdminOfice() {
        String sql = "SELECT * FROM admin_ofice";
        List<AdminOfice> adminOfices = null;
        try {
            adminOfices = BaseDao.getRunner().query(sql,new BeanListHandler<AdminOfice>(AdminOfice.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return adminOfices;
    }


    /**
     * 通过医院ID查找当前医院下的科室
     * @param hospitalId
     */
    @Override
    public List<AdminOfice> getOficeIdByHospitalId(Integer hospitalId) {
        String sql="SELECT a.* FROM admin_ofice a ,hospital h,temp t where t.oficeId = a.oficeId AND t.hospitalId = h.hospitalId AND h.hospitalId=?";
        List<AdminOfice> adminOfices = null;
        try {
            adminOfices = BaseDao.getRunner().query(sql,new BeanListHandler<AdminOfice>(AdminOfice.class),hospitalId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  adminOfices;
    }
}
