package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.UserDao;
import cn.com.jkwin.java.Entity.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class UserImpl extends BaseDao implements UserDao {

    @Override
    public User findByUserId(String Id) {
        User user = null;
        String sql = "select * from user where userId= ?";
        QueryRunner runner = getRunner();
        try {
            user = runner.query(sql, new BeanHandler<User>(User.class), Id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}