package cn.com.jkwin.java.Entity;

import java.util.Date;

public class WeixinOrder {
    private Integer id;
    private String status;//订单状态,提交,未支付,支付,删除4种状态
    private  String appid;//公众账号Id
    private String mch_id;//商户好
    private String body;//商品描述
    private String out_trade_no;//订单号
    private int total_fee;//总金额
    private String  trade_type;//交易类型
    private String userIDcard;//患者身份证
    private Date    generated_time;
    private Date    completion_time;

    @Override
    public String toString() {
        return "WeixinOrder{" +
                "id=" + id +
                ", status='" + status + '\'' +
                ", appid='" + appid + '\'' +
                ", mch_id='" + mch_id + '\'' +
                ", body='" + body + '\'' +
                ", out_trade_no='" + out_trade_no + '\'' +
                ", total_fee=" + total_fee +
                ", trade_type='" + trade_type + '\'' +
                ", userIDcard='" + userIDcard + '\'' +
                ", generated_time=" + generated_time +
                ", completion_time=" + completion_time +
                '}';
    }

    public Date getGenerated_time() {
        return generated_time;
    }

    public void setGenerated_time(Date generated_time) {
        this.generated_time = generated_time;
    }

    public Date getCompletion_time() {
        return completion_time;
    }

    public void setCompletion_time(Date completion_time) {
        this.completion_time = completion_time;
    }

    public String getUserIDcard() {
        return userIDcard;
    }

    public void setUserIDcard(String userIDcard) {
        this.userIDcard = userIDcard;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAppid() {
        return appid;
    }

    public void setAppid(String appid) {
        this.appid = appid;
    }

    public String getMch_id() {
        return mch_id;
    }

    public void setMch_id(String mch_id) {
        this.mch_id = mch_id;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getOut_trade_no() {
        return out_trade_no;
    }

    public void setOut_trade_no(String out_trade_no) {
        this.out_trade_no = out_trade_no;
    }

    public int getTotal_fee() {
        return total_fee;
    }

    public void setTotal_fee(int total_fee) {
        this.total_fee = total_fee;
    }

    public String getTrade_type() {
        return trade_type;
    }

    public void setTrade_type(String trade_type) {
        this.trade_type = trade_type;
    }
}
