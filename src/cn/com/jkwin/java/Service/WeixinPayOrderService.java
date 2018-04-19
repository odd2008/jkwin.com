package cn.com.jkwin.java.Service;

import cn.com.jkwin.java.Entity.Order;

import java.util.List;

public interface WeixinPayOrderService {
    //添加订单
    int addOrder(Order order);
    //在20分钟内查询订单状态,当订单状态修改后返回订单状态
    String  queryOut_trade_no(String  out_trade_no);
    //根据订单号修改订单状态
    int updateStatus(String status,String out_trade_no);
    //查询所有订单
    List<Order> getOrder();
    //查询指定身份证的订单
    List<Order> findOrdersByUserIDcard(String userIDcard);
    //查询指定订单号的订单
    Order findOrdersByOut_trade_no(String out_trade_no);
}
