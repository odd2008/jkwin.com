package cn.com.jkwin.java.Dao;

import cn.com.jkwin.java.Entity.WeixinOrder;

import java.util.List;

public interface OrderDao {
    //添加订单
    int addOrder(WeixinOrder order);
    //获取某位用户的所有订单
    List<WeixinOrder> findOrderByUserIDcard(String userIDcard);
    //根据订单号获取订单
    WeixinOrder findOrderByOut_trade_no(String out_trade_no);
    //获取所有订单
    List<WeixinOrder> getOrder();
    //修改订单状态
    int updateOrder( String out_trade_no, String status);
    //查询是否存在某订单号
    int getOut_trade_no(String out_trade_no);
}
