<%--
  Created by IntelliJ IDEA.
  User: 王庆媛
  Date: 2019/10/4
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.li.entity.Lip" %>
<%@ page import="com.li.entity.Lip" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>口红详情页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        @font-face {
            font-family: 'iconfont';  /* project id 1444686 */
            src: url('//at.alicdn.com/t/font_1444686_wfo7a8dry2c.eot');
            src: url('//at.alicdn.com/t/font_1444686_wfo7a8dry2c.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1444686_wfo7a8dry2c.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1444686_wfo7a8dry2c.woff') format('woff'),
            url('//at.alicdn.com/t/font_1444686_wfo7a8dry2c.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1444686_wfo7a8dry2c.svg#iconfont') format('svg');
        }
        .iconfont{
            font-family:"iconfont" !important;
            font-size:26px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }
        h2, h3 {
            color: rgb(73, 73, 73);
        }
        h4{
            font-style: italic;
            font-size:200%;
        }
        #search {
            height: 80px;
            background-color: rgb(246, 246, 241);
            display: flex;
            align-items: center;
            padding-left: 8%;
            margin-bottom: 10px;
        }
        .search-input {
            flex: 0 0 40%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
        }
        .search-btn {
            width: 35px;
            height: 35px;
            background-color: rgb(155, 154, 143);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .search-btn img {
            width: 50%;
            height: 50%;
        }
        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
        }
        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }
        .col-6 {
            height: 400px;
            padding-right: 10px;
        }
        .col-6 img {
            width: 100%;
            height: 80%;
            border-radius: 20px;
        }
        .button {
            background-color:black;
            border: none;
            color: lightgray;
            padding: 16px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            cursor: pointer;
        }
        .button1:hover {
            background-color: #555555;
            color: white;
        }




    </style>
</head>
<body>
<%
    Lip lip = (Lip) request.getAttribute("lip");
    pageContext.setAttribute("Lip", lip);
%>

<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<div id="search">
    <h2>搜索</h2>
    <input type="text" placeholder="明星同款气垫" class="search-input">
    <div class="search-btn">
        <img src="${pageContext.request.contextPath}/images/search.png" alt="">
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-8">
<%--            <h3>${lip.name}</h3>--%>
            <hr>
            <div class="row">
                <div class="col-6">
                    <img src="/images/${lip.cover}" alt="">
                </div>
                <div class="col-4">
                    <h4>${lip.name} </h4>
                    <h4>${lip.price}元</h4>
                    <form>
                        <input type="radio" name="" value="">

                    <span>专属刻字
                    勾选后点击加入购物袋，即享专属定制刻字服务。刻字服务为80元/次，如果每笔订单满800元，
                        可尊享免费刻字服务。刻字工艺需耗时5工作日，最终配送时间会相应延长
                    </span></form>
                    <form action="demo-form.php" method="get">
                        <input list="browsers" name="browser">
                        <datalist id="browsers">
                            <option value="B20米白色（HOT）">
                            <option value="B15粉白色">
                            <option value="B25桃粉色">
                            <option value="B30自然色">
                            <option value="B10象牙色(HOT)">
                        </datalist>

                        <input type="submit">
                    </form>
                    <form action="demo-form.php" method="get">
                        <input list="browserss" name="browsers">
                        <datalist id="browserss">
                            <option value="N°12干枯玫瑰">
                            <option value="N°1呛口辣椒">
                            <option value="N°2活力亮橘">
                            <option value="N°4浆果梅紫">
                            <option value="N°9棕调酒红">
                        </datalist>
                        <input type="submit">
                    </form>
                    <form action="demo-form.php" method="get">
                        <input list="browserse" name="browsere">
                        <datalist id="browserse">
                            <option value="40ml">
                            <option value="60ml">
                            <option value="100ml">
                        </datalist>
                        <input type="submit">
                    </form>
                    <form oninput="x.value=parseInt(a.value)+parseInt(b.value)">0
                        <input type="range" id="a" value="50">5</output>
                        <p>限购五只</p>
                    </form>
                    <button class="button button1">
                        <i class="iconfont">&#xe601;</i>
                        购物车</button>



                </div>
            </div>
        </div>
        <div class="col-4">
            <h3>热门标签</h3>
            <hr>
            <img src="${pageContext.request.contextPath}/images/right2.png" alt="">
        </div>
    </div>

</div>
</body>
</html>