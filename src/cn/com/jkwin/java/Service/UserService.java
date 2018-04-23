package cn.com.jkwin.java.Service;

import cn.com.jkwin.java.Entity.User;

public interface UserService {
    public String getUsertype(int typeId);
    public User getByUserId(int Id);
    User queryUser(String number,String pwd);
}
