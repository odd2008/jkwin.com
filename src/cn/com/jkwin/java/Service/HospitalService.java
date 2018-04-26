package cn.com.jkwin.java.Service;

import cn.com.jkwin.java.Entity.Hospital;

import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 10:40
 * @Modified By:
 */
public interface HospitalService {
    /**
     * 获取所有的医院信息
     * @return 返回医院信息集合list
     */
    List<Hospital> getAllHospital();
    /**
     * 查询所有医院数量
     * @return 所有医院数量
     */
    Integer fingHospitalCounts();

    /**
     * 通过医院id查询医院
     * @param id
     * @return 一个医院对象
     */
    Hospital  findHospitalByid(Integer id);
}
