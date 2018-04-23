package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.UserImpl;
import cn.com.jkwin.java.Dao.UserDao;
import cn.com.jkwin.java.Service.VerificationInformationService;

public class VerificationInformationServiceImpl implements VerificationInformationService {
    UserDao userDao=new UserImpl();
    @Override
    public int userNumber(String Number) {
        int num=userDao.queryUserNumber(Number);
        return num;
    }


}
