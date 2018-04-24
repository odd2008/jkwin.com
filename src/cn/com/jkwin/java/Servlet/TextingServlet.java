package cn.com.jkwin.java.Servlet;

import cn.com.jkwin.java.Utils.AliPhoneVerification;
import com.aliyuncs.dysmsapi.model.v20170525.QuerySendDetailsResponse;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import static cn.com.jkwin.java.Utils.AliPhoneVerification.querySendDetails;
import static cn.com.jkwin.java.Utils.AliPhoneVerification.sendSms;

@WebServlet("/TextingServlet")
public class TextingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*int random = Integer.parseInt(request.getParameter("random"));*/
        int random=888;
        for (int a=0;a<6;a++){
            int num= (int) (Math.random()*10);
            if (a==0){
                random=num;
            }else {
                int num2=num;
                for (int i=0;i<a;i++){
                   num2= num2*10;
                }
                random+=num2;
            }

        }
        System.out.println(random);
        String telnumber = request.getParameter("telnumber");
        try {
            SendSmsResponse respons= sendSms(random,telnumber);
            //发短信

            System.out.println("短信接口返回的数据----------------");
            System.out.println("Code=" + respons.getCode());
            System.out.println("Message=" + respons.getMessage());
            System.out.println("RequestId=" + respons.getRequestId());
            System.out.println("BizId=" + respons.getBizId());

            Thread.sleep(3000L);

            //查明细
            if(respons.getCode() != null && respons.getCode().equals("OK")) {
                QuerySendDetailsResponse querySendDetailsResponse = querySendDetails(respons.getBizId());
                System.out.println("短信明细查询接口返回数据----------------");
                System.out.println("Code=" + querySendDetailsResponse.getCode());
                System.out.println("Message=" + querySendDetailsResponse.getMessage());
                int i = 0;
                for(QuerySendDetailsResponse.SmsSendDetailDTO smsSendDetailDTO : querySendDetailsResponse.getSmsSendDetailDTOs())
                {
                    System.out.println("SmsSendDetailDTO["+i+"]:");
                    System.out.println("Content=" + smsSendDetailDTO.getContent());
                    System.out.println("ErrCode=" + smsSendDetailDTO.getErrCode());
                    System.out.println("OutId=" + smsSendDetailDTO.getOutId());
                    System.out.println("PhoneNum=" + smsSendDetailDTO.getPhoneNum());
                    System.out.println("ReceiveDate=" + smsSendDetailDTO.getReceiveDate());
                    System.out.println("SendDate=" + smsSendDetailDTO.getSendDate());
                    System.out.println("SendStatus=" + smsSendDetailDTO.getSendStatus());
                    System.out.println("Template=" + smsSendDetailDTO.getTemplateCode());
                }
                System.out.println("TotalCount=" + querySendDetailsResponse.getTotalCount());
                System.out.println("RequestId=" + querySendDetailsResponse.getRequestId());
            }
        } catch (ClientException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        out.write(String.valueOf(random));
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
