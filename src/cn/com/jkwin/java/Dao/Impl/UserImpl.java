package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.UserDao;
import cn.com.jkwin.java.Entity.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class UserImpl extends BaseDao implements UserDao {

    @Override
    public User findByUserId(int Id) {
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

    @Override
    public int queryUserNumber(String Number) {
        int num=-3;
        String sql="select count(*) from user where userNumber=?";
        try {
            num=(Integer) BaseDao.getRunner().query(sql,new ScalarHandler(),Number);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return num;
    }

    @Override
    public int addUser(User user) {
        int num=-3;
        String sql="INSERT INTO user(userNumber,userPwd)values(?,?)";
        Object[] param={user.getUserNumber(),user.getUserPwd()};
        try {
            num = BaseDao.getRunner().update(sql,param);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return num;
    }

    @Override
    public User queryUser(String number, String pwd) {
        String sql="select * from user where userNumber=? and userPwd=?";
        User user=null;
        try {
            user= BaseDao.getRunner().query(sql,new BeanHandler<User>(User.class),number,pwd);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}