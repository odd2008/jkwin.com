package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Entity.Doctor;
import cn.com.jkwin.java.Service.ServiceImpl.DoctorServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/DoctorInfoServlet")
public class DoctorInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        DoctorServiceImpl doctorService = new DoctorServiceImpl();
        Doctor doctor1=doctorService.getDoctorById(1);
        Doctor doctor2=doctorService.getDoctorById(2);
        Doctor doctor3=doctorService.getDoctorById(3);
        Doctor doctor4=doctorService.getDoctorById(4);
        Doctor doctor5=doctorService.getDoctorById(5);
        Doctor doctor6=doctorService.getDoctorById(6);
        Doctor doctor7=doctorService.getDoctorById(7);
        Doctor doctor8=doctorService.getDoctorById(8);
        Doctor doctor9=doctorService.getDoctorById(9);
        Doctor doctor10=doctorService.getDoctorById(10);
        Doctor doctor11=doctorService.getDoctorById(11);
        Doctor doctor12=doctorService.getDoctorById(12);
        Doctor doctor13=doctorService.getDoctorById(13);
        Doctor doctor14=doctorService.getDoctorById(14);
        Doctor doctor15=doctorService.getDoctorById(15);
        Doctor doctor16=doctorService.getDoctorById(16);
        Doctor doctor17=doctorService.getDoctorById(17);
        Doctor doctor18=doctorService.getDoctorById(18);
        Doctor doctor19=doctorService.getDoctorById(19);
        Doctor doctor20=doctorService.getDoctorById(20);
        request.setAttribute("doctor1",doctor1);
        request.setAttribute("doctor2",doctor2);
        request.setAttribute("doctor3",doctor3);
        request.setAttribute("doctor4",doctor4);
        request.setAttribute("doctor5",doctor5);
        request.setAttribute("doctor6",doctor6);
        request.setAttribute("doctor7",doctor7);
        request.setAttribute("doctor8",doctor8);
        request.setAttribute("doctor9",doctor9);
        request.setAttribute("doctor10",doctor10);
        request.setAttribute("doctor11",doctor11);
        request.setAttribute("doctor12",doctor12);
        request.setAttribute("doctor13",doctor13);
        request.setAttribute("doctor14",doctor14);
        request.setAttribute("doctor15",doctor15);
        request.setAttribute("doctor16",doctor16);
        request.setAttribute("doctor17",doctor17);
        request.setAttribute("doctor18",doctor18);
        request.setAttribute("doctor19",doctor19);
        request.setAttribute("doctor20",doctor20);
        request.getRequestDispatcher("/DoctorContServlet").forward(request,response);
}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
