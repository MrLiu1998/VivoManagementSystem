<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>收货信息</title>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/VivoProject/css/font_918068_xgekrb9yo88/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/productDeails-content.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/shoppingcart.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/personal.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/personalMyinformation.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/take.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/pick-pcc.min.1.0.1.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/VivoProject/js/pick-pcc.min.1.0.1.js"></script>
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
                <dd class="menu-item "><a
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
                        href="${pageContext.request.contextPath}/registerServlet?action=getUserInfo&v_uid=${sessionScope.vivo_user.v_uid}">个人资料</a></dd>
                <dd class="menu-item on"><a href="${pageContext.request.contextPath}/settlementServlet?action=MyOrderTakeInformationTake&v_uid=${sessionScope.vivo_user.v_uid}">收货地址</a></dd>
                <dd class="menu-item"><a href="#">我的礼包广场</a></dd>
                <dd class="menu-item"><a href="#">我的换新鼓励金</a></dd>
                <dd class="menu-item"><a href="#">我的优惠券</a></dd>
                <dd class="menu-item"><a href="#">我的收藏</a></dd>
            </dl>
        </aside>
        <article class="vcontent">
            <dl>
                <dt class="main-title-txt cl">
                    <span> 收货地址(<strong id="j_totalNum">1</strong>个)</span> <span class="small">（最多可添加20个收货地址）</span>
                </dt>

                <dd class="address-info" id="J_adressList">
                    <ul class="adress-list">
                        <li class="address-item J_address-item new" id="use-new-address" name="address">
                            <label class="inner">添加新地址</label>
                        </li>


                        <c:forEach items="${allTake}" var="a" varStatus="status">
                            <script>
                                $(function () {
                                    $("#j_totalNum").text("${status.index+1}");
                                });
                            </script>
                            <li class="address-item J_address-item " name="address" value="${a.v_tid}">
                                <label class="inner" id="J_addressDefaulted">
                                    <div class="item-top"><span>${a.v_consignee}</span>

                                        <span value="${a.v_phone}" class="mobilePhone" >
                                        <c:out value="${fn:substring(a.v_phone,0,3)}****"></c:out>
                                    <c:out value="${fn:substring(a.v_phone, 7,11)}"></c:out>
                                    </span>
                                    </div>
                                    <div class="cl">
                                        <p>
                                            <span value="${a.v_address}">${a.v_address}</span>
                                            <span value="${a.v_receivingArea}">${a.v_receivingArea}</span>
                                        </p>
                                    </div>
                                </label>
                                <ul class="operations">
                                    <li value="" class="operations-address-set-default ">默认地址</li>
                                    <li value="" class="operations-address-edit"><a href="javascript:;" class="editor">编辑</a></li>
                                    <li value="" class="operations-address-del"><a href="javascript:;" class="del">删除</a></li>
                                </ul>
                            </li>
                        </c:forEach>
                    </ul>

                </dd>
            </dl>
        </article>

    </div>


    <div class="panelWrap">
        <div class="mask"></div>
        <div class="panel dialog-container"><a class="icon-close cancelSaveAddress"  href="javascript:;"><i
                class="code-close"><i></i><i></i></i></a>
            <div class="dialog-title">新建收货地址</div>

            <%-- 添加收货地址 --%>
            <form id="shipping-address-new-edit" method="post"
                  action="${pageContext.request.contextPath}/settlementServlet?action=addTakeInformationTake&v_uid=${sessionScope.vivo_user.v_uid}">
                <table class="address-info-new">
                    <tbody>

                    <tr>
                        <th><strong>*</strong>收货人：</th>
                        <td><input type="text" name="v_consignee" id="receiverName"></td>
                    </tr>
                    <tr>
                        <th><strong>*</strong>手机号码：</th>
                        <td class="phone"><input type="tel" name="v_phone" id="mobilePhone"></td>
                    </tr>
                    <tr class="reginContriner-row">
                        <th><strong>*</strong>收货地区：</th>
                        <td id="j_ReginContriner">
                            <div class="err-box">
                                <a href="javascript:void(0)" class="pick-area pick-area6" name=""></a>
                                <input type="hidden" name="v_address">
                            </div>
                        </td>

                    </tr>
                    <tr class="address-row">
                        <th><strong>*</strong>详细地址：</th>
                        <td><input type="text" name="v_receivingArea" id="detailAddress" autocomplete="off"></td>
                    </tr>

                    <tr class="defaultAddr-row">
                        <th></th>
                        <%--<td>
                            <label class="da-label"><input name="isDefault" type="checkbox" class="i-da-chkbox"><span
                                    class="icon-checkbox "></span>设为默认地址</label>
                        </td>--%>
                    </tr>
                    </tbody>
                </table>
                <div class="area-pane-btns">
                    <button type="submit" class="btn--md btn--pop" id="saveAddress"><i class="btn-inner">保存</i>
                    </button>
                </div>
            </form>
        </div>
    </div>
    <div class="panelWrap panelWrapTwo">
        <div class="mask"></div>
        <div class="panel dialog-container"><a class="icon-close cancelSaveAddress"  href="javascript:;"><i
                class="code-close"><i></i><i></i></i></a>
            <div class="dialog-title">新建收货地址</div>

            <%-- 编辑收货地址 --%>
            <form id="shipping-address-new-edit-panelWrapTwo" method="post"
                  action="${pageContext.request.contextPath}/settlementServlet?action=editorTakeInformation&v_uid=${sessionScope.vivo_user.v_uid}">
                <table class="address-info-new">
                    <tbody>
                    <tr style="display:none;">
                        <th><strong>*</strong>id：</th>
                        <td><input type="text" name="v_tid"></td>
                    </tr>
                    <tr>
                        <th><strong>*</strong>收货人：</th>
                        <td><input type="text" name="v_consignee"></td>
                    </tr>
                    <tr>
                        <th><strong>*</strong>手机号码：</th>
                        <td class="phone"><input type="tel" name="v_phone"  ></td>
                    </tr>
                    <tr class="reginContriner-row">
                        <th><strong>*</strong>收货地区：</th>
                        <td class="j_ReginContriner">
                            <div class="err-box">
                                <a href="javascript:void(0)" class="pick-area pick-area6" name=""></a>
                                <input type="hidden" name="v_address">
                            </div>
                        </td>

                    </tr>
                    <tr class="address-row">
                        <th><strong>*</strong>详细地址：</th>
                        <td><input type="text" name="v_receivingArea" class="detailAddress" autocomplete="off"></td>
                    </tr>

                    <tr class="defaultAddr-row">
                        <th></th>
                        <%--<td>
                            <label class="da-label"><input name="isDefault" type="checkbox" class="i-da-chkbox"><span
                                    class="icon-checkbox "></span>设为默认地址</label>
                        </td>--%>
                    </tr>
                    </tbody>
                </table>
                <div class="area-pane-btns">
                    <button type="button" class="btn--md btn--pop" id="saveAddress-two"><i class="btn-inner">保存</i>
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- 内容结束 -->

