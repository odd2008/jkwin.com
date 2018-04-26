package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Dao.Impl.UserImpl;
import cn.com.jkwin.java.Dao.UserDao;
import cn.com.jkwin.java.Entity.User;
import cn.com.jkwin.java.Service.ServiceImpl.UserServiceImpl;
import cn.com.jkwin.java.Service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 根据后台传输的用户名和密码判断用户是否正确;
 * 正确则返回用户并跳转首页,错误则继续返回登录页面;
 * 请求方式应该为ajax
 */
@WebServlet( "/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
    UserService userDao=new UserServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userNumber = request.getParameter("userNumber");
        String userPwd=request.getParameter("userPwd");
        User user = userDao.queryUser(userNumber, userPwd);
        //取不来名了,x代表回调的值
        if (user!=null){
            request.getSession().setAttribute("user",user);
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("/jsp/Login.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
    }
}
