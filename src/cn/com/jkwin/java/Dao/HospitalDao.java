package cn.com.jkwin.java.Dao;

import cn.com.jkwin.java.Entity.Hospital;

import java.util.List;
import java.util.Map;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/19 10:22
 * @Modified By:
 */
public interface HospitalDao {

    /**
     * 取得所有医院信息，并返回一个医院List集合
     *
     * @return 医院List集合
     */
    List<Hospital> getAllHospital() throws Exception;

    List<Hospital> getHospitalsByRegionId(Integer regionId) throws Exception;
}
