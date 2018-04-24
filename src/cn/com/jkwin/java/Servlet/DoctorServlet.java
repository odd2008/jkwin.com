package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Dao.DoctorDao;
import cn.com.jkwin.java.Dao.Impl.DoctorDaoimpl;
import cn.com.jkwin.java.Entity.Doctor;

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
        DoctorDao doctorDao=new DoctorDaoimpl();
        Doctor doctor = null;
        try {
            doctor= doctorDao.GetDoctorBydoctorId(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("doctor",doctor);
        request.getRequestDispatcher("jsp/AppointmentRegister.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