<!-- 底部开始 -->
<%@include file="vivo-footer.jsp"%>
<!-- 底部结束 -->

<script src="${pageContext.request.contextPath}/VivoProject/js/hiddenScllTop.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/scroll.js" type="text/javascript"></script>
<!--<script src="js/cartAddSuccess.js"></script>-->
<script src="${pageContext.request.contextPath}/VivoProject/js/totalShoppingcart.js" type="text/javascript"></script>
<script>
    $(function () {
        $("#use-new-address").click(function () {
            $(".panelWrap").fadeIn(500);
            $(".panelWrap.panelWrapTwo").fadeOut();
        });
        $(".cancelSaveAddress").click(function () {
            $(this).parents(".panelWrap").fadeOut(500);
        });
        $(".da-label").click(function () {
            $(this).find("span").toggleClass("checked");
            return false;
        });
        /*     $(".operations").click(function () {
                 $(this).find(".operations-address-set-default").text("【默认地址】");
             });*/
        $(".btn-inner").click(function () {

            /* 使用ajax进行获取收货地址信息 */
            /*$.ajax({
                 type: "post",
                 url: "/settlementServlet?action=addTakeInformation",
                 data:"v_uid=",
                 success: function (msg) {
                     var obj = eval(msg);
                     console.log(obj);



                 }, error: function (xhr) {
                     console.log(xhr.status);
                 }
             });*/
            // 非空判断
            var receiverName = $("#receiverName").val();

            $(".cancelSaveAddress").parents(".panelWrap").fadeOut(500);

        });
    });
</script>
<%--province/city/county  -------> 效果是“请选择省/请选择市/请选择县”--%>
<script>
    $(function () {
        $(".pick-area6").pickArea({
            "format": "上海市/市辖区/普陀区", //格式
            "width": "340",
            "borderColor": "#ff8c00",//文本边框的色值
            "arrowColor": "#ff8c00",//下拉箭头颜色
            "listBdColor": "#ff8c00",//下拉框父元素ul的border色值
            "color": "#ff8c00",//字体颜色
            "hoverColor": "#ff8c00",
            //"preSet":"山东省/临沂市/兰陵县",
            "getVal": function () {
                //console.log($(".pick-area-hidden").val())
                //console.log($(".pick-area-dom").val())
                var thisdom = $("." + $(".pick-area-dom").val());
                thisdom.next().val($(".pick-area-hidden").val());
            }
        });
        $(".address-item").click(function () {
            $(this).addClass("on");
            $(this).siblings().removeClass("on");
        });
    })
</script>

<script>
    $(".del").click(function () {
        var $this = $(this);
        var v_tid = $this.parents(".address-item.J_address-item").attr("value");
        console.log(v_tid);
        if (confirm("确定删除该收货地址?")) {
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/settlementServlet?action=delTakeInformation&v_uid=${sessionScope.vivo_user.v_uid}&v_tid=" + v_tid,
                success: function (msg) {
                    console.log(msg);
                    $this.parents(".address-item.J_address-item").remove();
                }
            })
        }
    });
</script>
<script>
    $(function () {
       $(".editor").click(function () {
           var $this = $(this);
           var v_tid = $this.parents(".address-item.J_address-item").attr("value");
           $(".panelWrap.panelWrapTwo").fadeIn(500);
           $(".panelWrap.panelWrapTwo").find(".dialog-title").text("编辑收货地址");
           $.ajax({
               type:"post",
               url:"${pageContext.request.contextPath}/settlementServlet?action=getV_tidINfo&v_uid=${sessionScope.vivo_user.v_uid}&v_tid=" + v_tid,
               success:function (msg) {
                   var obj = eval("("+msg+")");
                   console.log(obj);
                   $("input[name=v_consignee]").val(obj.v_consignee);
                   $("input[name=v_phone]").val(obj.v_phone);
                   $("input[name=v_address]").val(obj.v_address);
                   $("input[name=v_receivingArea]").val(obj.v_receivingArea);
                   $("input[name=v_tid]").val(obj.v_tid);
                    console.log(obj.v_tid);
                   $("#saveAddress-two").click(function () {
                       $("#shipping-address-new-edit-panelWrapTwo").submit();
                   });

               }

           })

       });


    });
</script>
</body>
</html>
