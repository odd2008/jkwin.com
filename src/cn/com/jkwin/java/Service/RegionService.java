package cn.com.jkwin.java.Service;

import cn.com.jkwin.java.Entity.Hospital;
import cn.com.jkwin.java.Entity.Region;
import org.omg.PortableInterceptor.INACTIVE;

import java.util.List;
import java.util.Map;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/20 9:08
 * @Modified By:
 */
public interface RegionService {
    /**
     * 通过城市ID获取城市下所有地区名
     * @param cityId
     * @return 地区名list<String>
     */
    List<String> getRegionNameBycityId(Integer cityId);

    Map<String, List<Hospital>> getHospitalFromRegionMap(Integer cityId);
}
