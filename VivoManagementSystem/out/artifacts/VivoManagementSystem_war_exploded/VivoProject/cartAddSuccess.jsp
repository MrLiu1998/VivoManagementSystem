<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 获取全局路径 --%>
<% String path = request.getContextPath();pageContext.setAttribute("cxt",path);%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="${cxt}/VivoProject/js/jquery-1.10.1.min.js"></script>
    <script src="${cxt}/VivoProject/js/ceiling.js"></script>
    <script src="${cxt}/VivoProject/js/pc-menu-nav.js"></script>
    <script src="${cxt}/VivoProject/js/tools.js"></script>
    <script src="${cxt}/VivoProject/js/animation2.js"></script>
    <link rel="stylesheet" href="${cxt}/VivoProject/css/base.css">
    <link rel="stylesheet" href="${cxt}/VivoProject/css/reset.css">
    <link rel="stylesheet" href="${cxt}/VivoProject/css/top.css">
    <link rel="stylesheet" href="${cxt}/VivoProject/font/font/iconfont.css">
    <link rel="stylesheet" href="${cxt}/VivoProject/font/iconfont.css">
    <link rel="stylesheet" href="${cxt}/VivoProject/css/product-footer.css">
    <link rel="stylesheet" type="text/css" href="${cxt}/VivoProject/css/font_918068_xgekrb9yo88/iconfont.css">
    <link rel="stylesheet" href="${cxt}/VivoProject/css/productDeails-content.css">
    <link rel="stylesheet" href="${cxt}/VivoProject/css/footer.css">
    <link rel="stylesheet" href="${cxt}/VivoProject/css/carAddSuccess.css">

</head>
<body>
<!-- 头部开始 -->
<%@include file="vivo-top.jsp"%>
<!-- 头部结束 -->


<div class="content">
    <div class="wrapper">
        <div class="add-success-container">
            <div class="add-success-title">
                <img src="${pageContext.request.contextPath}/VivoProject/images/gou_93eee52.png" alt="">
                <span>商品已经成功添加到购物车！</span>
            </div>
            <div class="add-success-content clearfix">
                <c:forEach items="${userShoppingCar}" var="usc">
                <div class="product-info">
                    <div class="product-img">
                        <img src="${pageContext.request.contextPath}/VivoProject/${usc.v_image}" alt="">
                    </div>
                    <div class="product-des">
                        <div class="product-name">${usc.v_user}  ${usc.v_colorName}</div>
                        <div class="product-tag">颜色：${usc.v_colorName}</div>
                        <div class="product-tag">版本：${usc.v_edName}</div>
                        <div class="product-tag">数量：${usc.v_quanity}</div>
                    </div>
                </div>
                <div class="product-action">
                    <a target="_blank" href="" id="view-detail">
                        <button type="button" class="btn--lg btn-next first">
                            <a href="${pageContext.request.contextPath}/ShoppingServlet?action=productDetails&gid=${usc.v_gid}" target="_self">
                                <i class="btn-inner" >查看商品详情</i></a>
                        </button>
                    </a>
                    <a target="_blank" href="" id="to-cart">
                        <button class="btn--lg btn-confirm now-buy" type="button" title="去购物车结算">
                            <a href="${pageContext.request.contextPath}/shoppingCartServlet?action=getUserShoppingCar&v_uid=${vivo_user.v_uid}"><i class="btn-inner">去购物车结算</i></a>
                        </button>
                    </a>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>


<!-- 底部开始 -->
<%@include file="vivo-footer.jsp"%>
<style>
    .footer{
        background: #fff;
    }
</style>
<!-- 底部结束 -->

<!-- 返回顶部开始 -->

<!-- 返回顶部结束 -->
<script src="${cxt}/VivoProject/js/hiddenScllTop.js" type="text/javascript"></script>
<script src="${cxt}/VivoProject/js/scroll.js" type="text/javascript"></script>
<script src="${cxt}/VivoProject/js/cartAddSuccess.js"></script>
</body>
</html>