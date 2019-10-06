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
            background-color: white;
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
            font-size: 23px;
            margin: 15px 5px 20px 5px;
        }

        .search-input {
            flex: 0 0 30%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
            color: black;
            font-size: 16px;
            position:relative;
            right:100px

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
            margin-left: 190px;
            position:absolute;
            top: 390px;
        }
        .info-box {
            padding: 10px 10px 10px 10px;
            width: 50%;
            height: 230px;
            border: 5px solid gainsboro;
            border-radius: 50px;
            background-color: rgb(203,152,100);
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
            border-radius: 50px;
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
        hr {
            width: 90%;
            color-rgb(211,211,211);
            margin-top: 3px;
            position:relative;
            right:-90px
        }
        p.uppercase {
            text-transform:uppercase;}
        .button {
            display: inline-block;
            border-radius: 4px;
            background-color: black;
            border: none;
            color: #FFFFFF;
            text-align: center;
            font-size: 28px;
            padding: 15px;
            width: 200px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
        }

        .button span {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
        }

        .button span:after {
            content: '»';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -20px;
            transition: 1.5s;
        }

        .button:hover span {
            padding-right: 25px;
        }

        .button:hover span:after {
            opacity: 1;
            right: 0;
        }
        .card {
            height: 300px;
            width: 230px;
            margin: 15px 5px 20px 5px;
            background-color:rgb(242,242,242);
            border-radius: 10px;
        }
        .card2{
            height: 250px;
            width: 270px;
            margin: 15px 5px 20px 5px;
            background-color:rgb(242,242,242);
            border-radius: 10px;
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
        <li>彩妆</li>
        <li>香水</li>
        <li>护肤</li>
        <li>明星产品</li>
        <li>尊享礼盒</li>
        <li>会员中心</li>
<%--        <li>--%>
<%--            <a href="#">彩妆</a>--%>
<%--        </li>--%>

    </ul>
    <label>
        <input type="text" placeholder="搜索你感兴趣的内容和人" class="search-input">
    </label>
</div>
<hr>
<br>

<%--页面主题区域--%>
<div class="container">
    <div class="row">
        <%--左侧48%区域--%>
        <div class="col-6">
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
                <h2>${user.nickname}</h2>
            </div>
            <br>
            <br>
            <div class="item">
                <ul class="nav">
                    <li>我的订单</li>
                    <li>个人信息</li>
                    <li>我的心愿单</li>
                    <li>我的地址</li>
                    <li>我的优惠卷</li>
                </ul>
            </div>
            <div class="item">
                <p class="uppercase">欢迎您注册成为官方会员,我们很高兴为您服务。如果您有任何问题，请与我们联系。</p>
                <p class="uppercase">如果您的个人信息有变, 请在此更新个人信息，完善生日信息，生日当月发现惊喜。</p>
                <button class="button" style="vertical-align:middle"><span>立即购买</span></button>
                <button class="button" style="vertical-align:middle"><span>个人信息</span></button>
            </div>
        </div>

        <%-- 右侧1/3区域--%>
        <div class="col-4">
            <div class="item">
                <ul class="nav">
                    <li>您可能感兴趣</li>



                </ul>
                <img src="images/lip6.jpg" class="card2">

                <p>衣典香水 风衣</p>
                <img src="images/lip8.jpg" class="card2">
                <p>香水随行反转巴黎限定礼盒</p>
            </div>

        </div>
            <div class="col-2">
                <div class="item">
                    <div class="card">
                    <ul class="nav">
                        <li>客户服务</li>
                    </ul>
                    <li>如果有任何问题请联系我们</li>
                    <li>电话400-820-6362</li>
                    <li>周一至周日9：00-21：00</li>
                    <li>联系客服下单，惊喜送礼</li>
                    <li>在线<u>咨询</u></li>
                </div>
    </div>
</div>

</body>
</html>
