package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.OrderDaoImpl;
import cn.com.jkwin.java.Dao.OrderDao;
import cn.com.jkwin.java.Entity.Order;
import cn.com.jkwin.java.Service.WeixinPayOrderService;

import java.util.List;

public class WeixinPayOrderServiceImpl implements WeixinPayOrderService {
    private OrderDao orderDao=new OrderDaoImpl();

    @Override
    public int addOrder(Order order) {
        //tag3种状态:-4 初始,-3 该订单已经存在,-1 插入数据库失败,1 插入成功
        int tag=-4;
        String out_trade_no = order.getOut_trade_no();
        int num=orderDao.getOut_trade_no(out_trade_no);
        if (num<0){
            System.out.println("该订单已存在");
            return tag=-3;
        }
        tag=orderDao.addOrder(order);
    return tag;
    }

    @Override
    public void update(String status, String out_trade_no) {

    }

    @Override
    public List<Order> getOrder() {
        return null;
    }

    @Override
    public List<Order> findOrdersByUserIDcard(String userIDcard) {
        return null;
    }

    @Override
    public Order findOrdersByOut_trade_no(String out_trade_no) {
        return null;
    }
}
