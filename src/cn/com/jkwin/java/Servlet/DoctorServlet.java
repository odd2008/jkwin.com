package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Dao.DoctorDao;
import cn.com.jkwin.java.Dao.Impl.DoctorDaoImpl;
import cn.com.jkwin.java.Entity.Doctor;
import cn.com.jkwin.java.Entity.Hospital;
import cn.com.jkwin.java.Service.DoctorService;
import cn.com.jkwin.java.Service.HospitalService;
import cn.com.jkwin.java.Service.ServiceImpl.DoctorServiceImpl;
import cn.com.jkwin.java.Service.ServiceImpl.HospitalServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( "/DoctorServlet")
public class DoctorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //处理编码
        request.setCharacterEncoding("utf-8");
        int doctorId = Integer.parseInt(request.getParameter("doctorId"));
        String date = request.getParameter("date");
        DoctorService doctorService = new DoctorServiceImpl();
        Doctor doctor = doctorService.getDoctorById(doctorId);
        doctor.setDoctorTime(date);
        request.setAttribute("doctor",doctor);

        request.getRequestDispatcher("jsp/AppointmentRegister.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
