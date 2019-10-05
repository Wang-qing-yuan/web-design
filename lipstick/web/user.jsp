<%--
  Created by IntelliJ IDEA.
  User: 王庆媛
  Date: 2019/10/4
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.li.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        .explore {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: rgb(255,253,231);
            height: 80px;
            padding-left: 8%;
            padding-right: 10px;
        }
        header {
            height: 100px;
            margin: auto;
            width: 80%;
            border-bottom: 1px solid lightgray;
        }
        header img {
            height: 70%;
            display: block;
            margin: auto;
            margin-bottom:10px;
        }
        @font-face {
            font-family: 'iconfont';  /* project id 1444686 */
            src: url('//at.alicdn.com/t/font_1444686_w0k0d5eo2ol.eot');
            src: url('//at.alicdn.com/t/font_1444686_w0k0d5eo2ol.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1444686_w0k0d5eo2ol.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1444686_w0k0d5eo2ol.woff') format('woff'),
            url('//at.alicdn.com/t/font_1444686_w0k0d5eo2ol.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1444686_w0k0d5eo2ol.svg#iconfont') format('svg');
        }
        .iconfont{
            font-family:"iconfont" !important;
            font-size:16px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }
        .nav {
            display: flex;
            align-items: center;
            list-style: none;
        }
        .nav li {
            color: rgb(62,39,35);
            font-size: 18px;
            margin-right: 20px;
        }
        .search-input {
            flex: 0 0 30%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
            color: rgb(187, 187, 202);
            font-size: 16px;
        }
        .info {
            display: flex;
        }
        .profile {
            width: 80px;
            height: 80px;
            border-radius: 5px;
        }
        h2 {
            color: rgb(73, 73, 73);
            margin-left: 15px;
        }
        .info-box {
            padding: 10px 10px 10px 10px;
            width: 90%;
            height: 240px;
            border: 1px solid #eee;
            border-radius: 5px;
            background-color: rgb(255,255,141);
        }
        .info-box .top {
            height: 80%;
            display: flex;
            border-bottom: 1px solid #e4e6e5;
        }
        .info-box .top img {
            width: 55%;
            height: 85%;
            margin-right: 5px;
            border-radius: 5px;
        }
        p {
            font-size: 13px;
            color: #333;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-top: 5px;
            margin-bottom: 5px;
        }
        .item {
            height: 80px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        .read {
            border-bottom: 1px solid #eee;
        }
        .read a {
            color: rgb(51, 119, 170);
            text-decoration: none;
        }
        .container {
            width: 85%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
        }
    </style>
</head>
<body>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>

<%--顶部区域，引入共用的top.jsp页面--%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>
<header>
    <i class="iconfont">&#xe600;</i>
    <span>专柜咨询 · 客服中心</span>
    <img src="images/head1.png">
</header>

<%--浏览区域--%>
<div class="explore">
    <ul class="nav">
        <li>我的订单</li>
        <li>个人信息</li>
        <li>我的购物车</li>
        <li>我的优惠券</li>
    </ul>
    <label>
        <input type="text" placeholder="搜索你感兴趣的内容和人" class="search-input">
    </label>
</div>
<br>

<%--页面主题区域--%>
<div class="container">
    <div class="row">
        <%--左侧2/3区域--%>
        <div class="col-8">
            <div class="info">
                <img src="images/${user.avatar}" alt="" class="profile">
                <h2>${user.nickname}</h2>
            </div>
            <br>
            <div class="item">
                <ul class="nav">
                    <li>兴趣标签</li>
                </ul>

            </div>
            <div class="item">
                <ul class="nav">
                    <li>我的买家秀</li>
                </ul>
                <p>晒晒自己入手的宝贝吧</p>
            </div>

            <div class="item">
                <ul class="nav">
                    <li>留言板</li>
                </ul>
                <label>
                    <textarea cols="80" rows="5"></textarea>
                </label>
                <div>
                    <input type="button" value="留言">
                </div>
            </div>
        </div>

        <%-- 右侧1/3区域--%>
        <div class="col-4">
            <div class="info-box">
                <div class="top">
                    <img src="images/${user.avatar}" >
                    <div>
                        <p>常居：${user.address}</p>
                        <p>账号：${user.account}</p>
                        <p>${user.joinDate}加入</p>
                    </div>
                </div>
                <br>
                <p>${user.nickname}</p>
            </div>
            <br>
            <div class="item">
                <ul class="nav">
                    <li>为您推荐</li>
                </ul>




            </div>
        </div>
    </div>
</div>
</body>
</html>
