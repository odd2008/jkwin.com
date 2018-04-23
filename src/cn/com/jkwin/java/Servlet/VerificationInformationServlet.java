package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Base.BaseServlet;
import cn.com.jkwin.java.Service.ServiceImpl.VerificationInformationServiceImpl;
import cn.com.jkwin.java.Service.VerificationInformationService;

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
public class VerificationInformationServlet extends BaseServlet {
    VerificationInformationService vs=new VerificationInformationServiceImpl();
    private PrintWriter out;
    void username(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //estimate:判断用户名是否存在,true:存在,false,不存在
        String usename = req.getParameter("usename");
        String estimate= "true";
        if (vs.userNumber(usename)<1){
            estimate="false";
        }
        out=resp.getWriter();
        out.write(estimate);
        out.flush();
        out.close();
    }
}
