<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String ctx = request.getContextPath();
    pageContext.setAttribute("ctx", ctx);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/admin/css/style.css"
          type="text/css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/admin/css/amazeui.min.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/admin/css/pageStyle.css">


</head>
<body style="background: #f3f3f3;">

<div class="main_top">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
            <strong class="am-text-primary am-text-lg">订单管理</strong>
            <small></small>
        </div>
    </div>
    <hr>
    <div class="am-g">
        <%--<div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <div class="am-btn-group am-btn-group-xs">
                    <button id="add" class="am-btn am-btn-default">
                        <span class="am-icon-plus"></span> 新增
                    </button>
                </div>
            </div>
        </div>--%>
        <div class="am-u-sm-12 am-u-md-3"></div>
        <div class="am-u-sm-12 am-u-md-3">
            <div class="am-input-group am-input-group-sm">
                <input type="text" class="am-form-field" id="input_search" value="${value}">
                <span class="am-input-group-btn">
						<a href="" id="dim"><button class="am-btn am-btn-default" type="button"
                                                    id="input_search_btn">搜索</button></a>
					</span>
            </div>
        </div>
    </div>

</div>

<div class="goods_list">
    <ul class="title_ul">
        <li>订单编号</li>
        <li>订单时间</li>
        <li>订单用户</li>
        <li>用户手机号</li>
        <li>用户收货地址</li>
        <li>订单状态</li>
        <li>订单总金额</li>
        <li>编辑</li>
        <li>删除</li>
    </ul>

    <%--// 循环遍历分页订单--%>
    <c:forEach items="${pageBean.vivo_myorder_vivoOrder}" var="page">
        <ul class="list_goods_ul">
            <li>${page.v_myOrderNo}</li>
            <li>${page.v_time}</li>
            <li>${page.v_consignee}</li>
            <li>${page.v_phone}</li>
            <li class="address">${page.v_address}${page.v_receivingArea}</li>
            <li>
                <%-- 1 待付款 2待收货 3已完成 4已关闭--%>
                <c:if test="${page.v_status eq 1}">待付款</c:if>
                <c:if test="${page.v_status eq 2}">待收货</c:if>
                <c:if test="${page.v_status eq 3}">已完成</c:if>
                <c:if test="${page.v_status eq 4}">已关闭</c:if>
            </li>
            <li>${page.v_totlePrice}</li>
            <li>
                <a href="#">
                    <img class="img_icon" date-v_status="${page.v_status}" data-v_myOrderNo="${page.v_myOrderNo}"   name="v_status" src="${ctx}/admin/images/edit_icon.png" alt=""></a>
            </li>
            <li>
                <a href="">
                    <img class="img_icon" src="${ctx}/admin/images/delete_icon.png" alt=""></a>
            </li>
        </ul>
    </c:forEach>
    <style>
        .goods_list ul li:nth-child(3) {
            flex: 1;
        }
        .goods_list ul li:nth-child(5) {
            flex: 2;
        }

    </style>
    <!--分页-->
    <div id="page" class="page_div" style="text-align: center">Page</div>
</div>


<script src="${ctx }/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx }/admin/js/paging.js"></script>
<script>
    //分页
    $("#page").paging({
        pageNo: ${pageBean.currentPage}, // 当前页
        totalPage:${pageBean.totalPage}, // 共多少页
        totalSize: ${pageBean.totalCount}, // 多少条记录
        callback: function (num) {
            $(window).attr('location', '${ctx}/adminServlet?action=getOrder&currentPage=' + num);
        }
    });
    $(".img_icon").click(function () {
        console.log($(this).attr("data-v_myOrderNo"));
        console.log($(this).attr("date-v_status"));

        $(window).attr('location', '${ctx}/adminServlet?action=editorUIOrder&v_myOrderNo=' + $(this).attr("data-v_myOrderNo")+"&v_status="+$(this).attr("date-v_status"));
    });
    $("#input_search_btn").click(function () {
        // 获取输入框的值
        var val = $("#input_search").val();
        console.log(val);
        $("#dim").attr('href', '${ctx}/adminServlet?action=likeQuery&currentPage=1&value=' + val);
        console.log($("#dim").attr("href"));
    });
</script>

</body>
</html>