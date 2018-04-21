package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.AdminOficeDaoImpl;
import cn.com.jkwin.java.Entity.AdminOfice;
import cn.com.jkwin.java.Service.AdminOficeService;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 15:13
 * @Modified By:
 */
public class AdminOficeServiceImpl implements AdminOficeService {

    @Override
    public List<AdminOfice> getAllAdminOfice() {
        AdminOficeDaoImpl adminOficeDao = new AdminOficeDaoImpl();
        return adminOficeDao.getAllAdminOfice();
    }
}
