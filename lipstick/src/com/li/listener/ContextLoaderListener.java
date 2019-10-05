package com.li.listener;

import com.li.entity.Lip;
import com.li.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author wang
 * @className ContextLoaderListener
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
@WebListener
public class ContextLoaderListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users = {
                new User(1,"aaa@qq.com","698d51a19d8a121ce581499d7b701668","哎哟少女","user1.jpg","江苏南京", LocalDate.of(2018,6,11)),
                new User(2,"bbb@qq.com","bcbe3365e6ac95ea2c0343a2395834dd","百变小樱","user2.jpg","浙江杭州",LocalDate.of(2019,2,18)),
                new User(3,"ccc@qq.com","310dcbbf4cce62f762a2aaa148d556bd","卑微小媛","user3.jpg","湖北武汉",LocalDate.of(2019,8,19))
        };
        userList = Arrays.asList(users);

        //创建并生成口红数据列表
        List<Lip> lipList = new ArrayList<>(10);
        Lip[] lips = {
                new Lip(1,"恒颜无瑕轻垫粉底液","lip1.jpg",510),
                new Lip(2,"细管纯口红","lip2.jpg",335),
                new Lip(3,"黑管唇釉","lip3.jpg",320),
                new Lip(4,"反转巴黎女士华溢香水","lip4.jpg",1090),
                new Lip(5,"黑色奥飘茗女士香水","lip5.jpg",1090),
                new Lip(6,"衣典香水 风衣","lip6.jpg",1450),
                new Lip(7,"方管高定唇衣礼盒","lip7.jpg",640),
                new Lip(8,"香水随行反转巴黎限定礼盒","lip8.jpg",1425),
                new Lip(9,"即行即妆礼盒","lip9.jpg",830),

        };
        lipList = Arrays.asList(lips);

        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList",userList);
        servletContext.setAttribute("lipList",lipList);
}
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");

    }

}
