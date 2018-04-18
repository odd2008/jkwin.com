package cn.com.jkwin.pay.weixin.dao.impl;

import cn.com.jkwin.java.Base.BaseDao;
import cn.com.jkwin.pay.weixin.dao.OrderDao;
import cn.com.jkwin.pay.weixin.entity.Order;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
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
    @Test
    public void test1(){
        Order order=new Order();
        order.setUserIDcard("33");
        order.setBody("12");
        order.setAppid("12");
        order.setMch_id("12");
        order.setOut_trade_no("12");
        order.setStatus("12");
        order.setTotal_fee(1);
        order.setTrade_type("1");
        int a=addOrder(order);
        System.out.println(a);
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
    @Test
    public void test2(){
        List<Order> orders = findOrderByUserIDcard("33");
        System.out.println(orders);
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
    @Test
    public void test3(){
        Order order = findOrderByOut_trade_no("12");
        System.out.println(order);
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
    @Test
    public void test4(){
        System.out.println(getOrder());
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
    @Test
    public void test5(){
        int a = updateOrder("123", "完成");
        System.out.println(a);
    }
}
