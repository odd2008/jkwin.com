package cn.com.jkwin.java.Dao;


import cn.com.jkwin.java.Entity.YiYuan;

public interface YiYuanDao {
    //通过医院名称查询对应的医院
    YiYuan getYiYuan(String name) throws Exception;
}
