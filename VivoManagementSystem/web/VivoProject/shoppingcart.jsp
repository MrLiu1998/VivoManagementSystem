<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的购物车</title>
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


</head>
<body class="buy-process">
<!-- 头部开始 -->
<%@include file="vivo-top.jsp" %>
<!-- 头部结束 -->

<!-- 内容开始 -->
<div class="content">
    <div class="wrapper">
        <table class="main-title-module">
            <tbody>
            <tr>
                <td></td>
                <th class="main-title-txt">我的购物车</th>
                <td><a class="continue-shopping"
                       href="${pageContext.request.contextPath}/ShoppingServlet?action=getHostGoods">继续购物
                    <b>&gt; </b></a></td>
            </tr>
            </tbody>
        </table>
    </div>

    <c:if test="${!empty userShoppingCar}">
        <div class="wrapper" >
            <div class="cart-head">
                <table class="order-table">
                    <tbody>
                    <tr>
                        <th class="check-col">
                            <label class="J_viewCheckAll">
                                <i class="checkbox "></i>
                                <a href="javascript:void(0);">全选</a>
                            </label>
                        </th>
                        <th class="goods-col">商品名称</th>
                        <th class="price-col">价格（元）</th>
                        <th class="quantity-col">数量</th>
                        <th class="benefit-col">优惠</th>
                            <%--<th class="vcoin-col">赠送积分</th>--%>
                        <th class="sum-col">小计（元）</th>
                        <th class="action-col">操作</th>
                    </tr>
                    </tbody>
                </table>
            </div>

            <form action="" method="post">
                <div class="shop-cart-wrap">
                    <div class="prod-list-wrap">
                        <table class="order-table">
                            <tbody id="tbody">

                            <c:forEach items="${userShoppingCar}" var="carGoods" varStatus="status">
                                <tr class="prod-line" value="${carGoods.v_cid}">
                                    <td class="check-col">
                                        <i class="checkbox J_viewCheckBox J_operate"></i>
                                    </td>
                                    <td class="prod-pic column">
                                        <a href="javascript:;" target="_blank">
                                            <div class="figure">
                                                <img src="${pageContext.request.contextPath}/VivoProject/${carGoods.v_image}">
                                            </div>
                                        </a>
                                    </td>
                                    <td class="goods-col column">
                                        <a class="goods-link" href="javascript:;" target="_blank">
                                                ${carGoods.v_user} ${carGoods.v_colorName}
                                        </a>
                                        <br>
                                        颜色：${carGoods.v_colorName}
                                    </td>
                                    <td class="price-col column">${carGoods.v_price}</td>
                                    <td class="column">
                                            <span class="number-box">
                                                <a class="reduce-num J_reduceNum J_operate" href="javascript:;">-</a>
                                                <input type="number" name="v_quanity"
                                                       class="count-number prod-num J_viewNum J_operate"
                                                       value="${carGoods.v_quanity}"
                                                       title="请输入购买量" readonly="" id="totalCount">
                                                <a class="add-num J_addNum J_operate" href="javascript:;">+</a>
                                            </span>
                                    </td>
                                    <td class="column"><span class="J_viewDiscount">0.00</span></td>
                                    <td class="J_viewVcoin column">${carGoods.v_cprice}</td>
                                        <%--<td class="total-price J_viewSalePrice column">3198.00</td>--%>
                                    <td class="column">
                                        <a href="javascript:;" class="favorite J_favorite">加入到收藏夹</a>
                                        <br>
                                        <a href="${pageContext.request.contextPath}/shoppingCartServlet?action=delGoodCar&v_cid=${carGoods.v_cid}&v_uid=${sessionScope.vivo_user.v_uid}" class="J_delSingle">删除</a>
                                    </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="cart-toolbar-wrap">
                    <div class="wrapper">
                        <div class="cart-toolbar-inner cl">
                            <div class="option-operation">
                                <ul>
                                    <li>
                                        <label class="J_viewCheckAll">
                                            <i class="checkbox"></i> &nbsp;<a href="javascript:void(0);">全选</a>
                                        </label>
                                    </li>
                                    <li><a class="J_delMultiple" href="javascript:void(0);">删除选中的商品</a></li>
                                    <li><a class="J_favoriteMultiple" href="javascript:void(0);">移入收藏夹</a></li>
                                </ul>
                            </div>
                            <div class="cart-toolbar-right">
                                <table class="cart-toolbar-table">
                                    <tbody>
                                    <tr>
                                        <td class="sum-area">
                                            <p class="sum-area-infoI">
                                                已选商品
                                                <em><b id="J_totalSkuNum">1</b></em>件，合计（不含运费）：
                                                <b class="price"><dfn>¥</dfn><span id="J_totalSalePrice">0</span></b>
                                            </p>
                                            <p class="sum-area-infoII">
                                                ( 商品总价：
                                                <span class="price">
                                            <dfn>¥</dfn>
                                            <span id="J_totalMarketPrice">0</span>
                                        </span>
                                                优惠：
                                                <span class="price">
                                            -<dfn>¥</dfn>
                                            <span id="J_totalDiscount">0.00</span>
                                        </span> )
                                            </p>
                                        </td>
                                        <td class="btn-area">
                                            <a href="${pageContext.request.contextPath}/settlementServlet?action=MyOrderTakeInformation&v_uid=${sessionScope.vivo_user.v_uid}">
                                                <button class="btn--lg cart-btn-submit" type="button" title="去结算">
                                                    <i class="btn-inner">去结算</i>
                                                </button>
                                            </a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </c:if>
    <c:if test="${empty userShoppingCar}">
        <div class="wrapper">
            <div class="no-result">
                <div>
                    <img src="${pageContext.request.contextPath}/VivoProject/images/no-result.50507a32.png" alt="">
                </div>
                <div class="no-result-des">哎呀，购物车为空！</div>
            </div>

        </div>
        <style>
            .no-result {
                height: 452px;
                background-color: #fff;
                text-align: center;
            }

            .no-result > div > img {
                width: 189px;
                height: 144px;
                margin-top: 76px;
            }

            .no-result-des {
                margin-top: 20px;
                font-size: 15px;
                color: #666;
                text-align: center;
                line-height: 22.5px;
            }
        </style>
    </c:if>

