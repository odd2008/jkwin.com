package cn.com.jkwin.java.Utils;


import java.text.SimpleDateFormat;
import java.util.Date;

public class OrderNumber {

    public static String WIDout_trade_no(){

        SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String str=sdf.format(new Date());

        return str;
    }
    public static String dateTime(){

        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str=sdf.format(new Date());

        return str;
    }
    
}
