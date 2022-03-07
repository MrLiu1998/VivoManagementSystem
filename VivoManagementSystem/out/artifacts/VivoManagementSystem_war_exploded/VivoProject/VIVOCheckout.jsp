<%--
  Created by IntelliJ IDEA.
  User: TeouBle
  Date: 2019/10/25
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@include file="vivo-top.jsp" %>

<html>
<head>
    <title>vivo收银台</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/VIVOCheckout.css">
</head>
<body>

<div id="app">
    <div data-v-4267f8ed="" class="home-wrap middle-content">
        <div data-v-4267f8ed="" class="content-wrap"><h2 data-v-4267f8ed="" class="title">vivo收银台</h2>
            <div data-v-3d141c7c="" data-v-4267f8ed="" class="info-wrap">
                <div data-v-3d141c7c="" class="content"><p data-v-3d141c7c="" class="fee"><span data-v-3d141c7c="">订单提交成功，请尽快完成付款！订单金额：</span>
                    <span data-v-3d141c7c="" class="fee-num">￥${myorderGoods.get(0).v_totlePrice}</span></p> <!----> <p data-v-3d141c7c=""
                                                                                             class="count-down"><span
                        >请您在提交订单后</span> <span data-v-3d141c7c="" class="count-time">29分钟</span> <span
                        data-v-3d141c7c="">内完成支付，否则订单会自动取消</span></p>
                    <div data-v-3d141c7c="" class="hr"></div>
                    <div data-v-3d141c7c="" class="detail-title " ><span data-v-3d141c7c="">订单详情</span> <i
                            data-v-3d141c7c=""></i></div>
                    <ul data-v-3d141c7c="" >
                        <div data-v-3d141c7c="" class="spread-wrap" style="">
                            <li data-v-3d141c7c=""><span data-v-3d141c7c="" class="fl">支付单号：</span>
                                <p data-v-3d141c7c="" class="fr">${myorderGoods.get(0).v_myOrderNo}</p></li>

                                <li data-v-3d141c7c=""><span data-v-3d141c7c="" class="fl">商品名称：</span>
                                    <c:forEach items="${myorderGoods}" var="myorder" varStatus="status">
                                    <p data-v-3d141c7c="" class="fr">
                                        ${myorder.v_user}  ${myorder.v_edName} ${myorder.v_colorName} x ${myorder.v_quanity}
                                    </p>
                                    </c:forEach>
                                </li>

                            <li data-v-3d141c7c=""><span data-v-3d141c7c="" class="fl">交易金额：</span>
                                <p data-v-3d141c7c="" class="fr">${myorderGoods.get(0).v_totlePrice}元</p></li>
                            <li data-v-3d141c7c=""><span data-v-3d141c7c="" class="fl">交易时间：</span>
                                <p data-v-3d141c7c="" class="fr">${myorderGoods.get(0).v_time}</p></li>
                        </div>
                        <li data-v-3d141c7c=""><span data-v-3d141c7c="" class="fl">收货信息：</span>
                            <p data-v-3d141c7c="" class="fr"><i data-v-3d141c7c="">${myorderGoods.get(0).v_consignee}</i> <i
                                    data-v-3d141c7c="">
                                    <span value="${myorderGoods.get(0).v_phone}">
                                        <c:out value="${fn:substring(myorderGoods.get(0).v_phone,0,3)}****"></c:out>
                                    <c:out value="${fn:substring(myorderGoods.get(0).v_phone, 7,11)}"></c:out>
                                    </span>
                            </i> <i data-v-3d141c7c="">${myorderGoods.get(0).v_address} ${myorderGoods.get(0).v_receivingArea} </i></p></li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</div>

</body>
</html>
<%@include file="vivo-footer.jsp"%>
<script src="${pageContext.request.contextPath}/VivoProject/js/jquery-1.9.1.min.js"></script>
<script>
    $(function () {
        $(".spread-wrap").stop().slideUp(0);
        $(".detail-title").click(function () {
            $(".spread-wrap").stop().slideToggle(500);
            $(this).toggleClass("active");
        });
    });
</script>