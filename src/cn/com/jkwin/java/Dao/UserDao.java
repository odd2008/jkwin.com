package cn.com.jkwin.java.Dao;

import cn.com.jkwin.java.Entity.User;

import java.util.List;

public interface UserDao {

    int queryUserNumber(String Number);
    int addUser(User user);
    User queryUser(String number,String pwd);
    public User findByUserId(String Id);

}
