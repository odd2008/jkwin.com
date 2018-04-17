package cn.com.jkwin.webSocket;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@ServerEndpoint("/yangli")
public class ChatSocket {
    private String username;
    private Session session;
    static List<ChatSocket> chatSockets = new ArrayList<>();
    public ChatSocket(){
        //每个管道就是一个独立的对象，因此不用担心多线程的问题
//        System.out.println("ChatSocket创建对象");
    }
    @OnOpen
    //一个Session代表一个会话,但是WebSocket与Servlet中的Session不是同一个
    public void open(Session session){
        this.session=session;
        chatSockets.add(this);
        String queryString = session.getQueryString();
        username = queryString.split("=")[1];
        System.out.println("session"+session.getId());

    }

    @OnClose
    public void close(){

        System.out.println("session"+session.getId()+"通道关闭");
    }

    @OnMessage
    public void message(String msg){
        System.out.println("客户端:"+msg);
        String n="{\"username\":\""+username+"\",\"msg\":\""+msg+"\"}";

        try {
            for (ChatSocket chatSocket:chatSockets) {
                chatSocket.session.getBasicRemote().sendText(n);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
