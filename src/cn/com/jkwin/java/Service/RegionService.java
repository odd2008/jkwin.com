package cn.com.jkwin.java.Service;

import java.util.List;

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
}
