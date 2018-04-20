package cn.com.jkwin.java.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "weixinFilter" ,value ="/WeixinPayServlet")
public class weixinFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("进入监听器");
        String out_trade_no = req.getParameter("out_trade_no");
        String total_fee = req.getParameter("total_fee");
        System.out.println(out_trade_no);
        System.out.println(total_fee);
        if (null==out_trade_no||null==total_fee){
            System.out.println("jinlailema");
            HttpServletResponse response= (HttpServletResponse) resp;
            response.sendRedirect("ErrorPay.jsp");
        }else {
            chain.doFilter(req,resp);
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
