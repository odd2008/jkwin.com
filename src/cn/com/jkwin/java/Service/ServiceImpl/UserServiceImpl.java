package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.UserImpl;
import cn.com.jkwin.java.Dao.UserDao;
import cn.com.jkwin.java.Entity.User;
import cn.com.jkwin.java.Entity.UserType;
import cn.com.jkwin.java.Service.UserService;

public class UserServiceImpl  implements UserService {

    @Override
    public String getUsertype(String Id) {
        UserDao userDao = new UserImpl();
        User users = userDao.findByUserId(Id);
        if(users==null){
            return "游客";
        }
        int userType = users.getUserType();
        switch (userType) {
            case UserType.COUNSELOR:
                return "咨询师";
            case UserType.MEMBER:
                return "会员";
            default:
                return "游客";
        }
    }

    @Override
    public User getByUserId(String Id) {
        UserDao userDao = new UserImpl();
        User users = userDao.findByUserId(Id);
        return users;
    }

    @Override
    public User queryUser(String number, String pwd) {
        return new UserImpl().queryUser(number,pwd);
    }

}
