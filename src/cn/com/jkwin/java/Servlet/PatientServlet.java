package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Entity.Patient;
import cn.com.jkwin.java.Service.PatientService;
import cn.com.jkwin.java.Service.ServiceImpl.PatientServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PatientServlet")
public class PatientServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //处理编码
            request.setCharacterEncoding("utf-8");
            String pname = request.getParameter("Pname");
            String pidcard = request.getParameter("Pidcard");
            String pphone = request.getParameter("Pphone");
            System.out.println(pname);
            if(pname.equals("") || null==pname){
               request.getRequestDispatcher("/Register.jsp").forward(request,response);
          }else if(null==pidcard||pidcard.equals("")){
              request.getRequestDispatcher("/Register.jsp").forward(request,response);
            }else if(pphone.equals("") || null==pphone){
               request.getRequestDispatcher("/Register.jsp").forward(request,response);
           }
            PatientService patientService = new PatientServiceimpl();
            Patient pat = new Patient();
            pat.setPname(pname);
            pat.setPidcard(pidcard);
            pat.setPphone(pphone);
            int i = patientService.add(pat);
            //跳转到任志勇的支付页面
            request.getRequestDispatcher("/pay.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
