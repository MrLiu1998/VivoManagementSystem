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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/VivoProject/css/font_918068_xgekrb9yo88/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/productDeails-content.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/shoppingcart.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/personal.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/personalMyinformation.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/VivoProject/css/zcity.css">
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
                <dd class="menu-item on"><a
                        href="${pageContext.request.contextPath}/registerServlet?action=getUserInfo&v_uid=${sessionScope.vivo_user.v_uid}">个人资料</a></dd>
                <dd class="menu-item"><a  href="${pageContext.request.contextPath}/settlementServlet?action=MyOrderTakeInformationTake&v_uid=${sessionScope.vivo_user.v_uid}">收货地址</a>
                </dd>
                <dd class="menu-item"><a href="#">我的礼包广场</a></dd>
                <dd class="menu-item"><a href="#">我的换新鼓励金</a></dd>
                <dd class="menu-item"><a href="#">我的优惠券</a></dd>
                <dd class="menu-item"><a href="#">我的收藏</a></dd>
            </dl>
        </aside>
        <article class="vcontent">
            <dl>
                <dt class="module-title">个人资料</dt>
                <dd class="module-item">
                    <input type="hidden" value="" class="province">
                    <input type="hidden" value="" class="city">
                    <input type="hidden" value="" class="area">
                    <form class="information-form" method="post" action="${pageContext.request.contextPath}/registerServlet?action=editorUserInfo&v_uid=${sessionScope.vivo_user.v_uid}">
                        <table class="form-table ">
                            <colgroup>
                                <col style="width: 150px;">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th>当前头像：</th>
                                <td>
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/111347us9sszkewzz5xso2.png"
                                         style="width: 200px;">
                                </td>
                            </tr>
                            <tr>
                                <th><span class="red">*</span>性别：</th>
                                <td class="sex-box">
                                    <div class="err-box">
                                        <label><input type="radio" name="v_sex"   value="男">男</label>
                                        <label><input type="radio" name="v_sex"   value="女">女</label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th><span class="red">*</span>生日：</th>
                                <td>
                                    <div class="err-box">
                                        <select id="dayType" class="hidden" name="typeCheck">
                                            <option value="-1">请选择</option>
                                            <option value="0">公历</option>
                                            <option value="1">农历</option>
                                        </select>
                                        <select id="year" name="year">
                                            <option value="1900">1900年</option>
                                            <option value="1901">1901年</option>
                                            <option value="1902">1902年</option>
                                            <option value="1903">1903年</option>
                                            <option value="1904">1904年</option>
                                            <option value="1905">1905年</option>
                                            <option value="1906">1906年</option>
                                            <option value="1907">1907年</option>
                                            <option value="1908">1908年</option>
                                            <option value="1909">1909年</option>
                                            <option value="1910">1910年</option>
                                            <option value="1911">1911年</option>
                                            <option value="1912">1912年</option>
                                            <option value="1913">1913年</option>
                                            <option value="1914">1914年</option>
                                            <option value="1915">1915年</option>
                                            <option value="1916">1916年</option>
                                            <option value="1917">1917年</option>
                                            <option value="1918">1918年</option>
                                            <option value="1919">1919年</option>
                                            <option value="1920">1920年</option>
                                            <option value="1921">1921年</option>
                                            <option value="1922">1922年</option>
                                            <option value="1923">1923年</option>
                                            <option value="1924">1924年</option>
                                            <option value="1925">1925年</option>
                                            <option value="1926">1926年</option>
                                            <option value="1927">1927年</option>
                                            <option value="1928">1928年</option>
                                            <option value="1929">1929年</option>
                                            <option value="1930">1930年</option>
                                            <option value="1931">1931年</option>
                                            <option value="1932">1932年</option>
                                            <option value="1933">1933年</option>
                                            <option value="1934">1934年</option>
                                            <option value="1935">1935年</option>
                                            <option value="1936">1936年</option>
                                            <option value="1937">1937年</option>
                                            <option value="1938">1938年</option>
                                            <option value="1939">1939年</option>
                                            <option value="1940">1940年</option>
                                            <option value="1941">1941年</option>
                                            <option value="1942">1942年</option>
                                            <option value="1943">1943年</option>
                                            <option value="1944">1944年</option>
                                            <option value="1945">1945年</option>
                                            <option value="1946">1946年</option>
                                            <option value="1947">1947年</option>
                                            <option value="1948">1948年</option>
                                            <option value="1949">1949年</option>
                                            <option value="1950">1950年</option>
                                            <option value="1951">1951年</option>
                                            <option value="1952">1952年</option>
                                            <option value="1953">1953年</option>
                                            <option value="1954">1954年</option>
                                            <option value="1955">1955年</option>
                                            <option value="1956">1956年</option>
                                            <option value="1957">1957年</option>
                                            <option value="1958">1958年</option>
                                            <option value="1959">1959年</option>
                                            <option value="1960">1960年</option>
                                            <option value="1961">1961年</option>
                                            <option value="1962">1962年</option>
                                            <option value="1963">1963年</option>
                                            <option value="1964">1964年</option>
                                            <option value="1965">1965年</option>
                                            <option value="1966">1966年</option>
                                            <option value="1967">1967年</option>
                                            <option value="1968">1968年</option>
                                            <option value="1969">1969年</option>
                                            <option value="1970">1970年</option>
                                            <option value="1971">1971年</option>
                                            <option value="1972">1972年</option>
                                            <option value="1973">1973年</option>
                                            <option value="1974">1974年</option>
                                            <option value="1975">1975年</option>
                                            <option value="1976">1976年</option>
                                            <option value="1977">1977年</option>
                                            <option value="1978">1978年</option>
                                            <option value="1979">1979年</option>
                                            <option value="1980">1980年</option>
                                            <option value="1981">1981年</option>
                                            <option value="1982">1982年</option>
                                            <option value="1983">1983年</option>
                                            <option value="1984">1984年</option>
                                            <option value="1985">1985年</option>
                                            <option value="1986">1986年</option>
                                            <option value="1987">1987年</option>
                                            <option value="1988">1988年</option>
                                            <option value="1989">1989年</option>
                                            <option value="1990">1990年</option>
                                            <option value="1991">1991年</option>
                                            <option value="1992">1992年</option>
                                            <option value="1993">1993年</option>
                                            <option value="1994">1994年</option>
                                            <option value="1995">1995年</option>
                                            <option value="1996">1996年</option>
                                            <option value="1997">1997年</option>
                                            <option value="1998">1998年</option>
                                            <option value="1999">1999年</option>
                                            <option value="2000">2000年</option>
                                            <option value="2001">2001年</option>
                                            <option value="2002">2002年</option>
                                            <option value="2003">2003年</option>
                                            <option value="2004">2004年</option>
                                            <option value="2005">2005年</option>
                                            <option value="2006">2006年</option>
                                            <option value="2007">2007年</option>
                                            <option value="2008">2008年</option>
                                            <option value="2009">2009年</option>
                                            <option value="2010">2010年</option>
                                            <option value="2011">2011年</option>
                                            <option value="2012">2012年</option>
                                            <option value="2013">2013年</option>
                                            <option value="2014">2014年</option>
                                            <option value="2015">2015年</option>
                                            <option value="2016">2016年</option>
                                            <option value="2017">2017年</option>
                                            <option value="2018">2018年</option>
                                            <option value="2019">2019年</option>
                                        </select>
                                        <select id="month" name="month">
                                            <option value="1">1月</option>
                                            <option value="2">2月</option>
                                            <option value="3">3月</option>
                                            <option value="4">4月</option>
                                            <option value="5">5月</option>
                                            <option value="6">6月</option>
                                            <option value="7">7月</option>
                                            <option value="8">8月</option>
                                            <option value="9">9月</option>
                                            <option value="10">10月</option>
                                            <option value="11">11月</option>
                                            <option value="12">12月</option>
                                        </select>
                                        <select id="day" name="day">
                                            <option value="1">1日</option>
                                            <option value="2">2日</option>
                                            <option value="3">3日</option>
                                            <option value="4">4日</option>
                                            <option value="5">5日</option>
                                            <option value="6">6日</option>
                                            <option value="7">7日</option>
                                            <option value="8">8日</option>
                                            <option value="9">9日</option>
                                            <option value="10">10日</option>
                                            <option value="11">11日</option>
                                            <option value="12">12日</option>
                                            <option value="13">13日</option>
                                            <option value="14">14日</option>
                                            <option value="15">15日</option>
                                            <option value="16">16日</option>
                                            <option value="17">17日</option>
                                            <option value="18">18日</option>
                                            <option value="19">19日</option>
                                            <option value="20">20日</option>
                                            <option value="21">21日</option>
                                            <option value="22">22日</option>
                                            <option value="23">23日</option>
                                            <option value="24">24日</option>
                                            <option value="25">25日</option>
                                            <option value="26">26日</option>
                                            <option value="27">27日</option>
                                            <option value="28">28日</option>
                                            <option value="29">29日</option>
                                            <option value="30">30日</option>
                                            <option value="31">31日</option>
                                        </select>
                                        <input type="hidden" name="v_birthday" value="" id="birthday">
                                        <script>
                                            $(function () {
                                                let birthday = 0;
                                                let year;
                                                let month;
                                                let day;
                                                $("#year").blur(function () {
                                                    year = $(this).val();
                                                    birthday= year+"年"+month+"月"+day+"日";
                                                    $("#birthday").val(birthday);
                                                });
                                                $("#month").blur(function () {
                                                    month = $(this).val();
                                                    birthday= year+"年"+month+"月"+day+"日";
                                                    $("#birthday").val(birthday);
                                                });
                                                $("#day").blur(function () {
                                                    day = $(this).val();
                                                    birthday= year+"年"+month+"月"+day+"日";
                                                    $("#birthday").val(birthday);
                                                });

                                            });
                                        </script>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <th><span class="red">*</span>居住地：</th>
                                <td id="j_ReginContriner td-06">
                                    <div class="err-box">
                                        <!--zcityGroup start-->
                                        <input type="text" placeholder="请编辑您的居住信息" value="${userInfo.v_address}" name="v_address" class=""
                                               style="width: 400px;height: 30px;border: 1px solid silver;border-radius: 4px;">
                                        <%--  <div class="zcityGroup" name="zcityGroup"
                                               city-range="{'level_start':1,'level_end':3}" city-ini="广东,深圳市,龙华新区"></div>--%>
                                        <!--zcityGroup end-->
                                        <%--<input type="text" value="" name="aa" class='cs'>
                                        <input type="text" value="" name="aa" class='s'>
                                        <input type="text" value="" name="aa" class='q'>--%>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <button class="btn-blue submit btn-submit" type="submit" name="submit">保存</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                </dd>
            </dl>

        </article>

    </div>
