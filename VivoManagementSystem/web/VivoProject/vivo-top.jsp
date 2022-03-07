<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>vivo智能手机官方网站-AI非凡摄影X27</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/font/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/font/font/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/reset.css">
    <!-- PC端 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/top.css">
    <!-- 平板端 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/index-pad.css"
          media="screen and (max-width:1199px)">
    <!--手机端 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/index-phone.css"
          media="screen and (max-width:600px)">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/productDeails-content.css">

    <style>
        .vp-head-site > .login > a {
            color: #000;
        }
    </style>
    <style>
        .personage {
            width: 100px;
            height: 100%;
            font-size: 12px;
            color: #ccc;
            text-align: right;
            position: relative;
        }

        .personal {
            position: absolute;
            top: 25px;
            right: -45px;
            width: 200px;
            height: auto;
            background: rgba(255, 255, 255, .97);
            padding: 10px 0 17px;
            box-shadow: 0 0 5px rgba(3, 3, 3, .15);
            display: none;
        }

        .personal li a {
            list-style-type: none;
            text-align: center;
            display: block;
            margin: 0 23px;
            font-size: 14px;
            color: #333;
            font-weight: 400;
            line-height: 50px;
            border-bottom: 1px solid #f2f2f2;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .personage span {
            display: inline-block;
            height: 30px;
        }

        .personage:hover .personal {
            display: block;
        }

        .personal li:hover, .personal li:hover a {
            background: #f2f2f2;
            color: #456fff;
        }


    </style>

