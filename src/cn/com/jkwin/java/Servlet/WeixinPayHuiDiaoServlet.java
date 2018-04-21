package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Entity.WeixinOrder;
import cn.com.jkwin.java.Service.ServiceImpl.WeixinPayOrderServiceImpl;
import cn.com.jkwin.java.Service.WeixinPayOrderService;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.HashMap;
import java.util.List;

/**
 * 微信回调函数
 */

@WebServlet("/WeixinPayHuiDiaoServlet")

public class WeixinPayHuiDiaoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("回调函数");
        //接收微信的调用
        InputStream inputStream = request.getInputStream();
        StringBuffer sb = new StringBuffer();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        String line = "";
        while ((line = bufferedReader.readLine()) != null) {
            sb.append(line);
        }

        bufferedReader.close();
        inputStream.close();
        String respXml = sb.toString();
        System.out.println(respXml + "respons");


        //回复消息给微信
        //1.解析xml
        try {
            String code = "";
            Document document = DocumentHelper.parseText(respXml);
            Element rootElement = document.getRootElement();
            List<Element> elements = rootElement.elements();
            HashMap<String,String> map=new HashMap<String,String>();
            WeixinOrder order=new WeixinOrder();
            for (Element element : elements) {
                map.put(element.getName(),element.getText());
                if (element.getName().equals("result_code")) {
                    code = element.getTextTrim();
                    System.out.println("成功code" + code);

                    //第三步:返回信件涵
                    if ("SUCCESS".equals(code)) {
                        String resXml = "<xml>" + "<return_code><![CDATA[SUCCESS]]></return_code>"
                                + "<return_msg><![CDATA[OK]]></return_msg>" + "</xml> ";
                        OutputStream outputStream = response.getOutputStream();
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
                        bufferedOutputStream.write(respXml.getBytes());
                        bufferedOutputStream.close();
                        outputStream.close();

                    }
                }
            }
            //根据获取的xml修改相应的订单状态
            System.out.println(map);
            String out_trade_no=map.get("out_trade_no");
            String result_code=map.get("result_code");
            WeixinPayOrderService orderService=new WeixinPayOrderServiceImpl();
            orderService.updateStatus(out_trade_no,"支付完成");
        } catch (DocumentException e) {
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
