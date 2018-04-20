package cn.com.jkwin.java.Dao.Impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.java.Dao.OrderDao;
import cn.com.jkwin.java.Entity.Order;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDaoImpl implements OrderDao {
    @Override
    public int addOrder(Order order) {
        int num=-1;
        String sql="INSERT INTO `weixin_order` (`appid`, userIDcard,`mch_id`, `body`, `out_trade_no`, `total_fee`, `trade_type`, `status`) VALUES ( ?,?, ?, ?, ?, ?, ?, ?)";
        Object[] param={order.getAppid(),order.getUserIDcard(),order.getMch_id(),order.getBody(),
                order.getOut_trade_no(),order.getTotal_fee(),order.getTrade_type(),order.getStatus()};
        try {
            num=BaseDao.getRunner().update(sql,param);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return num;
    }


    @Override
    public List<Order> findOrderByUserIDcard(String userIDcard) {
        List<Order> orders=new ArrayList<Order>();

        String sql="select * from `weixin_order` where userIDcard=?";
        try {
            orders=BaseDao.getRunner().query(sql,new BeanListHandler<Order>(Order.class ),userIDcard);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }


    @Override
    public Order findOrderByOut_trade_no(String out_trade_no) {
        Order order=null;
        String sql="select * from `weixin_order` where out_trade_no=?";
        try {
            order= BaseDao.getRunner().query(sql, new BeanHandler<Order>(Order.class),out_trade_no);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return order;
    }


    @Override
    public List<Order> getOrder() {
        List<Order> orders=new ArrayList<Order>();
        String sql="select * from weixin_order";
        try {
            orders=BaseDao.getRunner().query(sql, new BeanListHandler<Order>(Order.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public int updateOrder(String out_trade_no,String status) {
        int num=-1;
        String sql="update weixin_order set status=? where out_trade_no=?";
        try {
            num=BaseDao.getRunner().update(sql,status,out_trade_no);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return num;
    }

    @Override
    public int getOut_trade_no(String out_trade_no) {
        Long a=-1l;
        String sql="select count(*) a from weixin_order where out_trade_no=? ";
        Integer b=null;
        try {
            a = (Long)BaseDao.getRunner().query(sql, new ScalarHandler(), out_trade_no);
            b=a.intValue();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return b;

    }

}
