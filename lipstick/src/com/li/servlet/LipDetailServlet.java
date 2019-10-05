package com.li.servlet;

import com.li.entity.Lip;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
/**
 * @author wang
 * @className LipDetailServlet
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/detail/*")
public class LipDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求的URI，并去除空格
        String requestPath = req.getRequestURI().trim();
        //获得最后一个"/"的位置
        int position = requestPath.lastIndexOf("/");
        //从该位置到最后取子串，也就是"/detail/3"中的3，有了这个id，就可以取集合中找到匹配的口红对象
        String id = requestPath.substring(position + 1);
        //从全局变量中取出口红列表
        ServletContext sc = this.getServletContext();
        List<Lip> lipList = (List<Lip>) sc.getAttribute("lipList");
        //遍历，查找指定id的口红
        for (Lip lip : lipList) {
            if (Integer.parseInt(id) == lip.getId()) {
                //找到匹配的id，存入request，页面转发到口红详情页，地址栏不变
                req.setAttribute("lip",lip);
                req.getRequestDispatcher("/lip-detail.jsp").forward(req, resp);
            }
        }
    }
}
