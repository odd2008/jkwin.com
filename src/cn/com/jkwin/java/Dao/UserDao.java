package cn.com.jkwin.java.Dao;

import cn.com.jkwin.java.Entity.User;

import java.util.List;

public interface UserDao {
    public User findByUserId(String Id);
}
