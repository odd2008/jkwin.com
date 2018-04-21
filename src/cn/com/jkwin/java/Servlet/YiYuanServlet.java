package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Entity.YiYuan;
import cn.com.jkwin.java.Service.ServiceImpl.YiYuanServiceimpl;
import cn.com.jkwin.java.Service.YiYuanService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( "/YiYuanServlet")
public class YiYuanServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //处理编码
            request.setCharacterEncoding("utf-8");
            String y_name = request.getParameter("Y_name");
            YiYuanService yiYuanService=new YiYuanServiceimpl();
            YiYuan yiYuan=yiYuanService.getYiYuan(y_name);
            if (yiYuan == null) {
                //如果没有此医院
                request.getSession().getAttribute(y_name);
                response.sendRedirect("/jsp/yiyuan.jsp");
            }else {  //查询有医院
                request.getSession().setAttribute("yiYuan",yiYuan);
                response.sendRedirect("/jsp/renai.jsp");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
