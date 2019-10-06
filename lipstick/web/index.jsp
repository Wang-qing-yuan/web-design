<%--
  Created by IntelliJ IDEA.
  User: 王庆媛
  Date: 2019/10/4
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.li.entity.Lip" %>
<%@ page import="javax.sound.sampled.Clip" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
  <title>口红官网</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
  <style type="text/css">
    h2, h3 {
      color: rgb(73, 73, 73);
    }
    header {
      height: 100px;
      margin: auto;
      width: 80%;
      border-bottom: 1px solid lightgray;
        display: flex;
        justify-content: space-between;
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

    #show{
      height: 320px;
        margin: auto;
        width: 80%;
        border-bottom: 1px solid lightgray;
    }

    #search {
      height: 80px;
      background-color: rgb(246, 246, 241);
      display: flex;
      align-items: center;
      padding-left: 8%;
      margin-bottom: 10px;
      margin-top:50px;
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
      background-color: rgb(203,152,100);
      display: flex;
      align-items: center;
      justify-content: center;

    }
    .search-btn img {
      width: 100%;
      height: 100%;
        border-radius: 10px;
    }
    .card {
      height: 180px;
      margin: 20px 20px 30px 30px;
    }
    .card img {
      width: 95%;
      height: 95%;
    }
    .card p {
      font-size: 13px;
      color:black;
    }
    .col-4 img {
      margin: 10px 5px 20px 5px;
      width: 85%;
      background-color: #d5d5d5;
    }
    hr {
      width: 90%;
      color: #eee;
      margin-top: 10px;
    }
    .center {
        text-align: center;
        border: 3px solid white;
    }


  </style>
</head>
<body>
<%
  List<Lip> lipList = (List<Lip>) request.getAttribute("lipList");
%>
<%--使用jsp的include动作，将top.jsp页面包含进来，这个顶部导航可以给各个页面共享--%>
<div id="top">
  <jsp:include page="top.jsp"/>
</div>




<div class="container" style="padding: 10px 5px 10px;" >
    <i class="iconfont">&#xe600;</i>
    <button type="button" class="btn btn-default" title="送货与退货"
            data-container="body" data-toggle="popover" data-placement="bottom"
            data-content="订单跟踪"
            >专柜查询
    </button>
    <i class="iconfont">&#xe600;</i>
    <button type="button" class="btn btn-default" title="联系我们"
            data-container="body" data-toggle="popover" data-placement="bottom"
            data-content="在线咨询400-820-6362（9:00-21:00）"
    >客服中心
    </button>
    <i class="iconfont">&#xe600;</i>
    <button type="button" class="btn btn-default" title="购物袋"
            data-container="body" data-toggle="popover" data-placement="bottom"
            data-content="您的购物袋是空的马上添加您最喜欢的产品"
    >购物袋-0件商品
    </button>
</div>
<script>
    $(function (){
        $("[data-toggle='popover']").popover();

    });
</script>
<header>
    <img src="images/head1.png"></header>




<%--大图区--%>
<div id="show">
    <img src="images/show1.jpg"  width="100%" height="100%">
</div>




<%--搜索区--%>
<div id="search">
  <h2>搜索</h2>
  <input type="text" placeholder="明星同款气垫" class="search-input">

  <div class="search-btn">
    <button><img src="images/search.png"  ></button>
  </div>
</div>

<%--主体内容区--%>
<div class="container">
  <div class="row">
    <%--左侧2/3主体部分--%>
    <div class="col-8">
        <div class="center">
            <h3>YSL FAVORITES</h3>
            <h3>明星产品</h3>
        </div>
      <hr>
      <div class="row">
        <%--遍历图书数据集合，将每个图书对象放入页面对象--%>
        <%
          for (Lip lip : lipList) {
            pageContext.setAttribute("lip", lip);
        %>
        <%--引用col-2表示每行显示5本，再追加card细节样式--%>
        <div class="col-3 card">
          <%--点击口红封面图，地址栏跳转为/detail/id,进入图书详情Servlet--%>
          <a href="${pageContext.request.contextPath}/detail/${lip.id}">
            <div class="center"> <img src="images/${lip.cover}" alt=""></div>
          </a>
          <div class="center"><p style="color:black">${lip.name}</p></div>
          <div class="center"><p>${lip.price}元</p></div>
        </div>
        <%
          }
        %>
      </div>
    </div>


    <div class="col-4">
      <h3>YSL BEAUTY</h3>
          <h3>搜索发现</h3>
      <hr>
        <img src="images/right2.png">
    </div>
  </div>


  <footer>
    <ul>
      <li>@2015-2019</li>
      <li>niit.edu.cn,</li>
      <li>all rights reserved</li>
      <li>口红网页</li>
    </ul>
    <ul>
      <li>联系我们</li>
      <li>帮助中心</li>
      <li>法律声明</li>
      <li>移动合作</li>
    </ul>
  </footer>
</div>
</body>
</html>
