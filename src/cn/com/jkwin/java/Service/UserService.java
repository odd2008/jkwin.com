package cn.com.jkwin.java.Service;

import cn.com.jkwin.java.Entity.User;

public interface UserService {

    User queryUser(String number,String pwd);

    public String getUsertype(String typeId);
    public User getByUserId(String Id);

}