</div>
<!-- 内容结束 -->

<!-- 底部开始 -->
<%@include file="vivo-footer.jsp" %>
<!-- 底部结束 -->

<script src="${pageContext.request.contextPath}/VivoProject/js/hiddenScllTop.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/scroll.js" type="text/javascript"></script>
<!--<script src="js/cartAddSuccess.js"></script>-->
<script src="${pageContext.request.contextPath}/VivoProject/js/totalShoppingcart.js" type="text/javascript"></script>

<%-- Ajax计算商品数量 --%>
<script src="${pageContext.request.contextPath}/VivoProject/js/CartAjax.js"></script>
<script>
    $(function () {
        $(".add-num").click(function () {
            var totalCount = $(this).parents(".prod-line").find("#totalCount").val(); // 数量
            var J_viewVcoin = $(this).parents(".prod-line").find(".J_viewVcoin").text();// 小计
            var v_user = $(this).parents(".prod-line").attr("value"); // 当前商品
            console.log(totalCount);
            console.log(v_user);
            console.log(J_viewVcoin);

            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/shoppingCartServlet?action=editorGoodCount&totalCount=" + totalCount + "&J_viewVcoin=" + J_viewVcoin + "&v_cid=" + v_user,
                data: "",
                success: function (msg) {
                    console.log(msg);
                }, error: function (xhr) {
                    console.log(xhr.status);
                }
            });
        });
        $(".reduce-num").click(function () {
            var totalCount = $(this).parents(".prod-line").find("#totalCount").val(); // 数量
            var J_viewVcoin = $(this).parents(".prod-line").find(".J_viewVcoin").text();// 小计
            var v_user = $(this).parents(".prod-line").attr("value"); // 当前商品
            console.log(totalCount);
            console.log(v_user);
            console.log(J_viewVcoin);

            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/shoppingCartServlet?action=editorGoodCount&totalCount=" + totalCount + "&J_viewVcoin=" + J_viewVcoin + "&v_cid=" + v_user,
                data: "",
                success: function (msg) {
                    console.log(msg);
                }, error: function (xhr) {
                    console.log(xhr.status);
                }
            });
        });
    });
</script>
</body>
</html>