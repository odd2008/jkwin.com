package cn.com.jkwin.java.Service;

import cn.com.jkwin.java.Entity.User;

public interface UserService {

    User queryUser(String number,String pwd);
    int addUser(User user);
    public String getUsertype(String typeId);
    public User getByUserId(String Id);

}