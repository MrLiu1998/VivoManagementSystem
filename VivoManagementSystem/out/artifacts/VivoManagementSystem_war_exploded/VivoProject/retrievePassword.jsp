<%--
  Created by IntelliJ IDEA.
  User: 16927
  Date: 2019/10/13
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="${cxt}/VivoProject/css/zc.css"/>
<html>
<head>
    <title>找回密码</title>
</head>
<body>
<!--中部开始-->
<section>
    <div class="layout">
        <div class="external_logo_area">
            <a href="${cxt}/VivoProject/index.jsp" target="_blank" class="vivologo"></a>
        </div>
        <div class="t_c">
            <h4>找回密码</h4>
            <h2 style="color: red;">${v_register_err}</h2>
        </div>
        <div class="outer-box">
            <div class="inner-box">
                <form action="${pageContext.request.contextPath}/registerServlet?action=updatePassword" method="post"
                      id="form_register">
                    <label class="labelbox">
                        <input type="text" placeholder="请输入手机号" name="v_phone" id="phone"/>
                    </label>
                    <label class="labelbox">
                        <input type="text" placeholder="请输入QQ邮箱" style="display:block;" name="v_email" id="email"/>
                    </label>
                    <label class="labelbox" style="display:none;"  id="pwd">
                        <input type="text" placeholder="请输入新密码" name="v_password" id="v_password"/>
                    </label>
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
                    <div class="link-btn">
                        <input class="link link-able" type="button" id="register" value="下一步">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="mask" style="display: none"></div>

</section>
<!--中部结束-->
</body>
<script src="${cxt}/VivoProject/js/jquery-1.10.1.min.js"></script>
<script>
    $(function () {

        $("#phone").blur(function () {
            $("#email").show();
        });

        $("#register").click(function () {
            if ($("#code").val().length > 4) {
                $("#form_register").submit();
            }
        });
        var pwd = "2312";
        $("#code").blur(function () {
            if (pwd === $("#code").val()) {
                $("#pwd").show();
            } else {
                $("#pwd").hide();
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
                $(".getCode").text("重新获取验证码(" + date + ")");
                if (date <= 0) {
                    clearInterval(timer);
                    $(".getCode").text("重新获取验证码");
                    date = 10;
                }
                date--;
            }, 1000);
            if ($(".getCode").text() === "重新获取验证码" || $(".getCode").text() === "获取验证码") {
                $.ajax({
                    type: "post",
                    url: "${pageContext.request.contextPath}/registerServlet?action=getCode",
                    data: "email=" + $("#email").val(),
                    success: function (msg) {
                        console.log("验证码:" + msg);
                        pwd=msg;
                    },
                    error: function (xhr) {

                    }
                });
            }

        });
    });
</script>
</html>
