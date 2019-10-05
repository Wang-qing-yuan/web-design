<%@ page import="com.li.entity.User" %>
<%@ page import="com.li.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/index">YSL官网</a>
    </li>
    <li>
        <a href="#">彩妆</a>
    </li>
    <li>
        <a href="#">护肤</a>
    </li>
    <li>
        <a href="#">香水</a>
    </li>
    <li>
        <a href="#">新品</a>
    </li>
    <li>
        <a href="#">礼盒</a>
    </li>
    <li>
        <a href="#">会员</a>
    </li>
    <li>
        <a href="#">私人定制</a>
    </li>
</ul>

<ul>
    <%--根据user是否为空，显示不同的内容--%>
    <%
        if (user != null) {
    %>
    <li>
        <a href="${pageContext.request.contextPath}/user">
            <img src="${pageContext.request.contextPath}/images/${user.avatar}" alt="" class="avatar">
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/logout">退出</a>
    </li>
    <%
    } else {
    %>
    <a href="${pageContext.request.contextPath}/login">去登录</a>
    <%
        }
    %>
</ul>
