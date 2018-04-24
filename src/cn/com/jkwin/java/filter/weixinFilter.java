package cn.com.jkwin.java.filter;


import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.logging.LogRecord;

/*
@WebFilter(filterName = "weixinFilter" ,value ="/WeixinPayServlet")
*/
public class weixinFilter implements javax.servlet.Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("进入监听器");
        String out_trade_no = req.getParameter("userIdcard");
        String total_fee = req.getParameter("total_fee");
        System.out.println(out_trade_no);
        System.out.println(total_fee);
        if (null==out_trade_no||null==total_fee){
            HttpServletResponse response= (HttpServletResponse) resp;
            response.sendRedirect("/jsp/ErrorPay.jsp");
        }else {
            chain.doFilter(req,resp);
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }



}
