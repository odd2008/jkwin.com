package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Entity.AdminOfice;
import cn.com.jkwin.java.Entity.Hospital;
import cn.com.jkwin.java.Service.AdminOficeService;
import cn.com.jkwin.java.Service.ServiceImpl.AdminOficeServiceImpl;
import cn.com.jkwin.java.Service.ServiceImpl.RegionServiceImpl;
import com.alibaba.fastjson.JSON;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/24 9:27
 * @Modified By:
 */
@WebServlet("/HospitalToNextServlet")
public class HospitalToNextServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //---异步请求处理servlet
        //设置字符集
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf8");
        //通过医院ID获取当前医院ID下的所有门诊 List集合接收
        AdminOficeServiceImpl adminOficeService = new AdminOficeServiceImpl();
        //强转类型
        Integer hospitalId = Integer.parseInt(request.getParameter("hospitalId"));
        List<AdminOfice> HO = adminOficeService.getAllAdminOfice(hospitalId);
        String HOJSON = JSON.toJSONString(HO);
        PrintWriter writer = response.getWriter();
        //传回客户端的数据
        writer.write(HOJSON);
        writer.flush();
        writer.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
