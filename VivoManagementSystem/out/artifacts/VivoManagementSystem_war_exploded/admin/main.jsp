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
    <title>vivo商城后台管理系统</title>

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
            <strong class="am-text-primary am-text-lg">商品管理</strong>
            <small></small>
        </div>
    </div>
    <hr>
    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <div class="am-btn-group am-btn-group-xs">
                    <button id="add" class="am-btn am-btn-default">
                        <span class="am-icon-plus"></span> 新增
                    </button>
                </div>
            </div>
        </div>
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
        <li>序号</li>
        <li>商品图片</li>
        <li>商品名称</li>
        <li>商品价格</li>
        <li>上架/下架</li>
        <li>编辑</li>
        <li>删除</li>


    </ul>
    <!-- 进行循环遍历商品 -->
    <%--<c:forEach items="${allGoods}" var="goods" varStatus="status">
        <ul class="list_goods_ul">
            <li>${status.index +1}</li>
            <li><img
                src="${ctx}/admin/images/pimages/${goods.image}"
                alt=""></li>
            <li>${goods.name}</li>
            <li>${goods.price}</li>
            <li><a href="${ctx}/GoodsServlet?action=EidtUIGoods&id=${goods.id}"><img class="img_icon"
                    src="${ctx}/admin/images/edit_icon.png"
                    alt=""></a></li>
            <li><a href="${ctx}/GoodsServlet?action=delGoods&id=${goods.id}"><img class="img_icon"
                    src="${ctx}/admin/images/delete_icon.png"
                    alt=""></a></li>
        </ul>
    </c:forEach>--%>

    <%--// 循环遍历分页商品--%>
    <c:forEach items="${pageBean.goodsList}" var="pageBean" varStatus="status">
        <ul class="list_goods_ul" value="${pageBean.v_gid}">
            <li>${status.index +1}</li>
            <li><img src="${ctx}/VivoProject/${pageBean.v_image}" alt=""></li>
            <li>
                <a href="${pageContext.request.contextPath}/ShoppingServlet?action=productDetails&gid=${pageBean.v_gid}">${pageBean.v_user}</a>
            </li>
            <li>${pageBean.v_price}</li>
            <li>
                <c:if test="${pageBean.v_status  eq 5}">
                    <div class="div1 close1">
                        <span class="left"></span>
                        <span class="right"></span>
                        <div class="div2 close2"></div>
                    </div>
                </c:if>

                <c:if test="${pageBean.v_status  eq 4 }">
                    <div class="div1 open1">
                        <span class="left"></span>
                        <span class="right"></span>
                        <div class="div2 open2"></div>
                    </div>
                </c:if>

            </li>
            <li>
                <a href="${ctx}/adminServlet?action=EidtUIGoods&id=${pageBean.v_gid}">
                    <img class="img_icon" src="${ctx}/admin/images/edit_icon.png" alt=""></a>
            </li>
            <li>
                <a href="${ctx}/adminServlet?action=delGoods&id=${pageBean.v_gid}">
                    <img class="img_icon" src="${ctx}/admin/images/delete_icon.png" alt=""></a>
            </li>
        </ul>
    </c:forEach>
    <style>
        .div1 {
            width: 60px;
            height: 30px;
            border-radius: 15px;
            overflow: hidden;
            position: relative;
            margin: 30px auto;
        }

        .div1 .left {
            position: absolute;
            left: 4px;
        }

        .div1 .right {
            position: absolute;
            right: 4px;
        }

        .div2 {
            width: 20px;
            height: 20px;
            border-radius: 10px;
            background: #fff;
            position: absolute;
        }

        .open1 {
            background: #ddd;
            transition: all 0.5s;
        }

        .open2 {
            top: 5px;
            left: 5px;
            transition: all 0.5s;
        }

        .close1 {
            width: 60px;
            height: 30px;
            border-radius: 15px;
            overflow: hidden;
            position: relative;
            background: #659dea;
            transition: all 0.5s;
        }

        .close2 {
            left: 35px;
            top: 5px;
            transition: all 0.5s;
        }

    </style>

    <!--分页-->
    <div id="page" class="page_div" style="text-align: center">Page</div>
</div>


<script src="${ctx }/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx }/admin/js/paging.js"></script>
<script>
    //分页
    var currentPage = 1;
    $("#page").paging({
        pageNo: ${pageBean.currentPage}, // 当前页
        totalPage:${pageBean.totalPage}, // 共多少页
        totalSize: ${pageBean.totalCount}, // 多少条记录
        callback: function (num) {
            currentPage = num;
            var val = $("#input_search").val();
           $(window).attr('location', '${ctx}/adminServlet?action=likeQuery&currentPage='+ num+"&value=" + val);

        /*    currentPage = num;
            var val = $("#input_search").val();
            if(val !== null){
                $(window).attr('location', "/adminServlet?action=likeQuery&currentPage="+num+"&value=" + val);
                console.log(currentPage +"不知道");

            }else{
                $(window).attr('location', '/adminServlet?action=getPageData&currentPage=' + num);
            }
*/

        }
    });
    $("#add").click(function () {
        $(window).attr('location', '${ctx}/adminServlet?action=addUIGoods');
    });
    $("#input_search_btn").click(function () {
        // 获取输入框的值
        var val = $("#input_search").val();
        $("#dim").attr('href', "${ctx}/adminServlet?action=likeQuery&currentPage=1&value=" + val);
        console.log($("#dim").attr("href"));
    });
</script>
<script>
    $(function () {
        console.log($(".div1"));
        $(".div1").on('click', function () {
            // console.log('className======='+$(this).parent().get(0).className)
            $(this).toggleClass('close1');
            $(this).toggleClass('open1');
            $(this).find(".div2").toggleClass('close2');
            $(this).find(".div2").toggleClass('open2');
            var gid = $(this).parents(".list_goods_ul").attr("value");
            if ($(this).attr("class").indexOf("close1") !== -1) {
                console.log("上架");
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/adminServlet?action=Putaway",
                    data:"v_gid="+gid,
                    success:function (msg) {
                        console.log(msg);
                    }

                });
            } else {
                console.log("下架");
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/adminServlet?action=soldOut",
                    data:"v_gid="+gid,
                    success:function (msg) {
                        console.log(msg);
                    }

                });
            }
        });


    });
</script>
</body>
</html>