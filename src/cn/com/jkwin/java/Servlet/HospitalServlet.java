package cn.com.jkwin.java.Servlet;


import cn.com.jkwin.java.Entity.Hospital;
import cn.com.jkwin.java.Service.ServiceImpl.HospitalServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/HospitalServlet")
public class HospitalServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        HospitalServiceImpl hospitalService = new HospitalServiceImpl();

        Hospital hospitalByid1 = hospitalService.findHospitalByid(1);
        Hospital hospitalByid2 = hospitalService.findHospitalByid(2);
        Hospital hospitalByid3 = hospitalService.findHospitalByid(3);
        Hospital hospitalByid4 = hospitalService.findHospitalByid(4);
        Hospital hospitalByid5 = hospitalService.findHospitalByid(5);
        Hospital hospitalByid6 = hospitalService.findHospitalByid(6);
        Integer hospitalCountsByTid = hospitalService.fingHospitalCounts();
//        System.out.println(hospitalByid1);
        request.setAttribute("hospitalByid1",hospitalByid1);
        request.setAttribute("hospitalByid2",hospitalByid2);
        request.setAttribute("hospitalByid3",hospitalByid3);
        request.setAttribute("hospitalByid4",hospitalByid4);
        request.setAttribute("hospitalByid5",hospitalByid5);
        request.setAttribute("hospitalByid6",hospitalByid6);
        request.setAttribute("hospitalCountsByTid",hospitalCountsByTid);
        request.getRequestDispatcher("/CityServlet").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
