package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.UserImpl;
import cn.com.jkwin.java.Dao.UserDao;
import cn.com.jkwin.java.Service.VerificationInformationService;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;

public class VerificationInformationServiceImpl implements VerificationInformationService {
    UserDao userDao=new UserImpl();
    @Override
    public int userNumber(String Number) {
        int num=userDao.queryUserNumber(Number);
        return num;
    }

}
