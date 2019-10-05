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
 * @className IndexServlet
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获得各个Servlet共享的对象
        ServletContext sc = this.getServletContext();
        //取得全局应用对象中的变量
        List<Lip> lipList = (List<Lip>) sc.getAttribute("lipList");
        //存入request
        req.setAttribute("lipList", lipList);
        //通过服务器端转发，将数据带过去，并保持地址栏不变
        //这行有问题
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}