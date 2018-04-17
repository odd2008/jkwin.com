package cn.com.jkwin.java.Base;

import javax.websocket.Endpoint;
import javax.websocket.server.ServerApplicationConfig;
import javax.websocket.server.ServerEndpointConfig;
import java.util.Set;

/**
 * ServerApplicationConfig的实现类，会在项目启动的时候自动执行
 * WebSocket的基本类，只需要实现ServerApplicationConfig接口，不需要被其他类继承
 * 执行时可通过注解标志找到
 */
public class BaseConfig implements ServerApplicationConfig{
    /**
     * 注解方式的启动
     * @param scan
     * @return
     */
    @Override
    public Set<Class<?>> getAnnotatedEndpointClasses(Set<Class<?>> scan) {
//        System.out.println("Config.............");
        return scan;
    }

    /**
     * 接口方式的启动
     * @param set
     * @return
     */
    @Override
    public Set<ServerEndpointConfig> getEndpointConfigs(Set<Class<? extends Endpoint>> set) {
        return null;
    }

}
