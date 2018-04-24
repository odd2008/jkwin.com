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
import java.io.PrintWriter;
import java.util.Date;

@WebServlet("/ChatServlet")
public class ChatServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String userId;
        //获取传过来的参数
        String parameter = request.getParameter("userId");
        System.out.println("parameter"+parameter);
        //如果是游客，则获取到的参数为“”，此时应该将session的id赋给userId
        if(parameter.equals("")){
            String sessionId=request.getSession().getId();
            userId = sessionId;
        }else{
            userId = parameter;
        }
        UserService userService = new UserServiceImpl();
        User user = userService.getByUserId(userId);
        String usertype = userService.getUsertype(userId);
        if(user!=null) {
            request.setAttribute("user", user);
            request.setAttribute("usertype", usertype);
        }else{

            request.setAttribute("usertype", usertype);
            request.setAttribute("userId",userId);
        }

//        request.getRequestDispatcher("/socket/ChatSocket.jsp").forward(request,response);
        request.getRequestDispatcher("/jsp/ChatRoom.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
