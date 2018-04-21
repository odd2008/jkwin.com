package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Service.ServiceImpl.WeixinPayOrderServiceImpl;
import cn.com.jkwin.java.Service.WeixinPayOrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

@WebServlet( "/WeixinPayStatusServlet")
public class WeixinPayStatusServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取订单号,当订单状态改变时返回订单状态
        String out_trade_no = request.getParameter("out_trade_no");
        WeixinPayOrderService weixinPayOrderService=new WeixinPayOrderServiceImpl();
        String status=weixinPayOrderService.queryOut_trade_no(out_trade_no);
        System.out.println(status);
        PrintWriter out = response.getWriter();
        out.write(status);
        out.flush();
        out.close();


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
    }
}
