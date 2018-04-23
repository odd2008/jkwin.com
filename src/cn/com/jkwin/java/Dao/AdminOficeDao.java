package cn.com.jkwin.java.Dao;

import cn.com.jkwin.java.Entity.AdminOfice;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 15:00
 * @Modified By:
 */
public interface AdminOficeDao {
    /**
     * 获取所有科室门诊信息
     * @return 返回科室门诊信息list
     */
    List<AdminOfice> getAllAdminOfice();
}
