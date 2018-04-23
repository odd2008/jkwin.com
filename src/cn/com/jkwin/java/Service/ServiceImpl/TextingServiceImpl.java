package cn.com.jkwin.java.Service.ServiceImpl;

import cn.com.jkwin.java.Service.TextingService;
import cn.com.jkwin.java.Utils.AliPhoneVerification;
import com.aliyuncs.exceptions.ClientException;

public class TextingServiceImpl implements TextingService {
    @Override
    public void texting(int random, String telnumber) {
        try {
            AliPhoneVerification.sendSms(random,telnumber);
        } catch (ClientException e) {
            e.printStackTrace();
        }
    }
}
