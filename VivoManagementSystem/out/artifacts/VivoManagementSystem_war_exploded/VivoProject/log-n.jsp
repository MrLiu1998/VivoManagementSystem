<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 获取全局路径 --%>
<% String path = request.getContextPath();
    pageContext.setAttribute("cxt", path);%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>账号登录</title>
    <link rel="stylesheet" type="text/css" href="${cxt}/VivoProject/css/DengLu.css"/>
    <link rel="shortcut icon" href="${cxt}/VivoProject/images/favicon_7c51b3b.ico"/>
</head>
<body>
<!--头部开始-->
<header>
    <div class="Head_area">
        <div class="Middle_head">
            <img src="${cxt}/VivoProject/images/1567504601389.jpg"/>
            <div class="The_LoGo_area">
                <a href="log-n.jsp" class="a_LoGo"></a>
            </div>
            <div class="Form_area_box">
                <h4 class="Form_h4">
                    帐号登录
                    <div style="color: red;font-size: 14px;">${registerLoginErr}</div>
                </h4>
                <div class="outer-box">
                    <form method="post" action="${pageContext.request.contextPath}/registerServlet?action=registerLogin" id="form_login">
                        <label class="labelbox">
                            <input type="text" id="text_urse" name="v_phone" placeholder="手机号/邮箱/用户名" />
                        </label>
                        <div class="hint text_urse">
                            电话号码不能为空
                        </div>
                        <label class="labelbox">
                            <input type="password" placeholder="密码" name="v_password"  id="password"/>
                        </label>
                        <div class="hint password">
                            电话号码不能为空
                        </div>
                        <div class="auto-box">
                            <div class="auto-login">
                                <div class="no" style="background: url(${pageContext.request.contextPath}/VivoProject/images/uncheck.png) left center no-repeat">

                                </div>
                                <label class="checkLabel">两周内自动登录</label>
                            </div>
                            <div class="link">
                                <a href="${pageContext.request.contextPath}/VivoProject/retrievePassword.jsp">
                                    忘记密码？
                                </a>
                            </div>
                        </div>
                        <div class="submit-btn">
                            <input type="submit" value="登录" id="stat"/>
                        </div>
                    </form>
                    <div class="link-btn">
                        <a href="${cxt}/VivoProject/register.jsp" target="_blank" class="lin">
                            注册vivo帐号
                        </a>
                    </div>
                    <div class="third-ctn">
                        <div class="text">
                            其它方式登录
                        </div>
                        <div class="link-box">
                            <a href="javascript:;" class="normal">
                            </a>
                            <a href="javascript:;" class="normal_2">

                            </a>
                            <a href="javascript:;" class="normal_3">

                            </a>
                            <a href="javascript:;" class="normal_4">

                            </a>
                            <a href="javascript:;" class="normal_5">

                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!--头部结束-->
<!--底部开始-->
<footer>
    <div class="Bottom_1200">
        <div class="nf-link-area">
            <ul class="service-list">
                <li>
                    <a href="javascript:;" class="ZaiXKeFu">
                        在线客服
                    </a>
                </li>
                <li>
                    <a href="javascript:;">400-678-9688(24小时全国服务热线)</a>
                </li>
            </ul>
        </div>
        <div class="copyright">
            COPYRIGHT &copy; 1996-2017 ALL RIGHTS RESERVED.粤ICP备05100288号
        </div>
    </div>
</footer>
<!--底部结束-->
<script src="${cxt}/VivoProject/js/jquery-1.10.1.min.js"></script>
<script src="${cxt}/VivoProject/js/jquery.cookie.js"></script>
<script type="text/javascript">

    $(".auto-login").click(function () {
        $(this).find(".no").toggleClass("bg");
    });
    $(".hint").hide();
    $("#stat").click(function () {
        var reg = /^[1-9]{11}$/;
        if ($("#text_urse").val() === " ") {
            $(".text_urse").text("不允许为空!!");
            $(".text_urse").show();
            return false;
        } else {
            $(".text_urse").hide();
        }
        reg = /^[a-zA-Z]\w{5,17}$/;
        if (!reg.test($("#password").val()) || $("#password").val() === " ") {
            $(".password").text("以字母开头，长度在6-18之间，只能包含字符、数字和下划线。 ");
            $(".password").show();
            return false;
        } else {
            $(".password").hide();
        }
    });

    // 判断储存的cookie是否为true
    if ($.cookie("rmbUser") == "true") {

        $("#text_urse").val($.cookie("username"));
        $("#password").val($.cookie("password"));
    }


    //记住用户名密码
    $(".submit-btn").click(function () {
        if ($(".auto-login").find(".no").attr("class").indexOf("bg") != -1) {
            var str_username = $("#text_urse").val();
            var str_password = $("#password").val();
            $.cookie("rmbUser", "true", {expires: 14}); //存储一个带7天期限的cookie
            $.cookie("username", str_username, {expires: 14});
            $.cookie("password", str_password, {expires: 14});
        } else {
            $.cookie("rmbUser", "false", {expire: -1});
            $.cookie("username", "", {expires: -1});
            $.cookie("password", "", {expires: -1});
        }
    });

</script>
</body>
</html>