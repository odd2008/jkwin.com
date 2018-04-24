package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Base.BaseServlet;
import cn.com.jkwin.java.Service.ServiceImpl.VerificationInformationServiceImpl;
import cn.com.jkwin.java.Service.VerificationInformationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 注册验证
 */
@WebServlet("/VerificationInformationServlet")
public class VerificationInformationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        VerificationInformationService vs = new VerificationInformationServiceImpl();
        PrintWriter out;
        String username = req.getParameter("username");
        String estimate = "true";
        int num = vs.userNumber(username);
        System.out.println(num);
        if (num < 1) {
            estimate = "false";
        }
        System.out.println(estimate + username);
        out = resp.getWriter();
        out.write(estimate);
        out.flush();
        out.close();


    }
}
