package cn.com.jkwin.java.Test;

import cn.com.jkwin.java.Dao.Impl.OrderDaoImpl;
import cn.com.jkwin.java.Entity.Order;
import org.junit.Test;

import java.util.List;

public class OrderDaoTest extends OrderDaoImpl {
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
    @Test
    public void test2(){
        List<Order> orders = findOrderByUserIDcard("33");
        System.out.println(orders);
    }
    @Test
    public void test3(){
        Order order = findOrderByOut_trade_no("12");
        System.out.println(order);
    }
    @Test
    public void test4(){
        System.out.println(getOrder());
    }
    @Test
    public void test6(){
        String a="12";
        System.out.println(getOut_trade_no(a));
    }

    @Test
    public void test5(){
        int a = updateOrder("123", "完成");
        System.out.println(a);
    }
}