</head>
<body>
<!-- 头部开始 -->
<header>
    <div class="vp-head">
        <div class="vp-head-topbar-pc">
            <div>
                <ul class="vp-head-topbar-navs clearfix">
                    <li><a href="#" class="vp-vivo-head-brand">品牌</a></li>
                    <li><a href="#" class="vp-vivo-head-funtouchos">Funtouch OS</a></li>
                    <li><a href="#" class="vp-vivo-head-store">体验店</a></li>
                    <li><a href="#" class="vp-vivo-head-cooperation">政企业务</a></li>
                    <li><a href="#" class="vp-vivo-head-bbs">社区</a></li>
                </ul>
                <div class="vp-head-top-user">
                    <%-- 根据跳转至购物车页面 --%>
                    <a href="${pageContext.request.contextPath}/shoppingCartServlet?action=getUserShoppingCar&v_uid=${vivo_user.v_uid}" class="vp-user-shopcart">购物车</a>
                    <c:if test="${ empty vivo_user}">
                        <div class="vp-user-login-box">
                            <a href="${pageContext.request.contextPath}/VivoProject/log-n.jsp" class="vp-user-login">登录</a>
                            <i>|</i>
                            <a href="${pageContext.request.contextPath}/VivoProject/register.jsp" class="vp-user-register">注册</a>
                        </div>
                    </c:if>
                    <c:if test="${!empty vivo_user}" var="user">
                        <div class="vp-user-login-box">
                            <div class="personage">
                                <span>个人中心</span>
                                <ul class="personal">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/personalServlet?action=myOrder&v_uid=${vivo_user.v_uid}">我的订单</a>
                                    </li>
                                    <li>
                                        <a href="#">我的商城</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/VivoProject/personalCenter.jsp">帐号中心</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/registerServlet?action=registerClose" id="registerClose">退出登录</a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </c:if>

                </div>
            </div>
        </div>
        <div class="vp-head-mainbar-pc">
            <div class="vp-head-site">
                <h1 class="login">
                    <a href="${pageContext.request.contextPath}/vivoGoodSeriesServlet?action=GoodSeriesAll" class="iconfont icon-vivo"></a>
                </h1>
                <ul class="header-middle clearfix nav1"> <!-- clearfix 清除浮动 -->
                    <%--  循环系列数据表 --%>
                    <c:forEach items="${listvivo_good_series}" var="v" varStatus="status">
                        <li class="header-middle-li a ">
                            <c:if test="${v.v_name eq 'iQOO专区'}">
                            <a href="#">${v.v_name}</a>
                            <div class="vp-head-menu-series">
                                <div class="vp-head-series-wrapper">
                                    <ul class="vp-head-series-products ">
                                        <li>
                                            <a href="#">
                                                <div class="vp-head-product-img-${iqoo.size()}">
                                                    <c:forEach items="${iqoo}" var="v1" varStatus="status">
                                                        <div class="vp-head-product-img-${iqoo.size()}-${iqoo.size() - status.index}">
                                                            <img class="" alt="iQOO"
                                                                 src="${pageContext.request.contextPath}/VivoProject/${v1.v_image}">
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                                <p class="vp-head-product-name">${iqoo.get(0).v_oName}</p>
                                                <p class="vp-head-product-icon">新款</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                    <div class="vp-head-product-img-${iQOOPro.size()}">
                                                        <c:forEach items="${iQOOPro}" var="v" varStatus="status">
                                                            <div class="vp-head-product-img-${iQOOPro.size()}-${iQOOPro.size() - status.index}">
                                                                <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/${v.v_image}">
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <p class="vp-head-product-name">${iQOOPro.get(0).v_oName}</p>
                                                    <p class="vp-head-product-icon">新款</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                    <div class="vp-head-product-img-${iQOONeo.size()}">
                                                        <c:forEach items="${iQOONeo}" var="v1" varStatus="status">
                                                            <div class="vp-head-product-img-${iQOONeo.size()}-${iQOONeo.size() - status.index}">
                                                                <img class="" alt="iQOO"
                                                                     src="${pageContext.request.contextPath}/VivoProject/${v1.v_image}">
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <p class="vp-head-product-name">${iQOONeo.get(0).v_oName}</p>
                                                    <p class="vp-head-product-icon">新款</p>
                                            </a>
                                        </li>
                                        <li class="vp-head-product-links-default">
                                            <a href="#">
                                                <div class="vp-head-product-link-icon">
                                                    <div class="iconfont icon-menu-line"></div>
                                                </div>
                                                <span class="vp-head-product-name">全部iQOO机型</span>
                                            </a>
                                            <a href="#">
                                                <div class="vp-head-product-link-icon">
                                                    <div class="iconfont icon-shouji"></div>
                                                </div>
                                                <span class="vp-head-product-name">对比iQOO机型</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            </c:if>
                            <c:if test="${v.v_name eq 'NEX系列'}">
                                <a href="#">${v.v_name}</a>
                                <div class="vp-head-menu-series">
                                    <div class="vp-head-series-wrapper">
                                        <ul class="vp-head-series-products ">
                                            <li>
                                                <a href="#">
                                                    <div class="vp-head-product-img-${NEX1.size()}">
                                                        <c:forEach items="${NEX1}" var="v1" varStatus="status">
                                                            <div class="vp-head-product-img-${NEX1.size()}-${NEX1.size() - status.index}">
                                                                <img class="" alt="iQOO"
                                                                     src="${pageContext.request.contextPath}/VivoProject/${v1.v_image}">
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <p class="vp-head-product-name">${NEX1.get(0).v_oName}</p>
                                                    <p class="vp-head-product-icon">新款</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="vp-head-product-img-${NEX2.size()}">
                                                        <c:forEach items="${NEX2}" var="v" varStatus="status">
                                                            <div class="vp-head-product-img-${NEX2.size()}-${NEX2.size() - status.index}">
                                                                <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/${v.v_image}">
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <p class="vp-head-product-name">${NEX2.get(0).v_oName}</p>
                                                    <p class="vp-head-product-icon">新款</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="vp-head-product-img-${NEX3.size()}">
                                                        <c:forEach items="${NEX3}" var="v1" varStatus="status">
                                                            <div class="vp-head-product-img-${NEX3.size()}-${NEX3.size() - status.index}">
                                                                <img class="" alt="iQOO"
                                                                     src="${pageContext.request.contextPath}/VivoProject/${v1.v_image}">
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <p class="vp-head-product-name">${NEX3.get(0).v_oName}</p>
                                                    <p class="vp-head-product-icon">新款</p>
                                                </a>
                                            </li>
                                            <li class="vp-head-product-links-default">
                                                <a href="#">
                                                    <div class="vp-head-product-link-icon">
                                                        <div class="iconfont icon-menu-line"></div>
                                                    </div>
                                                    <span class="vp-head-product-name">全部NEX系列机型</span>
                                                </a>
                                                <a href="#">
                                                    <div class="vp-head-product-link-icon">
                                                        <div class="iconfont icon-shouji"></div>
                                                    </div>
                                                    <span class="vp-head-product-name">对比NEX系列机型</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </c:if>
                        </li>
                    </c:forEach>
                    <li class="header-middle-li a">
                        <a href="#" class="">X系列</a>
                        <div class="vp-head-menu-series">
                            <div class="vp-head-series-wrapper">
                                <ul class="vp-head-series-products ">
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/4477f9d2d5d075986f26babfa5da875a.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/98ff2de8f72a5497970d2c3ce0cc6268.png   ">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/111888ac0bcbe23c8fd0970e1329783d.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/0ddbb7fdd6d44c754a764acca01ac2ad.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/7c305aff1e4d56bae93795822188821b.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/192ee74f93753ea5b6fc2f58a4d3d76b.png">
                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/3c3ff64818f3219fcfc5277468bf70e6.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/d85bedb4bc4f6041461f4052cdafa592.png">

                                                </div>

                                            </div>
                                            <p class="vp-head-product-name">iQOO</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/6c65e970587e249784d0ebdacc83fbcd.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/7dd5ff2b531c5ee3d633dcaf716f01ca.png">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/fef6828a8b88a54ebdcfc16cf0e5a061.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/97cac0232ffa29df6f65ab85acfba96c.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/df6277b7616227666183c0a74b7eaf50.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">

                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/2ad0b05207d4063d5f778586784c470d.png   ">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/82e9700f9f64a7a97ea94a2307310dc2.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/7a220736e3ce97cb0f8cc1714c8ddf6a.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/945f8e5e558e5067885669eb1d15dc36.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/56976fdaf331aa58b13deafcdcbd3955.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/dd2bda401cef4da9699e0b8641ce4781.png   ">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/d6eafb02a8d71e1dc60a7923f813bd26.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/007024be15883e81fcaa03e5cf56fe4c.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/8881d96c3da9de0974b08b9fd82698be.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li class="vp-head-product-links-default">
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-menu-line"></div>
                                            </div>
                                            <span class="vp-head-product-name">全部iQOO机型</span>
                                        </a>
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-shouji"></div>
                                            </div>
                                            <span class="vp-head-product-name">对比iQOO机型</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="header-middle-li a">
                        <a href="#" class="">S系列</a>
                        <div class="vp-head-menu-series">
                            <div class="vp-head-series-wrapper">
                                <ul class="vp-head-series-products ">
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/7d6cdbbe319b5db91cd8fb8c1f891c2f.png">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/5de41f24bc543b91aac73c547c9bad05.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/f4d9c5491e8643513f670642fa1330d6.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/10d58499a46df375ae891b7ed25e9b37.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/acca86feb4d3a6a19fce57664cae6ec4.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/868f5858f52b26b55b613e62dad6afd9.png">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/874c3b9e4125647fa4efd53dca61fcfe.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/8a526e82995f3f0bab5b21fcb5ec5918.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/080e589e8acae32856640bd632139dbb.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li class="vp-head-product-links-default">
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-menu-line"></div>
                                            </div>
                                            <span class="vp-head-product-name">全部iQOO机型</span>
                                        </a>
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-shouji"></div>
                                            </div>
                                            <span class="vp-head-product-name">对比iQOO机型</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="header-middle-li a">
                        <a href="#" class="">Z系列</a>
                        <div class="vp-head-menu-series">
                            <div class="vp-head-series-wrapper">
                                <ul class="vp-head-series-products ">
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/29f71f1b187fda9c72d6b1c1447d17df.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/9931f9774d6200d71a0ebc254a2273b8.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a07b13094dfaf79d98016ca32c5a05f3.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/d302d1d0cb935c063f82a659982249c7.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/e3e14263e85aafa17e3ed3be4452e14c.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/2ecdd1ec9b2ce7125c97fe05b9551620.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/e4cdd268d5ae3bdaf5f33593f4eacf8f.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/964b9d7ab2b299bb130d935813cbc345.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/77d460519da3db6649ad69579781e330.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/56caab9e967d61bd715c87377fad4c61.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/f6cea696205908a5888dd099419d724b.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/3dc4933a1ab4c61c7c88ec385af3deda.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/daba9f5fbc39f1ae3740f6ef087f1054.png">
                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/e72d5a945c7dd563bd6c5bbfdba51311.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/2d656eeba910b051334b462b118a0968.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/227775ea17564e63f1a54a6f7e2829d1.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/573c7ac8d14fe90f4f45f6c6a351b99c.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/a86022d11ae8379aeb8f63aff6219adf.png">
                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/e72d5a945c7dd563bd6c5bbfdba51311.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/2d656eeba910b051334b462b118a0968.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/227775ea17564e63f1a54a6f7e2829d1.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/573c7ac8d14fe90f4f45f6c6a351b99c.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/a86022d11ae8379aeb8f63aff6219adf.png">
                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li class="vp-head-product-links-default">
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-menu-line"></div>
                                            </div>
                                            <span class="vp-head-product-name">全部iQOO机型</span>
                                        </a>
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-shouji"></div>
                                            </div>
                                            <span class="vp-head-product-name">对比iQOO机型</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="header-middle-li a">
                        <a href="#" class="">Y系列</a>
                        <div class="vp-head-menu-series">
                            <div class="vp-head-series-wrapper">
                                <ul class="vp-head-series-products ">
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/1838c95336b30043fa2981faa32937a1.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                </div>

                                            </div>
                                            <p class="vp-head-product-name">NEX双屏版</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/1838c95336b30043fa2981faa32937a1.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                </div>

                                            </div>
                                            <p class="vp-head-product-name">NEX双屏版</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/29f71f1b187fda9c72d6b1c1447d17df.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/9931f9774d6200d71a0ebc254a2273b8.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a07b13094dfaf79d98016ca32c5a05f3.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/d302d1d0cb935c063f82a659982249c7.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/1838c95336b30043fa2981faa32937a1.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                </div>

                                            </div>
                                            <p class="vp-head-product-name">NEX双屏版</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/1838c95336b30043fa2981faa32937a1.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                </div>

                                            </div>
                                            <p class="vp-head-product-name">NEX双屏版</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li class="vp-head-product-links-default">
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-menu-line"></div>
                                            </div>
                                            <span class="vp-head-product-name">全部iQOO机型</span>
                                        </a>
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-shouji"></div>
                                            </div>
                                            <span class="vp-head-product-name">对比iQOO机型</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="header-middle-li a">
                        <a href="#" class="">U系列</a>
                        <div class="vp-head-menu-series">
                            <div class="vp-head-series-wrapper">
                                <ul class="vp-head-series-products ">
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/7e1cb0f1ab34dbf7f284a29048f06af2.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/acca86feb4d3a6a19fce57664cae6ec4.png">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/b6c95df4e4fd799c6863eb30f3b1d81d.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/b714ee845e6e7442775874edee605745.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/61fe4625fa1f7c59f62764b10891a246.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/7e1cb0f1ab34dbf7f284a29048f06af2.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/acca86feb4d3a6a19fce57664cae6ec4.png">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/b6c95df4e4fd799c6863eb30f3b1d81d.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/45c2bf8b60a273170977edbfe55367b8.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/2b12b816e6e346b638c7be427140a651.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO Neo" src="${pageContext.request.contextPath}/VivoProject/images/347c4d1f7e7d5aab0ae9fd3993f2f7dc.png">

                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img alt="iQOO Neo" class="" src="${pageContext.request.contextPath}/VivoProject/images/9193dac9806dd73f0b90ed63c03050e5.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img alt="iQOO Neo" class="" src="${pageContext.request.contextPath}/VivoProject/images/706367be1162d0b0466149b0a96aced3.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Neo</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li class="vp-head-product-links-default">
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-menu-line"></div>
                                            </div>
                                            <span class="vp-head-product-name">全部iQOO机型</span>
                                        </a>
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-shouji"></div>
                                            </div>
                                            <span class="vp-head-product-name">对比iQOO机型</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <%-- <li class="header-middle-li a">
                         <a href="#">NEX系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/1838c95336b30043fa2981faa32937a1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">NEX双屏版</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO Neo"
                                                          src="images/826f33355eb36456c1cf48ef952b2603.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/99ed1d51eb06cca2e8c37faa87007e14.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/8a43ea78785ce40d57549cd4e55ee472.png">
                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">NEX旗舰版</p>
                                             <p class="vp-head-product-icon"></p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO Neo"
                                                          src="images/d89018a178a5c9c511aece362ff85e8e.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/17c824d969c1c5cc53c003247ffa70a5.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/a58140a62b1189f49ea4f3a0abedb664.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">NEX&NEX屏幕指纹版</p>
                                             <p class="vp-head-product-icon"></p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部NEX机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比NEX机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>
                     <li class="header-middle-li a">
                         <a href="#">X系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/4477f9d2d5d075986f26babfa5da875a.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/98ff2de8f72a5497970d2c3ce0cc6268.png   ">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/111888ac0bcbe23c8fd0970e1329783d.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/0ddbb7fdd6d44c754a764acca01ac2ad.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/7c305aff1e4d56bae93795822188821b.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/192ee74f93753ea5b6fc2f58a4d3d76b.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/3c3ff64818f3219fcfc5277468bf70e6.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/d85bedb4bc4f6041461f4052cdafa592.png">

                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">iQOO</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/6c65e970587e249784d0ebdacc83fbcd.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/7dd5ff2b531c5ee3d633dcaf716f01ca.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/fef6828a8b88a54ebdcfc16cf0e5a061.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/97cac0232ffa29df6f65ab85acfba96c.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/df6277b7616227666183c0a74b7eaf50.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">

                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/2ad0b05207d4063d5f778586784c470d.png   ">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/82e9700f9f64a7a97ea94a2307310dc2.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/7a220736e3ce97cb0f8cc1714c8ddf6a.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/945f8e5e558e5067885669eb1d15dc36.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/56976fdaf331aa58b13deafcdcbd3955.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/dd2bda401cef4da9699e0b8641ce4781.png   ">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/d6eafb02a8d71e1dc60a7923f813bd26.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/007024be15883e81fcaa03e5cf56fe4c.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/8881d96c3da9de0974b08b9fd82698be.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部iQOO机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比iQOO机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>
                     <li class="header-middle-li a">
                         <a href="#">S系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/7d6cdbbe319b5db91cd8fb8c1f891c2f.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/5de41f24bc543b91aac73c547c9bad05.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/f4d9c5491e8643513f670642fa1330d6.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/10d58499a46df375ae891b7ed25e9b37.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/acca86feb4d3a6a19fce57664cae6ec4.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/868f5858f52b26b55b613e62dad6afd9.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/874c3b9e4125647fa4efd53dca61fcfe.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/8a526e82995f3f0bab5b21fcb5ec5918.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/080e589e8acae32856640bd632139dbb.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部iQOO机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比iQOO机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>
                     <li class="header-middle-li a">
                         <a href="#">Z系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/29f71f1b187fda9c72d6b1c1447d17df.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/9931f9774d6200d71a0ebc254a2273b8.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/a07b13094dfaf79d98016ca32c5a05f3.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/d302d1d0cb935c063f82a659982249c7.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/e3e14263e85aafa17e3ed3be4452e14c.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/2ecdd1ec9b2ce7125c97fe05b9551620.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/e4cdd268d5ae3bdaf5f33593f4eacf8f.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/964b9d7ab2b299bb130d935813cbc345.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/77d460519da3db6649ad69579781e330.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/56caab9e967d61bd715c87377fad4c61.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/f6cea696205908a5888dd099419d724b.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/3dc4933a1ab4c61c7c88ec385af3deda.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/daba9f5fbc39f1ae3740f6ef087f1054.png">
                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/e72d5a945c7dd563bd6c5bbfdba51311.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/2d656eeba910b051334b462b118a0968.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/227775ea17564e63f1a54a6f7e2829d1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/573c7ac8d14fe90f4f45f6c6a351b99c.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/a86022d11ae8379aeb8f63aff6219adf.png">
                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/e72d5a945c7dd563bd6c5bbfdba51311.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/2d656eeba910b051334b462b118a0968.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/227775ea17564e63f1a54a6f7e2829d1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/573c7ac8d14fe90f4f45f6c6a351b99c.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/a86022d11ae8379aeb8f63aff6219adf.png">
                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部iQOO机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比iQOO机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>
                     <li class="header-middle-li a">
                         <a href="#">Y系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/1838c95336b30043fa2981faa32937a1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">NEX双屏版</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/1838c95336b30043fa2981faa32937a1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">NEX双屏版</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/29f71f1b187fda9c72d6b1c1447d17df.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/9931f9774d6200d71a0ebc254a2273b8.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/a07b13094dfaf79d98016ca32c5a05f3.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/d302d1d0cb935c063f82a659982249c7.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/1838c95336b30043fa2981faa32937a1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">NEX双屏版</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/1838c95336b30043fa2981faa32937a1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">NEX双屏版</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部iQOO机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比iQOO机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>
                     <li class="header-middle-li a">
                         <a href="#">U系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/7e1cb0f1ab34dbf7f284a29048f06af2.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/acca86feb4d3a6a19fce57664cae6ec4.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/b6c95df4e4fd799c6863eb30f3b1d81d.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/b714ee845e6e7442775874edee605745.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/61fe4625fa1f7c59f62764b10891a246.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/7e1cb0f1ab34dbf7f284a29048f06af2.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/acca86feb4d3a6a19fce57664cae6ec4.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/b6c95df4e4fd799c6863eb30f3b1d81d.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/45c2bf8b60a273170977edbfe55367b8.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/2b12b816e6e346b638c7be427140a651.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO Neo"
                                                          src="images/347c4d1f7e7d5aab0ae9fd3993f2f7dc.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/9193dac9806dd73f0b90ed63c03050e5.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/706367be1162d0b0466149b0a96aced3.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Neo</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部iQOO机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比iQOO机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>    --%>
                    <li class="header-middle-li-p"><a href="${pageContext.request.contextPath}/ShoppingServlet?action=getHostGoods">商城</a></li>
                    <li class="header-middle-li-p"><a href="#">服务</a></li>
                    <!-- 背景遮罩层 -->
                    <div class="vp-head-products-mask" style=""></div>
                </ul>
                <!-- 媒体查询页面大于等于1199px -->
                <ul class="header-middle clearfix nav2"> <!-- clearfix 清除浮动 -->
                    <%--  循环系列数据表 --%>
                    <c:forEach items="${listvivo_good_series}" var="v" varStatus="status">
                        <li class="header-middle-li a ">
                            <c:if test="${v.v_name eq 'iQOO专区'}">
                                <a href="#">iQOO</a>
                                <div class="vp-head-menu-series">
                                    <div class="vp-head-series-wrapper">
                                        <ul class="vp-head-series-products ">
                                            <li>
                                                <a href="#">
                                                    <div class="vp-head-product-img-${iqoo.size()}">
                                                        <c:forEach items="${iqoo}" var="v1" varStatus="status">
                                                            <div class="vp-head-product-img-${iqoo.size()}-${iqoo.size() - status.index}">
                                                                <img class="" alt="iQOO"
                                                                     src="${pageContext.request.contextPath}/VivoProject/${v1.v_image}">
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <p class="vp-head-product-name">${iqoo.get(0).v_oName}</p>
                                                    <p class="vp-head-product-icon">新款</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="vp-head-product-img-${iQOOPro.size()}">
                                                        <c:forEach items="${iQOOPro}" var="v" varStatus="status">
                                                            <div class="vp-head-product-img-${iQOOPro.size()}-${iQOOPro.size() - status.index}">
                                                                <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/${v.v_image}">
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <p class="vp-head-product-name">${iQOOPro.get(0).v_oName}</p>
                                                    <p class="vp-head-product-icon">新款</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="vp-head-product-img-${iQOONeo.size()}">
                                                        <c:forEach items="${iQOONeo}" var="v1" varStatus="status">
                                                            <div class="vp-head-product-img-${iQOONeo.size()}-${iQOONeo.size() - status.index}">
                                                                <img class="" alt="iQOO"
                                                                     src="${pageContext.request.contextPath}/VivoProject/${v1.v_image}">
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <p class="vp-head-product-name">${iQOONeo.get(0).v_oName}</p>
                                                    <p class="vp-head-product-icon">新款</p>
                                                </a>
                                            </li>
                                            <li class="vp-head-product-links-default">
                                                <a href="#">
                                                    <div class="vp-head-product-link-icon">
                                                        <div class="iconfont icon-menu-line"></div>
                                                    </div>
                                                    <span class="vp-head-product-name">全部iQOO机型</span>
                                                </a>
                                                <a href="#">
                                                    <div class="vp-head-product-link-icon">
                                                        <div class="iconfont icon-shouji"></div>
                                                    </div>
                                                    <span class="vp-head-product-name">对比iQOO机型</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${v.v_name eq 'NEX系列'}">
                                <a href="#">NEX</a>
                                <div class="vp-head-menu-series">
                                    <div class="vp-head-series-wrapper">
                                        <ul class="vp-head-series-products ">
                                            <li>
                                                <a href="#">
                                                    <div class="vp-head-product-img-${NEX1.size()}">
                                                        <c:forEach items="${NEX1}" var="v1" varStatus="status">
                                                            <div class="vp-head-product-img-${NEX1.size()}-${NEX1.size() - status.index}">
                                                                <img class="" alt="iQOO"
                                                                     src="${pageContext.request.contextPath}/VivoProject/${v1.v_image}">
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <p class="vp-head-product-name">${NEX1.get(0).v_oName}</p>
                                                    <p class="vp-head-product-icon">新款</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="vp-head-product-img-${NEX2.size()}">
                                                        <c:forEach items="${NEX2}" var="v" varStatus="status">
                                                            <div class="vp-head-product-img-${NEX2.size()}-${NEX2.size() - status.index}">
                                                                <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/${v.v_image}">
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <p class="vp-head-product-name">${NEX2.get(0).v_oName}</p>
                                                    <p class="vp-head-product-icon">新款</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <div class="vp-head-product-img-${NEX3.size()}">
                                                        <c:forEach items="${NEX3}" var="v1" varStatus="status">
                                                            <div class="vp-head-product-img-${NEX3.size()}-${NEX3.size() - status.index}">
                                                                <img class="" alt="iQOO"
                                                                     src="${pageContext.request.contextPath}/VivoProject/${v1.v_image}">
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <p class="vp-head-product-name">${NEX3.get(0).v_oName}</p>
                                                    <p class="vp-head-product-icon">新款</p>
                                                </a>
                                            </li>
                                            <li class="vp-head-product-links-default">
                                                <a href="#">
                                                    <div class="vp-head-product-link-icon">
                                                        <div class="iconfont icon-menu-line"></div>
                                                    </div>
                                                    <span class="vp-head-product-name">全部NEX系列机型</span>
                                                </a>
                                                <a href="#">
                                                    <div class="vp-head-product-link-icon">
                                                        <div class="iconfont icon-shouji"></div>
                                                    </div>
                                                    <span class="vp-head-product-name">对比NEX系列机型</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </c:if>
                        </li>
                    </c:forEach>
                    <li class="header-middle-li a">
                        <a href="#" class="">X</a>
                        <div class="vp-head-menu-series">
                            <div class="vp-head-series-wrapper">
                                <ul class="vp-head-series-products ">
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/4477f9d2d5d075986f26babfa5da875a.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/98ff2de8f72a5497970d2c3ce0cc6268.png   ">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/111888ac0bcbe23c8fd0970e1329783d.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/0ddbb7fdd6d44c754a764acca01ac2ad.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/7c305aff1e4d56bae93795822188821b.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/192ee74f93753ea5b6fc2f58a4d3d76b.png">
                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/3c3ff64818f3219fcfc5277468bf70e6.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/d85bedb4bc4f6041461f4052cdafa592.png">

                                                </div>

                                            </div>
                                            <p class="vp-head-product-name">iQOO</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/6c65e970587e249784d0ebdacc83fbcd.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/7dd5ff2b531c5ee3d633dcaf716f01ca.png">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/fef6828a8b88a54ebdcfc16cf0e5a061.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/97cac0232ffa29df6f65ab85acfba96c.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/df6277b7616227666183c0a74b7eaf50.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">

                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/2ad0b05207d4063d5f778586784c470d.png   ">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/82e9700f9f64a7a97ea94a2307310dc2.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/7a220736e3ce97cb0f8cc1714c8ddf6a.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/945f8e5e558e5067885669eb1d15dc36.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/56976fdaf331aa58b13deafcdcbd3955.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/dd2bda401cef4da9699e0b8641ce4781.png   ">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/d6eafb02a8d71e1dc60a7923f813bd26.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/007024be15883e81fcaa03e5cf56fe4c.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/8881d96c3da9de0974b08b9fd82698be.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li class="vp-head-product-links-default">
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-menu-line"></div>
                                            </div>
                                            <span class="vp-head-product-name">全部iQOO机型</span>
                                        </a>
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-shouji"></div>
                                            </div>
                                            <span class="vp-head-product-name">对比iQOO机型</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="header-middle-li a">
                        <a href="#" class="">S</a>
                        <div class="vp-head-menu-series">
                            <div class="vp-head-series-wrapper">
                                <ul class="vp-head-series-products ">
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/7d6cdbbe319b5db91cd8fb8c1f891c2f.png">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/5de41f24bc543b91aac73c547c9bad05.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/f4d9c5491e8643513f670642fa1330d6.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/10d58499a46df375ae891b7ed25e9b37.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/acca86feb4d3a6a19fce57664cae6ec4.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/868f5858f52b26b55b613e62dad6afd9.png">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/874c3b9e4125647fa4efd53dca61fcfe.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/8a526e82995f3f0bab5b21fcb5ec5918.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/080e589e8acae32856640bd632139dbb.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li class="vp-head-product-links-default">
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-menu-line"></div>
                                            </div>
                                            <span class="vp-head-product-name">全部iQOO机型</span>
                                        </a>
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-shouji"></div>
                                            </div>
                                            <span class="vp-head-product-name">对比iQOO机型</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="header-middle-li a">
                        <a href="#" class="">Z</a>
                        <div class="vp-head-menu-series">
                            <div class="vp-head-series-wrapper">
                                <ul class="vp-head-series-products ">
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/29f71f1b187fda9c72d6b1c1447d17df.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/9931f9774d6200d71a0ebc254a2273b8.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a07b13094dfaf79d98016ca32c5a05f3.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/d302d1d0cb935c063f82a659982249c7.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/e3e14263e85aafa17e3ed3be4452e14c.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/2ecdd1ec9b2ce7125c97fe05b9551620.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/e4cdd268d5ae3bdaf5f33593f4eacf8f.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/964b9d7ab2b299bb130d935813cbc345.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/77d460519da3db6649ad69579781e330.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/56caab9e967d61bd715c87377fad4c61.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/f6cea696205908a5888dd099419d724b.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/3dc4933a1ab4c61c7c88ec385af3deda.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/daba9f5fbc39f1ae3740f6ef087f1054.png">
                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/e72d5a945c7dd563bd6c5bbfdba51311.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/2d656eeba910b051334b462b118a0968.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/227775ea17564e63f1a54a6f7e2829d1.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/573c7ac8d14fe90f4f45f6c6a351b99c.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/a86022d11ae8379aeb8f63aff6219adf.png">
                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/e72d5a945c7dd563bd6c5bbfdba51311.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/2d656eeba910b051334b462b118a0968.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/227775ea17564e63f1a54a6f7e2829d1.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/573c7ac8d14fe90f4f45f6c6a351b99c.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/a86022d11ae8379aeb8f63aff6219adf.png">
                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li class="vp-head-product-links-default">
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-menu-line"></div>
                                            </div>
                                            <span class="vp-head-product-name">全部iQOO机型</span>
                                        </a>
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-shouji"></div>
                                            </div>
                                            <span class="vp-head-product-name">对比iQOO机型</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="header-middle-li a">
                        <a href="#" class="">Y</a>
                        <div class="vp-head-menu-series">
                            <div class="vp-head-series-wrapper">
                                <ul class="vp-head-series-products ">
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/1838c95336b30043fa2981faa32937a1.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                </div>

                                            </div>
                                            <p class="vp-head-product-name">NEX双屏版</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/1838c95336b30043fa2981faa32937a1.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                </div>

                                            </div>
                                            <p class="vp-head-product-name">NEX双屏版</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/29f71f1b187fda9c72d6b1c1447d17df.png">
                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/9931f9774d6200d71a0ebc254a2273b8.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a07b13094dfaf79d98016ca32c5a05f3.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/d302d1d0cb935c063f82a659982249c7.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/1838c95336b30043fa2981faa32937a1.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                </div>

                                            </div>
                                            <p class="vp-head-product-name">NEX双屏版</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/1838c95336b30043fa2981faa32937a1.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                </div>

                                            </div>
                                            <p class="vp-head-product-name">NEX双屏版</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li class="vp-head-product-links-default">
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-menu-line"></div>
                                            </div>
                                            <span class="vp-head-product-name">全部iQOO机型</span>
                                        </a>
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-shouji"></div>
                                            </div>
                                            <span class="vp-head-product-name">对比iQOO机型</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="header-middle-li a">
                        <a href="#" class="">U</a>
                        <div class="vp-head-menu-series">
                            <div class="vp-head-series-wrapper">
                                <ul class="vp-head-series-products ">
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/7e1cb0f1ab34dbf7f284a29048f06af2.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/acca86feb4d3a6a19fce57664cae6ec4.png">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/b6c95df4e4fd799c6863eb30f3b1d81d.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/b714ee845e6e7442775874edee605745.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/61fe4625fa1f7c59f62764b10891a246.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Pro</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-5">
                                                <div class="vp-head-product-img-5-5">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/7e1cb0f1ab34dbf7f284a29048f06af2.png">
                                                </div>
                                                <div class="vp-head-product-img-5-4">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/acca86feb4d3a6a19fce57664cae6ec4.png">

                                                </div>
                                                <div class="vp-head-product-img-5-3">
                                                    <img class="" alt="iQOO" src="${pageContext.request.contextPath}/VivoProject/images/b6c95df4e4fd799c6863eb30f3b1d81d.png">

                                                </div>
                                                <div class="vp-head-product-img-5-2">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/45c2bf8b60a273170977edbfe55367b8.png">

                                                </div>
                                                <div class="vp-head-product-img-5-1">
                                                    <img alt="iQOO" class="" src="${pageContext.request.contextPath}/VivoProject/images/2b12b816e6e346b638c7be427140a651.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="vp-head-product-img-3">
                                                <div class="vp-head-product-img-3-3">
                                                    <img class="" alt="iQOO Neo" src="${pageContext.request.contextPath}/VivoProject/images/347c4d1f7e7d5aab0ae9fd3993f2f7dc.png">

                                                </div>
                                                <div class="vp-head-product-img-3-2">
                                                    <img alt="iQOO Neo" class="" src="${pageContext.request.contextPath}/VivoProject/images/9193dac9806dd73f0b90ed63c03050e5.png">

                                                </div>
                                                <div class="vp-head-product-img-3-1">
                                                    <img alt="iQOO Neo" class="" src="${pageContext.request.contextPath}/VivoProject/images/706367be1162d0b0466149b0a96aced3.png">

                                                </div>
                                            </div>
                                            <p class="vp-head-product-name">iQOO Neo</p>
                                            <p class="vp-head-product-icon">新款</p>
                                        </a>
                                    </li>
                                    <li class="vp-head-product-links-default">
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-menu-line"></div>
                                            </div>
                                            <span class="vp-head-product-name">全部iQOO机型</span>
                                        </a>
                                        <a href="#">
                                            <div class="vp-head-product-link-icon">
                                                <div class="iconfont icon-shouji"></div>
                                            </div>
                                            <span class="vp-head-product-name">对比iQOO机型</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <%-- <li class="header-middle-li a">
                         <a href="#">NEX系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/1838c95336b30043fa2981faa32937a1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">NEX双屏版</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO Neo"
                                                          src="images/826f33355eb36456c1cf48ef952b2603.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/99ed1d51eb06cca2e8c37faa87007e14.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/8a43ea78785ce40d57549cd4e55ee472.png">
                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">NEX旗舰版</p>
                                             <p class="vp-head-product-icon"></p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO Neo"
                                                          src="images/d89018a178a5c9c511aece362ff85e8e.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/17c824d969c1c5cc53c003247ffa70a5.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/a58140a62b1189f49ea4f3a0abedb664.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">NEX&NEX屏幕指纹版</p>
                                             <p class="vp-head-product-icon"></p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部NEX机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比NEX机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>
                     <li class="header-middle-li a">
                         <a href="#">X系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/4477f9d2d5d075986f26babfa5da875a.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/98ff2de8f72a5497970d2c3ce0cc6268.png   ">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/111888ac0bcbe23c8fd0970e1329783d.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/0ddbb7fdd6d44c754a764acca01ac2ad.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/7c305aff1e4d56bae93795822188821b.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/192ee74f93753ea5b6fc2f58a4d3d76b.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/3c3ff64818f3219fcfc5277468bf70e6.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/d85bedb4bc4f6041461f4052cdafa592.png">

                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">iQOO</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/6c65e970587e249784d0ebdacc83fbcd.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/7dd5ff2b531c5ee3d633dcaf716f01ca.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/fef6828a8b88a54ebdcfc16cf0e5a061.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/97cac0232ffa29df6f65ab85acfba96c.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/df6277b7616227666183c0a74b7eaf50.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">

                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/2ad0b05207d4063d5f778586784c470d.png   ">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/82e9700f9f64a7a97ea94a2307310dc2.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/7a220736e3ce97cb0f8cc1714c8ddf6a.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/945f8e5e558e5067885669eb1d15dc36.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/56976fdaf331aa58b13deafcdcbd3955.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/dd2bda401cef4da9699e0b8641ce4781.png   ">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/d6eafb02a8d71e1dc60a7923f813bd26.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/007024be15883e81fcaa03e5cf56fe4c.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/8881d96c3da9de0974b08b9fd82698be.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部iQOO机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比iQOO机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>
                     <li class="header-middle-li a">
                         <a href="#">S系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/7d6cdbbe319b5db91cd8fb8c1f891c2f.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/5de41f24bc543b91aac73c547c9bad05.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/f4d9c5491e8643513f670642fa1330d6.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/10d58499a46df375ae891b7ed25e9b37.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/acca86feb4d3a6a19fce57664cae6ec4.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/868f5858f52b26b55b613e62dad6afd9.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/874c3b9e4125647fa4efd53dca61fcfe.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/8a526e82995f3f0bab5b21fcb5ec5918.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/080e589e8acae32856640bd632139dbb.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部iQOO机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比iQOO机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>
                     <li class="header-middle-li a">
                         <a href="#">Z系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/29f71f1b187fda9c72d6b1c1447d17df.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/9931f9774d6200d71a0ebc254a2273b8.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/a07b13094dfaf79d98016ca32c5a05f3.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/d302d1d0cb935c063f82a659982249c7.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/e3e14263e85aafa17e3ed3be4452e14c.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/2ecdd1ec9b2ce7125c97fe05b9551620.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/e4cdd268d5ae3bdaf5f33593f4eacf8f.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/964b9d7ab2b299bb130d935813cbc345.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/77d460519da3db6649ad69579781e330.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/56caab9e967d61bd715c87377fad4c61.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/f6cea696205908a5888dd099419d724b.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/3dc4933a1ab4c61c7c88ec385af3deda.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/daba9f5fbc39f1ae3740f6ef087f1054.png">
                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/e72d5a945c7dd563bd6c5bbfdba51311.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/2d656eeba910b051334b462b118a0968.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/227775ea17564e63f1a54a6f7e2829d1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/573c7ac8d14fe90f4f45f6c6a351b99c.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/a86022d11ae8379aeb8f63aff6219adf.png">
                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/e72d5a945c7dd563bd6c5bbfdba51311.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/2d656eeba910b051334b462b118a0968.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/227775ea17564e63f1a54a6f7e2829d1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/573c7ac8d14fe90f4f45f6c6a351b99c.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/a86022d11ae8379aeb8f63aff6219adf.png">
                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部iQOO机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比iQOO机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>
                     <li class="header-middle-li a">
                         <a href="#">Y系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/1838c95336b30043fa2981faa32937a1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">NEX双屏版</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/1838c95336b30043fa2981faa32937a1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">NEX双屏版</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/29f71f1b187fda9c72d6b1c1447d17df.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/9931f9774d6200d71a0ebc254a2273b8.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/a07b13094dfaf79d98016ca32c5a05f3.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/d302d1d0cb935c063f82a659982249c7.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/1838c95336b30043fa2981faa32937a1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">NEX双屏版</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/a58a4ec2f519099c14d0fcd73f1d8aec.png">
                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img class="" alt="iQOO"
                                                          src="images/1838c95336b30043fa2981faa32937a1.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img class="" alt="iQOO"
                                                          src="images/8cc9d05106aff4a3e8748730c96687d6.png">
                                                 </div>

                                             </div>
                                             <p class="vp-head-product-name">NEX双屏版</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部iQOO机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比iQOO机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>
                     <li class="header-middle-li a">
                         <a href="#">U系列</a>
                         <div class="vp-head-menu-series">
                             <div class="vp-head-series-wrapper">
                                 <ul class="vp-head-series-products ">
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/7e1cb0f1ab34dbf7f284a29048f06af2.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/acca86feb4d3a6a19fce57664cae6ec4.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/b6c95df4e4fd799c6863eb30f3b1d81d.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/b714ee845e6e7442775874edee605745.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/61fe4625fa1f7c59f62764b10891a246.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Pro</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-5">
                                                 <div class="vp-head-product-img-5-5">
                                                     <img class="" alt="iQOO"
                                                          src="images/7e1cb0f1ab34dbf7f284a29048f06af2.png">
                                                 </div>
                                                 <div class="vp-head-product-img-5-4">
                                                     <img class="" alt="iQOO"
                                                          src="images/acca86feb4d3a6a19fce57664cae6ec4.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-3">
                                                     <img class="" alt="iQOO"
                                                          src="images/b6c95df4e4fd799c6863eb30f3b1d81d.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-2">
                                                     <img alt="iQOO" class=""
                                                          src="images/45c2bf8b60a273170977edbfe55367b8.png">

                                                 </div>
                                                 <div class="vp-head-product-img-5-1">
                                                     <img alt="iQOO" class=""
                                                          src="images/2b12b816e6e346b638c7be427140a651.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li>
                                         <a href="#">
                                             <div class="vp-head-product-img-3">
                                                 <div class="vp-head-product-img-3-3">
                                                     <img class="" alt="iQOO Neo"
                                                          src="images/347c4d1f7e7d5aab0ae9fd3993f2f7dc.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-2">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/9193dac9806dd73f0b90ed63c03050e5.png">

                                                 </div>
                                                 <div class="vp-head-product-img-3-1">
                                                     <img alt="iQOO Neo" class=""
                                                          src="images/706367be1162d0b0466149b0a96aced3.png">

                                                 </div>
                                             </div>
                                             <p class="vp-head-product-name">iQOO Neo</p>
                                             <p class="vp-head-product-icon">新款</p>
                                         </a>
                                     </li>
                                     <li class="vp-head-product-links-default">
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-menu-line"></div>
                                             </div>
                                             <span class="vp-head-product-name">全部iQOO机型</span>
                                         </a>
                                         <a href="#">
                                             <div class="vp-head-product-link-icon">
                                                 <div class="iconfont icon-shouji"></div>
                                             </div>
                                             <span class="vp-head-product-name">对比iQOO机型</span>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </li>    --%>
                    <li class="header-middle-li-p"><a href="${pageContext.request.contextPath}/ShoppingServlet?action=getHostGoods">商城</a></li>
                    <li class="header-middle-li-p"><a href="#">服务</a></li>
                    <!-- 背景遮罩层 -->
                    <div class="vp-head-products-mask" style=""></div>
                </ul>
                <div class="header-search-wrap">
                    <div>
                        <div class="header-search-box">
                            <div class="header-search-btns">
                                <span class="iconfont icon-magnifier" style="right: 50px; opacity: 1;"></span>
                                <span class="iconfont icon-chacha" style="transform: scale(1) rotate(90deg);"></span>
                            </div>
                            <form action="" method="post">
                                <div class="header-search-input"><input type="text" placeholder="NEX双屏"></div>
                                <div class="header-search-content">
                                    <div class="header-search-recommend">
                                        <dl>
                                            <dt>全局搜索</dt>
                                            <dd><a href="#">iQoo</a></dd>
                                            <dd><a href="#">25x</a></dd>
                                            <dd><a href="#">X27</a></dd>
                                            <dd><a href="#">手机配件</a></dd>
                                            <dd><a href="#">服务网点查询</a></dd>
                                        </dl>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="header-search">
                    <a href="javascript:;" class="iconfont icon-magnifier"></a>
                </div>
            </div>
        </div>
        <div class="header-phone">
            <a href="#" class="iconfont icon-caidan"></a>
            <h1><a href="" class="iconfont icon-vivo"></a></h1>
            <a href="#" class="iconfont icon-baobao"></a>
        </div>
    </div>
</header>
<!-- 头部结束 -->
</body>
</html>
