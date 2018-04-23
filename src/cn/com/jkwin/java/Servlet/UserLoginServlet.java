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

@WebServlet( "/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
    UserService userDao=new UserServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userNumber = request.getParameter("userNumber");
        String userPwd=request.getParameter("userPwd");
        User user = userDao.queryUser(userNumber, userPwd);
        if (user!=null){
            request.getSession().setAttribute("user",user);
        }
        request.getRequestDispatcher("").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
    }
}
