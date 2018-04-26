package cn.com.jkwin.java.Servlet;


import cn.com.jkwin.java.Entity.City;
import cn.com.jkwin.java.Service.ServiceImpl.CityServiceImpl;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/CityServlet")
public class CityServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("utf8");
        CityServiceImpl cityService = new CityServiceImpl();
        City    byIdCity = cityService.getCityById(1);
        City    byIdCity1 = cityService.getCityById(2);

        request.setAttribute("byIdCity",byIdCity);
        request.setAttribute("byIdCity1",byIdCity1);
        request.getRequestDispatcher("/mainPageServlet").forward(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
    doPost(request,response);
    }
}