</div>
<!-- 内容结束 -->

<!-- 底部开始 -->
<%@include file="vivo-footer.jsp" %>
<!-- 底部结束 -->


<script src="${pageContext.request.contextPath}/VivoProject/js/hiddenScllTop.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/scroll.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/VivoProject/js/zcity.js"></script>
<script type="text/javascript">
    zcityrun('.zcityGroup');
</script>
<script>
    $(function () {
        $("select[name=province]").click(function () {


            if ($("select[name=province]").val() == "_NULL_") {
                $("#city-error").css("display", "block");
                $("#city-error").text("请选择省！");
                $("select[name=province]").css("border-color", "red");
            } else {
                $("select[name=province]").css("border-color", "#000");
                $("#city-error").css("display", "none");
                // 解开第二层
                $("select[name=city]").show();

                $("select[name=city]").click(function () {
                    if ($("select[name=city]").val() == "_NULL_") {
                        $("#city-error").css("display", "block");
                        $("#city-error").text("请选择市区！");
                        $("select[name=city]").css("border-color", "red");
                    } else {
                        $("select[name=city]").css("border-color", "#000");
                        $("#city-error").css("display", "none");
                        // 解开第三层
                        $("select[name=area]").show();
                        $("select[name=area]").click(function () {
                            if ($("select[name=area]").val() == "_NULL_") {
                                $("#city-error").css("display", "block");
                                $("#city-error").text("请选择区！");
                                $("select[name=area]").css("border-color", "red");
                            } else {
                                $("select[name=area]").css("border-color", "#000");
                                $("#city-error").css("display", "none");

                            }
                        });
                    }
                });

            }

        });


        $(".btn-submit").click(function () {
            // 获取当前单击的省值 居住地址
            var province = $("select[name=province]").val();
            var city = $("select[name=city]").val();
            var area = $("select[name=area]").val();
            $("input[name=location]").val(province + " " + city + "  " + area);
        });

    });
</script>
</body>
</html>
