package cn.com.jkwin.java.Base;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import org.apache.commons.dbutils.QueryRunner;

import javax.sql.DataSource;
import java.io.InputStream;
import java.util.Properties;

public class BaseDao {
    private static DataSource dataSource;
    private static QueryRunner runner ;
    static {
        Properties properties = new Properties();
        InputStream in = BaseDao.class.getClassLoader().getResourceAsStream("dbcp.properties");
        try { properties.load(in);
            dataSource = DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static QueryRunner getRunner() {
        runner = new QueryRunner(dataSource);
        return runner;
    }
}
