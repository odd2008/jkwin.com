package cn.com.jkwin.java.Service;

import cn.com.jkwin.java.Entity.User;

public interface UserService {
    public String getUsertype(String typeId);
    public User getByUserId(String Id);
}
