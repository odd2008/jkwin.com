package cn.com.jkwin.pay.weixin.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "weixinFilter" ,value ="/PayServlet")
public class weixinFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("进入监听器");
        if ("".equals(req.getParameter("out_trade_no"))){
            HttpServletResponse response= (HttpServletResponse) resp;
            response.sendRedirect("index.jsp");
        }
        chain.doFilter(req,resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
