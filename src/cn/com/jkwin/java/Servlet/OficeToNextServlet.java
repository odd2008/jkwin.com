package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Entity.AdminOfice;
import cn.com.jkwin.java.Entity.Doctor;
import cn.com.jkwin.java.Service.ServiceImpl.AdminOficeServiceImpl;
import cn.com.jkwin.java.Service.ServiceImpl.DoctorServiceImpl;
import com.alibaba.fastjson.JSON;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/24 14:20
 * @Modified By:
 */
@WebServlet("/OficeToNextServlet")
public class OficeToNextServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //---异步请求处理servlet
        //设置字符集
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf8");
        //通过医院ID获取当前医院ID下的所有门诊 List集合接收
        DoctorServiceImpl doctorService = new DoctorServiceImpl();
        //强转类型
        Integer hospitalId = Integer.parseInt(request.getParameter("hospitalId"));
        Integer oficeId = Integer.parseInt(request.getParameter("oficeId"));
        List<Doctor> Dor = doctorService.getDoctorByOidHid(oficeId,hospitalId);
        //转换成json
        String DorJSON = JSON.toJSONString(Dor);
        //传回客户端的数据
        PrintWriter writer = response.getWriter();
        writer.write(DorJSON);
        writer.flush();
        writer.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
