<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%-- 获取全局路径 --%>
<% String path = request.getContextPath();
    pageContext.setAttribute("cxt", path);%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>vivo账号注册</title>
    <link rel="stylesheet" type="text/css" href="${cxt}/VivoProject/css/zc.css"/>
    <link rel="icon" href="${cxt}/VivoProject/images/favicon_7c51b3b.ico">
    <script src="${cxt}/VivoProject/js/jquery-1.9.1.min.js"></script>
    <script src="${cxt}/VivoProject/js/tools.js"></script>
</head>
<body>
<!--中部开始-->
<section>
    <div class="layout">
        <div class="external_logo_area">
            <a href="${cxt}/VivoProject/index.jsp" target="_blank" class="vivologo"></a>
        </div>
        <div class="t_c">
            <h4>vivo帐号注册</h4>
            <h2 style="color: red;">${v_register_err}</h2>
        </div>
        <div class="outer-box">
            <div class="inner-box">
                <form action="${pageContext.request.contextPath}/registerServlet?action=register" method="post"
                      id="form_register">
                    <label class="labelbox">
                        <input type="text" placeholder="请输入手机号" name="v_phone" id="phone" />
                    </label>
                    <div class="hint phone">
                        电话号码不能为空
                    </div>
                    <label class="labelbox">
                        <input type="text" placeholder="请输入用户名" name="v_user" id="username"/>
                    </label>
                    <div class="hint username">
                        电话号码不能为空
                    </div>
                    <label class="labelbox">
                        <input type="password" placeholder="请输入密码" name="v_password" id="userpwd"/>
                    </label>
                    <div class="hint userpwd">
                        电话号码不能为空
                    </div>
                    <label class="labelbox">
                        <input type="email" placeholder="请输入QQ邮箱必填" name="v_Email" id="email"/>
                    </label>
                    <div class="hint email">
                        QQ邮箱不能为空
                    </div>
                    <label class="labelbox" style="width: 150px;float: left;">
                        <input type="text" placeholder="请输入验证码" name="code" id="code"/>
                    </label>
                    <label class="labelbox" style="width: 150px;float: right;">
                        <a href="javascript:;" class="getCode">获取验证码</a>
                        <style>
                            .getCode {
                                width: 100%;
                                height: 100%;
                                font-size: 14px;
                                line-height: 50px;
                                vertical-align: middle;
                                display: inline-block;
                                border: none;
                                border-radius: 0;
                                box-sizing: border-box;
                                float: left;
                                color: #666666;
                                outline: medium;
                                text-align: center;
                            }
                        </style>
                    </label>
                    <div class="hint code">
                        验证码不能为空
                    </div>


                    <div style="clear: both;"></div>
                    <label class="check-ctn">
                        <div class="no" style="background: url(${cxt}/VivoProject/images/uncheck.png) left center no-repeat"></div>
                        <label class="checkLabel">我已阅读并接受《vivo服务协议》</label>
                    </label>

                    <div class="link-btn">
                        <input class="link link-able" type="submit" id="register" value="注册">
                    </div>
                    <!--  <div class="mask" style="display: none">
                          <div class="mask_menu">
                              <div class="link-btn register">
                                  <button class="link link-able "><a href="javascript:;" style="color: #fff;">注册</a></button>
                              </div>
                          </div>
                      </div>-->
                </form>
            </div>
        </div>

    </div>
</section>
<!--中部结束-->
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
<script type="text/javascript">

    $(".check-ctn").click(function () {
        $(this).find(".no").toggleClass("bg");
    });

</script>
<script>
        var oInput = document.querySelector("#phone");

        oInput.oninput = debounce(function (even) {

            $.ajax({
                type:"post",
                url: "${pageContext.request.contextPath}/registerServlet?action=registerPhone",
                data: "v_phone="+$("#phone").val(),
                success:function (msg) {
                    $(".phone").text(msg);
                    $(".phone").show();
                },error:function (xhr) {
                    console.log(xhr.status);
                }
            });

        },500);
</script>
<script>
    $(function () {
        $(".hint").hide();

        $(".link ").click(function () {
            var reg = /[1-9]{11}$/;
            if ($("#phone").val().length > 11 || $("#phone").val().length < 1) {
                console.log($("#phone").val());
                $(".phone").text("请输入正确的电话号码!");
                $(".phone").show();
                return false;
            } else {
                $(".phone").hide();
            }
            reg = /\S/;
            if (!reg.test($("#username").val())) {
                $(".username").text("用户名不允许为空!!!");
                $(".username").show();
                return false;
            } else {
                $(".username").hide();
            }

            reg = /^[a-zA-Z]\w{5,17}$/;
            if (!reg.test($("#userpwd").val()) || $("#userpwd").val() === " ") {
                $(".userpwd").text("以字母开头，长度在6-18之间，只能包含字符、数字和下划线。 ");
                $(".userpwd").show();
                return false;
            } else {
                $(".userpwd").hide();
            }

            reg = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
            if (!reg.test($("#email").val()) || $("#email").val() === " ") {
                $(".email").text("邮箱格式错误!!!");
                $(".email").show();
                return false;
            } else {
                $(".email").hide();
            }

            reg = /\S/;
            if (!reg.test($("#code").val())) {
                $(".code").text("验证码不允许为空!!!");
                $(".code").show();
                return false;
            } else {
                $(".code").hide();

            }

            if ($(".check-ctn>div").attr("class").indexOf('bg') == -1) {
                $(".check-ctn>div").addClass("bg");
            }


        });
        var timer = null;
        var date = 30;
        $(".getCode").click(function () {

            $(".code").css({
                display: "block",
                width: "344px",
                float: "left",
                color: "silver"
            });
            $(".code").text("QQ邮箱信息可能会有延时，请耐心等待，如果长时间未收到信息，请60秒后重新获取");
            $(".code").show();
            timer = setInterval(function () {
                $(".getCode").text("重新获取验证码("+date+")");
                if (date <= 0) {
                    clearInterval(timer);
                    $(".getCode").text("重新获取验证码");
                    date = 10;
                }
                date--;
            }, 1000);
            if($(".getCode").text()==="重新获取验证码"||$(".getCode").text()==="获取验证码"){
                $.ajax({
                    type: "post",
                    url: "${pageContext.request.contextPath}/registerServlet?action=getCode",
                    data: "email=" + $("#email").val(),
                    success: function (msg) {
                        console.log("验证码:"+ msg);
                    },
                    error: function (xhr) {

                    }
                });
            }

        });

    });
</script>
</body>
</html>