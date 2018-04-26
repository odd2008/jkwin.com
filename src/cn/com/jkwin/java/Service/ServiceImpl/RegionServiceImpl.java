package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.HospitalDaoImpl;
import cn.com.jkwin.java.Dao.Impl.RegionDaoImpl;
import cn.com.jkwin.java.Dao.RegionDao;
import cn.com.jkwin.java.Entity.Hospital;
import cn.com.jkwin.java.Entity.Region;
import cn.com.jkwin.java.Service.RegionService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/20 9:18
 * @Modified By:
 */


public class RegionServiceImpl implements RegionService {

    /**
     * 通过城市ID获取城市下所有地区名
     * @param cityId
     * @return 地区名list<String>
     */
    @Override
    public List<String> getRegionNameBycityId(Integer cityId) {
        RegionDaoImpl regionDao = new RegionDaoImpl();
        List<String> regionName = new ArrayList<>();
        //获取地区集合
        List<Region> regions = regionDao.getAllRegionByCityId(cityId);
        for (Region region: regions) {
            if(region.getCityId().equals(cityId)){
                regionName.add(region.getRegionName());
            }
        }
        return regionName;
    }


    /**
     * 通过城市ID获取城市下所有地区名和当前地区医院
     * @return Map<List<Region>, List<Hospital>>
     */
    @Override
    public Map<String, List<Hospital>> getHospitalFromRegionMap(Integer cityId) {
        //通过城市ID获取所有地区
        RegionDaoImpl regionDao = new RegionDaoImpl();
        List<Region> regions = regionDao.getAllRegionByCityId(cityId);
        Map<String,List<Hospital>> RH = new HashMap<>();
        //通过当前地区ID获取所有医院
        HospitalDaoImpl hospitalDao = new HospitalDaoImpl();
        for (Region region : regions) {
            List<Hospital> hospitals = hospitalDao.getHospitalsByRegionId(region.getRegionId());
            RH.put(region.getRegionName(),hospitals);
        }
        return RH;
    }
}
