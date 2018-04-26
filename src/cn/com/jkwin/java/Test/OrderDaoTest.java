package cn.com.jkwin.java.Test;

import cn.com.jkwin.java.Dao.Impl.OrderDaoImpl;
import cn.com.jkwin.java.Entity.WeixinOrder;
import org.junit.Test;

import java.util.Date;
import java.util.List;

public class OrderDaoTest extends OrderDaoImpl {
    @Test
    public void test1(){
        WeixinOrder order=new WeixinOrder();
        order.setUserIDcard("33322342342323");
        order.setBody("12");
        order.setAppid("12");
        order.setMch_id("12");
        order.setOut_trade_no("123333333");
        order.setStatus("12");
        order.setTotal_fee(1);
        order.setTrade_type("1");
        order.setGenerated_time(new Date());
        int a=addOrder(order);
        System.out.println(a);
    }
    @Test
    public void test2(){
        List<WeixinOrder> orders = findOrderByUserIDcard("33");
        System.out.println(orders);
    }
    @Test
    public void test3(){
        WeixinOrder order = findOrderByOut_trade_no("12");
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
        int a = updateOrder("12333", "支付完成");
        System.out.println(a);
    }
    @Test
    public  void test7(){
        int random=888;
        for (int a=0;a<6;a++){
            int num= (int) (Math.random()*10);
            if (a==0){
                random=num;
            }else {
                int num2=num;
                for (int i=0;i<a;i++){
                    num2= num2*10;
                }
                random+=num2;
            }

        }
        System.out.println(random);
    }
}
