package cn.com.jkwin.pay.weixin.dao.impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.pay.weixin.dao.OrderDao;
import cn.com.jkwin.pay.weixin.entity.Order;
import org.apache.commons.dbutils.ResultSetHandler;
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
        String sql="INSERT INTO `weixin_order` (`appid`, `mch_id`, `body`, `out_trade_no`, `total_fee`, `trade_type`, `satatus`) VALUES ( '?', '?', '?', '?', '?', '?', '?')";
        try {
            num=BaseDao.getRunner().update(sql,order.getAppid(),order.getMch_id(),order.getBody(),
                    order.getOut_trade_no(),order.getTotal_fee(),order.getTrade_type(),order.getStatus());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return num;
    }
    @Test
    public void test1(){
        Order order=new Order();
        order.setBody("1");
        order.setAppid("1");
        order.setMch_id("1");
        order.setOut_trade_no("1");
        order.setStatus("1");
        order.setTotal_fee(1);
        order.setTrade_type("1");
        int a=addOrder(order);
        System.out.println(a);
    }

    @Override
    public List<Order> findOrderByUserIDcard(String userIDcard) {
        List<Order> orders=new ArrayList<Order>();
        String sql="";
        try {
            orders=BaseDao.getRunner().query(sql,new BeanListHandler<Order>(Order.class ),userIDcard);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public Order getOrder(String out_trade_no) {
        Order order=null;
        String sql="";
        try {
            order= BaseDao.getRunner().query(sql, new BeanHandler<Order>(Order.class),out_trade_no);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return order;
    }

    @Override
    public int updateOrder(String status) {
        return 0;
    }
}
