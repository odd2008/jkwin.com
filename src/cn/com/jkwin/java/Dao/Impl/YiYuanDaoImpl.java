package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.YiYuanDao;
import cn.com.jkwin.java.Entity.YiYuan;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.sql.DataSource;

public class YiYuanDaoImpl extends BaseDao implements YiYuanDao {
//    public static DataSource dataSource;
//    QueryRunner queryRunner=new QueryRunner(dataSource);
    @Override
    public YiYuan getYiYuan(String name) throws Exception {
        String sql = "select *  from yiyuan where y_name=?";
        QueryRunner runner = getRunner();
        return runner.query(sql,new BeanHandler<YiYuan>(YiYuan.class),name);
    }
}

