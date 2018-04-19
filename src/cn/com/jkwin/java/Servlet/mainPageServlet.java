package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Dao.Impl.CityDaoImpl;
import cn.com.jkwin.java.Dao.Impl.HospitalDaoImpl;
import cn.com.jkwin.java.Entity.City;
import cn.com.jkwin.java.Entity.Hospital;
import cn.com.jkwin.java.Service.HospitalService;
import cn.com.jkwin.java.Service.ServiceImpl.AdminOficeServiceImpl;
import cn.com.jkwin.java.Service.ServiceImpl.CityServiceImpl;
import cn.com.jkwin.java.Service.ServiceImpl.HospitalServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: Allen
 * @Description:
 * @Date: Created in 2018/4/18 10:59
 * @Modified By:
 */
@WebServlet("/mainPageServlet")
public class mainPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        //从service获取city所有信息
        CityServiceImpl cityService = new CityServiceImpl();
        request.setAttribute("cities",cityService.getAllCity());

//        //从service获取hospital所有信息
//        HospitalServiceImpl hospitalService = new HospitalServiceImpl();
//        request.setAttribute("hospitals",hospitalService.getAllHospital());
//
//        //从service获取admin_ofice所有信息
//        AdminOficeServiceImpl adminOficeService = new AdminOficeServiceImpl();
//        request.setAttribute("adminofices",adminOficeService.getAllAdminOfice());

        //转发
        request.getRequestDispatcher("/jsp/mainPage.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
