<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html dir="ltr" lang="en-US">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>ViVo商城后台管理系统</title>
    <link href="${pageContext.request.contextPath}/admin/images/user_icon.png" rel="shortcut icon">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/admin/css/style.css"
          type="text/css"/>
    <style>
        #login_form_bg {
            position: relative;
        }

        .err_span {
            position: absolute;
            color: red;
            display: inline-block;
            top: 15%;
            right: 30%;
        }
    </style>
    <style>


        input[type=button] {
            width: 70px;
            height: 30px;
            background: #5b9bd5;
            border: 1px solid #41719c;
            outline: none;
            color: #fff;
            margin-top: 30px;
            margin-left: 30px;
        }

        .right #form_admin_login {
            position: relative;
        }

        .errMessBox {
            position: absolute;
            right: 0px;
            top: 10px;
            width: 200px;
            height: 30px;
            background: #ffc028;
            line-height: 30px;
            opacity: 0;
            display: none;
        }

    </style>
</head>

<body>
<div id="container">
    <!-- 在 JSP 凡是 action src href 都要去写上绝对路径 -->
    <form action="${pageContext.request.contextPath }/adminServlet?action=adminLogin" method="post" id="login_form_bg">
        <div class="login">ViVo商城后台管理系统</div>
        <!-- 错误信息 -->
        <span class="err_span">${adminLoginErr }</span>

        <div class="username-text">用户名:</div>
        <div class="password-text">密码:</div>
        <div class="username-field">
            <input type="text" name="v_aname" value=""/>
        </div>
        <div class="password-field">
            <input type="password" name="v_apassword" value=""/>
        </div>
        <input type="checkbox" name="remember-me" checked id="remember-me"/><label
            for="remember-me">记住用户名</label>
        <div class="forgot-usr-pwd"></div>
        <input type="submit" name="submit" value="GO"/>
    </form>
</div>

</body>
</html>