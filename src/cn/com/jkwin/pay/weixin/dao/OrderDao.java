package cn.com.jkwin.pay.weixin.dao;

import cn.com.jkwin.pay.weixin.entity.Order;

import java.util.List;

public interface OrderDao {
    //添加订单
    int addOrder(Order order);
    //获取某位用户的所有订单
    List<Order> findOrderByUserIDcard(String userIDcard);
    //根据订单号获取订单
    Order getOrder(String out_trade_no);
    //修改订单状态
    int updateOrder(String status);
}
