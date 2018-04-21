package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.YiYuanDaoImpl;
import cn.com.jkwin.java.Dao.YiYuanDao;
import cn.com.jkwin.java.Entity.YiYuan;
import cn.com.jkwin.java.Service.YiYuanService;

public class YiYuanServiceimpl implements YiYuanService {
    @Override
    public YiYuan getYiYuan(String name) throws Exception {
        YiYuanDao yiYuanDao = new YiYuanDaoImpl();
        YiYuan yiYuan = yiYuanDao.getYiYuan(name);
        return yiYuan;
    }
}
