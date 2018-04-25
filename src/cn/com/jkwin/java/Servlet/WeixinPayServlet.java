package cn.com.jkwin.java.Servlet;



import cn.com.jkwin.java.Entity.WeixinOrder;
import cn.com.jkwin.java.Entity.Pay;
import cn.com.jkwin.java.Service.ServiceImpl.WeixinPayOrderServiceImpl;
import cn.com.jkwin.java.Service.WeixinPayOrderService;
import cn.com.jkwin.java.Utils.*;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;


import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.SortedMap;
import java.util.TreeMap;

@WebServlet("/WeixinPayServlet")
public class WeixinPayServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String Key = "javastruts2springhibernate2016tr";

        String appid = "wx2537437d11cdec0b";
        String mch_id = "1381483602";
        String spbill_create_ip = "49.221.62.131";
        String body = "医事通";
        String trade_type = "NATIVE";
        //String notify_url = "http://zhuzuohua.oicp.net/ercodePay/pay-huidao.action";
        String notify_url = "http://zcy.wxproxy.cqbdqn.cn/WeixinPayHuiDiaoServlet";
/*
        int total_fee = Integer.parseInt(request.getParameter("total_fee"));
*/
        int total_fee=1;
        String nonce_str = Util.getRandomString(20);
        String out_trade_no = Util.getCurrTime() + Util.getRandomString(4);

        SortedMap<Object, Object> params = new TreeMap<>();
        params.put("appid", appid);
        params.put("mch_id", mch_id);
        params.put("spbill_create_ip", spbill_create_ip);
        params.put("body", body);
        params.put("nonce_str", nonce_str);
        params.put("trade_type", trade_type);

        params.put("notify_url", notify_url);
        params.put("total_fee", total_fee);
        params.put("out_trade_no", out_trade_no);

        //生成签名
        String sign = SignUtil.sign(params, Key);
        System.out.println("====" + sign);

        //产省生成xml的实体类
        Pay pay = new Pay();
        pay.setAppid(appid);
        pay.setMch_id(mch_id);
        pay.setSpbill_create_ip(spbill_create_ip);
        pay.setBody(body);
        pay.setNonce_str(nonce_str);
        pay.setTrade_type(trade_type);
        pay.setNotify_url(notify_url);
        pay.setOut_trade_no(out_trade_no);
        pay.setTotal_fee(total_fee);
        pay.setSign(sign);


        //生成订单并添加到数据库

        WeixinOrder order=new WeixinOrder();
        order.setUserIDcard(OrderNumber.WIDout_trade_no());
        order.setTrade_type(pay.getTrade_type());
        order.setTotal_fee(pay.getTotal_fee());
        order.setStatus("未支付");
        order.setAppid(pay.getAppid());
        order.setBody(pay.getBody());
        order.setOut_trade_no(pay.getOut_trade_no());
        order.setMch_id(pay.getMch_id());
        order.setGenerated_time(new Date());
        WeixinPayOrderService rderService = new WeixinPayOrderServiceImpl();
        int tag = rderService.addOrder(order);
        if (tag<0){
            request.getRequestDispatcher("/jsp/ErrorPay.jsp");
        }

        //生成请求xml
        XStreamUtil.xstream.alias("xml", Pay.class);
        String reqXml = XStreamUtil.xstream.toXML(pay).replace("__", "_");
        System.out.println(reqXml);


        //发送https请求
        String respXml = null;
        String requestUrl = "https://api.mch.weixin.qq.com/pay/unifiedorder";
        try {
            respXml = HttpsRequest.sendHttpsRequest(requestUrl, "POST", reqXml);
        } catch (Exception e) {
            e.printStackTrace();
        }


        //解析xml,获取微信返回的生成带有字符信息二维码连接
        System.out.println(requestUrl);
        String code_url = null;
        try {
            Document document = DocumentHelper.parseText(respXml);
            Element rootElement = document.getRootElement();
            List<Element> elements = rootElement.elements();
            for (Element element : elements) {
                if (element.getName().equals("code_url")) {
                    code_url = element.getTextTrim();

                }
            }
            System.out.println(code_url + "=============code_url======");
        } catch (DocumentException e) {
            e.printStackTrace();
        }
       // 将生成的微信订单保存到数据库
        //根据返回的url生成二维码
        String codeapiUrl="http://pan.baidu.com/share/qrcode?w=200&h=200&url=URL";
        String ercodeUrl=codeapiUrl.replaceAll("URL", code_url);
        //
        System.out.println(ercodeUrl+"二维码");
        request.setAttribute("ercodeUrl",ercodeUrl);
        //将订单号传过去
        request.setAttribute("out_trade_no",out_trade_no);
/*
        response.sendRedirect("/pay/weixin/WeChatPaying.jsp");
*/


        request.getRequestDispatcher("/pay/weixin/WeChatPaying.jsp").forward(request,response);

    }



    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request, response);
    }
}
