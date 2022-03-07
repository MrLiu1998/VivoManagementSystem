<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/VivoProject/js/jquery-1.10.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/VivoProject/js/ceiling.js"></script>
    <script src="${pageContext.request.contextPath}/VivoProject/js/pc-menu-nav.js"></script>
    <script src="${pageContext.request.contextPath}/VivoProject/js/tools.js"></script>
    <script src="${pageContext.request.contextPath}/VivoProject/js/animation2.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/top.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/font/font/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/font/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/product-footer.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/VivoProject/css/font_918068_xgekrb9yo88/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/productDeails-content.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/shoppingcart.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/personal.css">

</head>
<body class="buy-process">
<%@include file="vivo-top.jsp" %>

<!-- 内容开始 -->
<div class="content">
    <div class="wrapper">
        <div class="crumbs">
            <a href="#">商城首页</a>
            <b class="c1 iconfont icon-fanhuidingbu"></b>
            <a href="#">会员中心</a>
            <b class="c1 iconfont icon-fanhuidingbu"></b>
            我的订单
        </div>
    </div>
    <div class="wrapper">
        <aside class="menu-bar">
            <ul class="portrait-box">
                <li>
                    <a href="#" title="编辑资料">
                        <img width="160"
                             src="${pageContext.request.contextPath}/VivoProject/images/111347us9sszkewzz5xso2.png">
                    </a>
                </li>
                <li class="mem-name member-menu-nickName">${sessionScope.vivo_user.v_user}</li>
                <li class="vcoin-info">我的积分：<a href="#"><span class="red member-vcoin-number">0</span></a></li>
            </ul>
            <dl id="j_MyCenterMenus" class="menu">
                <dt class="menu-title">交易管理</dt>
                <dd class="menu-item on"><a
                        href="${pageContext.request.contextPath}/personalServlet?action=myOrder&v_uid=${sessionScope.vivo_user.v_uid}">我的订单</a>
                </dd>
                <dd class="menu-item"><a href="#">我的回收单</a></dd>
                <dd class="menu-item"><a href="#">退款/退货</a></dd>
                <dd class="menu-item"><a href="#">我的奖品</a></dd>
                <dd class="menu-item"><a href="#">我的积分</a></dd>
                <dt class="menu-title">评价管理</dt>
                <dd class="menu-item"><a href="#">评价晒单</a></dd>
                <dt class="menu-title">我的账户</dt>
                <dd class="menu-item"><a
                        href="${pageContext.request.contextPath}/VivoProject/personalMyinformation.jsp">个人资料</a></dd>
                <dd class="menu-item"><a href="${pageContext.request.contextPath}/VivoProject/take.jsp">收货地址</a></dd>
                <dd class="menu-item"><a href="#">我的礼包广场</a></dd>
                <dd class="menu-item"><a href="#">我的换新鼓励金</a></dd>
                <dd class="menu-item"><a href="#">我的优惠券</a></dd>
                <dd class="menu-item"><a href="#">我的收藏</a></dd>
            </dl>
        </aside>

        <article class="v-content">
            <dl id="member-order-list">
                <dt class="module-title">我的订单</dt>
                <dd class="module-item">
                    <ul class="statistic-tags cl">
                        <li>
                            <a href="${pageContext.request.contextPath}/personalServlet?action=myOrder&v_uid=${sessionScope.vivo_user.v_uid}">我的订单</a>
                        </li>
                        <li  >
                            <a href="${pageContext.request.contextPath}/personalServlet?action=obligations&v_uid=${sessionScope.vivo_user.v_uid}">待付款</a>
                        </li>
                        <li >
                            <a href="${pageContext.request.contextPath}/personalServlet?action=stayGoods&v_uid=${sessionScope.vivo_user.v_uid}">待收货</a>
                        </li>
                        <li >
                            <a href="${pageContext.request.contextPath}/personalServlet?action=Done&v_uid=${sessionScope.vivo_user.v_uid}">已完成</a>
                        </li>
                        <li class="on">
                            <a href="${pageContext.request.contextPath}/personalServlet?action=closed&v_uid=${sessionScope.vivo_user.v_uid}">已关闭</a>
                        </li>
                    </ul>

                    <div class="list-caption">
                        <div class="col col0">商品</div>
                        <div class="col col1">数量</div>
                        <div class="col col2">价格</div>
                        <div class="col col3">状态</div>
                        <div class="col col4">操作</div>
                    </div>

                    <c:if test="${empty myorderGoods}">
                        <div class="no-record no-order" style="font-size: 17px;text-align: center;color: red;">
                            <div class="icon"></div>
                            <span>您还没有订单</span>
                        </div>
                    </c:if>

                    <c:if test="${!empty myorderGoods}">
                        <c:forEach items="${myorder}" var="myorder" varStatus="stutas">
                            <c:if test="${myorder.v_status eq 4}">
                                <table class="order-table">
                                    <colgroup>
                                        <col width="155">
                                        <col>
                                        <col class="col1">
                                        <col class="col2">
                                        <col class="col3">
                                        <col class="col4">
                                    </colgroup>

                                    <tbody> <%-- 动态生成 --%>
                                    <tr>
                                        <th colspan="6" class="order-title">
                                            <ul>
                                                <li class="order-number">订单号：
                                                    <a href="#">${myorder.v_myOrderNo}</a>
                                                </li>
                                                <li class="order-time">成交时间:
                                                        ${myorder.v_time}
                                                </li>
                                                <li class="order-del btn-href" orderno="${myorder.v_myOrderNo}">
                                                    <span class="text">删除订单</span>
                                                </li>
                                            </ul>
                                        </th>
                                    </tr>

                                    </tbody>

                                    <tbody>

                                    <tr class="order-line">

                                        <td colspan="4">
                                            <table class="order-sub-table">
                                                <colgroup>
                                                    <col width="155">
                                                    <col>
                                                    <col class="col1">
                                                    <col class="col2">
                                                </colgroup>
                                                <c:forEach items="${myorderGoods}" var="my" varStatus="stutas">
                                                    <c:if test="${my.v_myOrderNo eq  myorder.v_myOrderNo}">
                                                        <tbody class="prod-item ">
                                                        <tr class="prod-line">
                                                            <td class="prod-pic">
                                                                <a class="figure" href="#" target="_blank">
                                                                    <img src="${pageContext.request.contextPath}/VivoProject/${my.v_image}"
                                                                         alt="">
                                                                </a>
                                                            </td>
                                                            <td colspan="3">
                                                                <table class="prods-info-table">
                                                                    <colgroup>
                                                                        <col width="80">
                                                                        <col>
                                                                        <col width="66">
                                                                        <col width="108">
                                                                    </colgroup>
                                                                    <tbody>
                                                                    <tr class="prod-info">
                                                                        <td class="prod-name" colspan="2">
                                                                            <a href="${pageContext.request.contextPath}/ShoppingServlet?action=productDetails&gid=${my.v_goodid}"
                                                                               target="_blank"
                                                                               title=" ${my.v_user} ${my.v_edName} ${my.v_colorName}   "> ${my.v_user} ${my.v_edName} ${my.v_colorName}   </a>
                                                                            <br>颜色：${my.v_colorName}
                                                                        </td>
                                                                        <td> ${my.v_count} </td>
                                                                        <td>
                                                                                ${my.v_price}
                                                                        </td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </c:if>
                                                </c:forEach>

                                            </table>
                                        </td>
                                        <td class="status">
                                                <%-- 1 待付款 2待收货 3已完成 4已关闭 --%>
                                            <c:if test="${myorder.v_status eq 1}">待付款</c:if>
                                            <c:if test="${myorder.v_status eq 2}">待收货</c:if>
                                            <c:if test="${myorder.v_status eq 3}">已完成</c:if>
                                            <c:if test="${myorder.v_status eq 4}">已关闭</c:if>
                                        </td>
                                        <td class="operation">
                                            <ul>
                                                <li><a href="#">查看订单</a></li>
                                            </ul>
                                        </td>
                                    </tr>

                                    <tr class="operation-line">
                                        <td colspan="6">
                                            <div class="amount">
                                                应付总额：
                                                <span class="money brand-red">
                                        <dfn>¥</dfn>${myorder.v_totlePrice}
                                    </span>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>


                                </table>
                            </c:if>
                        </c:forEach>
                        <%-- 判断是否有订单数据 --%>
                    </c:if>


                </dd>
            </dl>
            <div>
                <form id="orderPayform" method="post"></form>
            </div>


            <div class="cl">
                <div class="pull-right">
                    <div class="span12 clearfix">

                    </div>
                </div>
            </div>
            <script type="text/html" id="cause-tpl">
                <div class="cause-pop">
                    <div class="tit">温馨提示：订单一旦取消，无法恢复。已使用优惠券，换新鼓励金，已支付金额会通过原支付路径进行返还</div>
                    <div class="cause-list">
                        <label class="item"><input type="radio" name="cause"
                                                   value="01"><span>订单不能按时送达</span></label>
                        <label class="item"><input type="radio" name="cause"
                                                   value="02"><span>操作有误（商品，地址等选错）</span></label>
                        <label class="item"><input type="radio" name="cause"
                                                   value="03"><span>重复下单／误下单</span></label>
                        <label class="item"><input type="radio" name="cause"
                                                   value="04"><span>其他渠道价格更低</span></label>
                        <label class="item"><input type="radio" name="cause"
                                                   value="05"><span>不想买了</span></label>
                        <label class="item"><input type="radio" name="cause"
                                                   value="06"><span>其他原因</span></label>
                    </div>
                </div>
            </script>
        </article>
    </div>
</div>
<!-- 内容结束 -->

<!-- 底部开始 -->
<%@include file="vivo-footer.jsp" %>
<!-- 底部结束 -->

<script src="${pageContext.request.contextPath}/VivoProject/js/hiddenScllTop.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/scroll.js" type="text/javascript"></script>
<!--<script src="js/cartAddSuccess.js"></script>-->
<script src="${pageContext.request.contextPath}/VivoProject/js/totalShoppingcart.js" type="text/javascript"></script>
</body>
</html>