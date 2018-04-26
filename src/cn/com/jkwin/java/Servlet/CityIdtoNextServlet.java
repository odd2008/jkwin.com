package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Entity.Hospital;
import cn.com.jkwin.java.Entity.Region;
import cn.com.jkwin.java.Service.ServiceImpl.RegionServiceImpl;
import com.alibaba.fastjson.JSON;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/22 21:12
 * @Modified By:
 */
@WebServlet("/CityIdtoNextServlet")
public class CityIdtoNextServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //---异步请求处理servlet
        //设置字符集
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf8");
        //通过城市ID获取当前城市ID下的所有医院 Map集合接收
        RegionServiceImpl regionService = new RegionServiceImpl();
        //强转类型
        Integer cityId = Integer.parseInt(request.getParameter("cityId"));
        Map<String,List<Hospital>> RH = regionService.getHospitalFromRegionMap(cityId);

        String RHJSON = JSON.toJSONString(RH);
//        System.out.println(RHJSON);
        PrintWriter writer = response.getWriter();
        //传回客户端的数据
        writer.write(RHJSON);
        writer.flush();
        writer.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
