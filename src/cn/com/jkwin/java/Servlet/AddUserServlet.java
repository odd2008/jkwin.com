package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Entity.User;
import cn.com.jkwin.java.Service.ServiceImpl.UserServiceImpl;
import cn.com.jkwin.java.Service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( "/AddUserServlet")
public class AddUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String number = request.getParameter("number");
        String pwd = request.getParameter("pwd");
        System.out.println(number+pwd);
        User user=new User();
        user.setUserNumber(number);
        user.setUserPwd(pwd);
        UserService userService=new UserServiceImpl();
        userService.addUser(user);
        response.sendRedirect("/jsp/RegisterSuccess.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
