package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Dao.Impl.OrderDaoImpl;
import cn.com.jkwin.java.Dao.OrderDao;
import cn.com.jkwin.java.Entity.WeixinOrder;
import cn.com.jkwin.java.Service.WeixinPayOrderService;

import java.util.List;

public class WeixinPayOrderServiceImpl implements WeixinPayOrderService {
    private OrderDao orderDao=new OrderDaoImpl();

    @Override
    public int addOrder(WeixinOrder order) {
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
    public String queryOut_trade_no(String out_trade_no) {
        /**
         * 获取订单号,并且判断订单状态是否改变,返回订单状态
         */
        String status=null;
        for (int i=0;i<1800;i++){
            status=orderDao.findOrderByOut_trade_no(out_trade_no).getStatus();
            if (!(status.equals("未支付"))){
                System.out.println(status);
                return status;
            }
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return status;
    }

    @Override
    public int updateStatus(String status, String out_trade_no) {
       return orderDao.updateOrder(status,out_trade_no);
    }

    @Override
    public List<WeixinOrder> getOrder() {
        return null;
    }

    @Override
    public List<WeixinOrder> findOrdersByUserIDcard(String userIDcard) {
        return null;
    }

    @Override
    public WeixinOrder findOrdersByOut_trade_no(String out_trade_no) {
        return null;
    }
}
