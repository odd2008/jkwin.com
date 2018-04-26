package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Service.ServiceImpl.DoctorServiceImpl;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/DoctorContServlet")
public class DoctorContServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("utf8");
         DoctorServiceImpl doctorService = new DoctorServiceImpl();

        int doctorCountsByTid1 = doctorService.getDoctorCountsByHid(1);
        int doctorCountsByTid2 = doctorService.getDoctorCountsByHid(2);
        int doctorCountsByTid3 = doctorService.getDoctorCountsByHid(3);
        int doctorCountsByTid4 = doctorService.getDoctorCountsByHid(4);
        int doctorCountsByTid5 = doctorService.getDoctorCountsByHid(5);
        int doctorCountsByTid6 = doctorService.getDoctorCountsByHid(6);
        request.setAttribute("doctorCountsByTid1",doctorCountsByTid1);
        request.setAttribute("doctorCountsByTid2",doctorCountsByTid2);
        request.setAttribute("doctorCountsByTid3",doctorCountsByTid3);
        request.setAttribute("doctorCountsByTid4",doctorCountsByTid4);
        request.setAttribute("doctorCountsByTid5",doctorCountsByTid5);
        request.setAttribute("doctorCountsByTid6",doctorCountsByTid6);
        request.getRequestDispatcher("/HospitalServlet").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 doPost(request,response);
    }
}
