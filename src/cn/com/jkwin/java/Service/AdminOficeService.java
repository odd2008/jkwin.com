package cn.com.jkwin.java.Service;

import cn.com.jkwin.java.Entity.AdminOfice;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 15:13
 * @Modified By:
 */
public interface AdminOficeService {
    List<AdminOfice> getAllAdminOfice(Integer hospitalId);
}
