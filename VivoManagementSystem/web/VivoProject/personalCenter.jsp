<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/7
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>vivo账号中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/personalCenter.css">
    <script src="${pageContext.request.contextPath}/VivoProject/js/jquery-1.10.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/VivoProject/js/personalCenter.js"></script>
</head>
<body>
<div data-v-9621511e="">
    <div class="personal-center w860">
        <div class="vivo-logo-box">
            <a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/VivoProject/images/logo.1f42884.png" alt=""></a>
        </div>
        <div class="title">
            帐号中心
        </div>
        <div class="info">
            <div class="logout">
                <font>退出帐号</font>
            </div>
            <div class="name" style="">
                <span>
                    ${sessionScope.vivo_user.v_user}
                </span>
            </div>
            <div class="avatar">
                <img src="${pageContext.request.contextPath}/VivoProject/images/smallv.dbdeaea.png" alt="">
            </div>
        </div>
        <div data-v-9621511e="" class="gap"></div>
        <div data-v-9621511e="">
            <div data-v-9621511e="" class="small-title">安全设置</div>
            <div data-v-9621511e="" class="section">
                <div data-v-9621511e="" class="part">
                    <div data-v-9621511e="" class="icon">
                        <img data-v-9621511e="" src="${pageContext.request.contextPath}/VivoProject/images/verifypwd.3bbe151.png" alt="">
                    </div>
                    <div data-v-9621511e="" class="name detail">
                        <div data-v-9621511e="" class="phone">
                            <span data-v-9621511e="" class="is-bind-name">帐号密码</span>
                        </div>
                        <div data-v-9621511e="" class="num">
                            <span data-v-9621511e="">用于保护帐号信息和登录安全</span>
                        </div>
                    </div>
                    <div data-v-9621511e="" class="operate" id="div1">
                        <span data-v-9621511e="">修改</span>
                    </div>
                </div>
                <div data-v-9621511e="" class="left-line"></div>
            </div>
            <div data-v-9621511e="" class="section">
                <div data-v-9621511e="" class="part">
                    <div data-v-9621511e="" class="icon">
                        <img data-v-9621511e="" src="${pageContext.request.contextPath}/VivoProject/images/safephone.a88e813.png" alt="">
                    </div>
                    <div data-v-9621511e="" class="name detail">
                        <div data-v-9621511e="" class="phone">
                            <span data-v-9621511e="" class="is-bind-name">安全手机</span>
                            <span data-v-9621511e="" class="is-bind is-bind-yes">185****9625</span>
                        </div>
                        <div data-v-9621511e="" class="num">
                            <span data-v-9621511e="">安全手机可用于登录vivo帐号，找回密码或其它安全验证</span>
                        </div>
                    </div>
                    <div data-v-9621511e="" class="operate">
                        <span data-v-9621511e="">修改</span>
                    </div>
                </div>
                <div data-v-9621511e="" class="left-line"></div>
            </div>
            <div data-v-9621511e="" class="section">
                <div data-v-9621511e="" class="part">
                    <div data-v-9621511e="" class="icon">
                        <img data-v-9621511e=""
                             src="${pageContext.request.contextPath}/VivoProject/images/safeemail.3242ab6.png.webp"
                             alt="">
                    </div>
                    <div data-v-9621511e="" class="name detail">
                        <div data-v-9621511e="" class="phone">
                            <span data-v-9621511e="" class="is-bind-name">安全邮箱</span>
                            <span data-v-9621511e="" class="is-bind">未绑定</span>
                        </div>
                        <div data-v-9621511e="" class="num">
                            <span data-v-9621511e="">安全邮箱可用于登录vivo帐号，找回密码或其他安全验证。建议立即绑定</span>
                        </div>
                    </div>
                    <div data-v-9621511e="" class="operate">
                        <span data-v-9621511e="" class="bind">绑定</span>
                    </div>
                </div>
                <div data-v-9621511e="" class="left-line"></div>
            </div>
            <div data-v-9621511e="" class="section">
                <div data-v-9621511e="" class="part">
                    <div data-v-9621511e="" class="icon">
                        <img data-v-9621511e=""
                             src="${pageContext.request.contextPath}/VivoProject/images/safequestions.b65fae6.png.webp"
                             alt="">
                    </div>
                    <div data-v-9621511e="" class="name detail">
                        <div data-v-9621511e="" class="phone">
                            <span data-v-9621511e="" class="is-bind-name">密保问题</span>
                            <span data-v-9621511e="" class="is-bind">未设置</span>
                        </div>
                        <div data-v-9621511e="" class="num">
                            <span data-v-9621511e="">密保问题可用于找回密码或其它安全验证 建议立即设置</span>
                        </div>
                    </div>
                    <div data-v-9621511e="" class="operate">
                        <span data-v-9621511e="" class="bind">设置</span>
                    </div>
                </div>
                <div data-v-9621511e="" class="left-line left-line-last"></div>
            </div>
            <div data-v-9621511e="" class="auth-bind">
                <div data-v-9621511e="" class="small-title">授权登录</div>
                <div data-v-9621511e="" class="auth-part">
                    <div data-v-9621511e="">
                        <div data-v-9621511e="" class="part">
                            <div data-v-9621511e="" class="icon">
                                <img data-v-9621511e=""
                                     src="${pageContext.request.contextPath}/VivoProject/images/wx.33dae8e.png" alt="">
                            </div>
                            <div data-v-9621511e="" class="content-box">
                                <div data-v-9621511e="" class="top-detail">
                                    <span data-v-9621511e="" class="name">微信 </span>
                                    <span data-v-9621511e="" class="nickname"></span>
                                </div>
                                <div data-v-9621511e="" class="bottom-operate">
                                    <span data-v-9621511e="" class="unbund">绑定</span>
                                    <img data-v-9621511e=""
                                         src="data:images/login_ico.png;base64,iVBORw0KGgoAAAANSUhEUgAAAAcAAAANCAYAAAESzkQjAAABYWlDQ1BrQ0dDb2xvclNwYWNlRGlzcGxheVAzAAAokWNgYFJJLCjIYWFgYMjNKykKcndSiIiMUmB/yMAOhLwMYgwKicnFBY4BAT5AJQwwGhV8u8bACKIv64LMOiU1tUm1XsDXYqbw1YuvRJsw1aMArpTU4mQg/QeIU5MLikoYGBhTgGzl8pICELsDyBYpAjoKyJ4DYqdD2BtA7CQI+whYTUiQM5B9A8hWSM5IBJrB+API1klCEk9HYkPtBQFul8zigpzESoUAYwKuJQOUpFaUgGjn/ILKosz0jBIFR2AopSp45iXr6SgYGRiaMzCAwhyi+nMgOCwZxc4gxJrvMzDY7v////9uhJjXfgaGjUCdXDsRYhoWDAyC3AwMJ3YWJBYlgoWYgZgpLY2B4dNyBgbeSAYG4QtAPdHFacZGYHlGHicGBtZ7//9/VmNgYJ/MwPB3wv//vxf9//93MVDzHQaGA3kAFSFl7jXH0fsAAADLSURBVBgZXVDLDoIwEJyWcOTMl+BNv1gOXCEiSEiI/gkJCUgCFcTVXVN8NNlHd2dntkXXXQnL8ng7fbmcofiapgeo+30hpdS7gtfR8zxzhDbGSCJgyYy5UZIkxNNsa6dpGtR1DbRtR1VVfRDTNJPjODKus+wISy8bxXFMTLoSheEe0omiSEhgkx89plNlWdIwDNhud3BdVySsE0KWOp1y8Pu+Qasao/9B2lJw5C8YxxGe54mETPZ9jzzP4Ps+gmCz4lVRFMSLfBdt9wn8KrCsJd1xIAAAAABJRU5ErkJggg=="
                                         alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div data-v-9621511e=""></div>
                    <div data-v-9621511e="">
                        <div data-v-9621511e="" class="part">
                            <div data-v-9621511e="" class="icon">
                                <img data-v-9621511e=""
                                     src="${pageContext.request.contextPath}/VivoProject/images/pay.1748eba.png" alt="">
                            </div>
                            <div data-v-9621511e="" class="content-box">
                                <div data-v-9621511e="" class="top-detail">
                                    <span data-v-9621511e="" class="name">支付宝 </span>
                                </div>
                                <div data-v-9621511e="" class="bottom-operate">
                                    <span data-v-9621511e="" class="unbund bind">绑定</span>
                                    <img data-v-9621511e=""
                                         src="data:images/login_ico.png;base64,iVBORw0KGgoAAAANSUhEUgAAAAcAAAANCAYAAAESzkQjAAABYWlDQ1BrQ0dDb2xvclNwYWNlRGlzcGxheVAzAAAokWNgYFJJLCjIYWFgYMjNKykKcndSiIiMUmB/yMAOhLwMYgwKicnFBY4BAT5AJQwwGhV8u8bACKIv64LMOiU1tUm1XsDXYqbw1YuvRJsw1aMArpTU4mQg/QeIU5MLikoYGBhTgGzl8pICELsDyBYpAjoKyJ4DYqdD2BtA7CQI+whYTUiQM5B9A8hWSM5IBJrB+API1klCEk9HYkPtBQFul8zigpzESoUAYwKuJQOUpFaUgGjn/ILKosz0jBIFR2AopSp45iXr6SgYGRiaMzCAwhyi+nMgOCwZxc4gxJrvMzDY7v////9uhJjXfgaGjUCdXDsRYhoWDAyC3AwMJ3YWJBYlgoWYgZgpLY2B4dNyBgbeSAYG4QtAPdHFacZGYHlGHicGBtZ7//9/VmNgYJ/MwPB3wv//vxf9//93MVDzHQaGA3kAFSFl7jXH0fsAAADdSURBVBgZXVC7CgJBDJw7wWdt5wf5Axb+gYggiBYiNjYKIlgIgoWF4PfYWVgdCIJanG/FR2Kyd56ngd1MNrPZmcVyTYzXy9/s7hSwtCz3BdwfxBHbP4GEfbpqEuAePGDIBu5PxKUesd7WFXTmDjBbCMdZEXcmIcb5ShyPeoPs2gC43LzCKCp2iY/n0KBsxYLp5BrEz6do/oCf93SE1RoTb1ygXQCScX+qn4wydVIfihPxFyYFspX8TxLuN/QLtjsgkwYSMTlXFepRValPlRj8RnNEnEoA1byoEx/heAMeoa3Io2gs6AAAAABJRU5ErkJggg=="
                                         alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div data-v-9621511e="">
                        <div data-v-9621511e="" class="part">
                            <div data-v-9621511e="" class="icon">
                                <img data-v-9621511e=""
                                     src="${pageContext.request.contextPath}/VivoProject/images/wb.145fc56.png" alt="">
                            </div>
                            <div data-v-9621511e="" class="content-box">
                                <div data-v-9621511e="" class="top-detail">
                                    <span data-v-9621511e="" class="name">微博 </span>
                                </div>
                                <div data-v-9621511e="" class="bottom-operate">
                                    <span data-v-9621511e="" class="unbund bind">绑定</span>
                                    <img data-v-9621511e=""
                                         src="data:images/login_ico.png;base64,iVBORw0KGgoAAAANSUhEUgAAAAcAAAANCAYAAAESzkQjAAABYWlDQ1BrQ0dDb2xvclNwYWNlRGlzcGxheVAzAAAokWNgYFJJLCjIYWFgYMjNKykKcndSiIiMUmB/yMAOhLwMYgwKicnFBY4BAT5AJQwwGhV8u8bACKIv64LMOiU1tUm1XsDXYqbw1YuvRJsw1aMArpTU4mQg/QeIU5MLikoYGBhTgGzl8pICELsDyBYpAjoKyJ4DYqdD2BtA7CQI+whYTUiQM5B9A8hWSM5IBJrB+API1klCEk9HYkPtBQFul8zigpzESoUAYwKuJQOUpFaUgGjn/ILKosz0jBIFR2AopSp45iXr6SgYGRiaMzCAwhyi+nMgOCwZxc4gxJrvMzDY7v////9uhJjXfgaGjUCdXDsRYhoWDAyC3AwMJ3YWJBYlgoWYgZgpLY2B4dNyBgbeSAYG4QtAPdHFacZGYHlGHicGBtZ7//9/VmNgYJ/MwPB3wv//vxf9//93MVDzHQaGA3kAFSFl7jXH0fsAAADdSURBVBgZXVC7CgJBDJw7wWdt5wf5Axb+gYggiBYiNjYKIlgIgoWF4PfYWVgdCIJanG/FR2Kyd56ngd1MNrPZmcVyTYzXy9/s7hSwtCz3BdwfxBHbP4GEfbpqEuAePGDIBu5PxKUesd7WFXTmDjBbCMdZEXcmIcb5ShyPeoPs2gC43LzCKCp2iY/n0KBsxYLp5BrEz6do/oCf93SE1RoTb1ygXQCScX+qn4wydVIfihPxFyYFspX8TxLuN/QLtjsgkwYSMTlXFepRValPlRj8RnNEnEoA1byoEx/heAMeoa3Io2gs6AAAAABJRU5ErkJggg=="
                                         alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div data-v-9621511e="">
                        <div data-v-9621511e="" class="part">
                            <div data-v-9621511e="" class="icon">
                                <img data-v-9621511e=""
                                     src="${pageContext.request.contextPath}/VivoProject/images/rr.b4e9535.png" alt="">
                            </div>
                            <div data-v-9621511e="" class="content-box">
                                <div data-v-9621511e="" class="top-detail">
                                    <span data-v-9621511e="" class="name">人人 </span>
                                </div>
                                <div data-v-9621511e="" class="bottom-operate">
                                    <span data-v-9621511e="" class="unbund bind">绑定</span>
                                    <img data-v-9621511e=""
                                         src="data:images/login_ico.png;base64,iVBORw0KGgoAAAANSUhEUgAAAAcAAAANCAYAAAESzkQjAAABYWlDQ1BrQ0dDb2xvclNwYWNlRGlzcGxheVAzAAAokWNgYFJJLCjIYWFgYMjNKykKcndSiIiMUmB/yMAOhLwMYgwKicnFBY4BAT5AJQwwGhV8u8bACKIv64LMOiU1tUm1XsDXYqbw1YuvRJsw1aMArpTU4mQg/QeIU5MLikoYGBhTgGzl8pICELsDyBYpAjoKyJ4DYqdD2BtA7CQI+whYTUiQM5B9A8hWSM5IBJrB+API1klCEk9HYkPtBQFul8zigpzESoUAYwKuJQOUpFaUgGjn/ILKosz0jBIFR2AopSp45iXr6SgYGRiaMzCAwhyi+nMgOCwZxc4gxJrvMzDY7v////9uhJjXfgaGjUCdXDsRYhoWDAyC3AwMJ3YWJBYlgoWYgZgpLY2B4dNyBgbeSAYG4QtAPdHFacZGYHlGHicGBtZ7//9/VmNgYJ/MwPB3wv//vxf9//93MVDzHQaGA3kAFSFl7jXH0fsAAADdSURBVBgZXVC7CgJBDJw7wWdt5wf5Axb+gYggiBYiNjYKIlgIgoWF4PfYWVgdCIJanG/FR2Kyd56ngd1MNrPZmcVyTYzXy9/s7hSwtCz3BdwfxBHbP4GEfbpqEuAePGDIBu5PxKUesd7WFXTmDjBbCMdZEXcmIcb5ShyPeoPs2gC43LzCKCp2iY/n0KBsxYLp5BrEz6do/oCf93SE1RoTb1ygXQCScX+qn4wydVIfihPxFyYFspX8TxLuN/QLtjsgkwYSMTlXFepRValPlRj8RnNEnEoA1byoEx/heAMeoa3Io2gs6AAAAABJRU5ErkJggg=="
                                         alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div data-v-0fda34ec="" data-v-9621511e="" class="foot">
        <div data-v-0fda34ec="" class="service">
            <a data-v-0fda34ec="" href="javascript:;" target="_blank" class="to-service">
                <img data-v-0fda34ec=""
                     src="data:images/login_ico.png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAAPCAYAAAGega+EAAABYWlDQ1BrQ0dDb2xvclNwYWNlRGlzcGxheVAzAAAokWNgYFJJLCjIYWFgYMjNKykKcndSiIiMUmB/yMAOhLwMYgwKicnFBY4BAT5AJQwwGhV8u8bACKIv64LMOiU1tUm1XsDXYqbw1YuvRJsw1aMArpTU4mQg/QeIU5MLikoYGBhTgGzl8pICELsDyBYpAjoKyJ4DYqdD2BtA7CQI+whYTUiQM5B9A8hWSM5IBJrB+API1klCEk9HYkPtBQFul8zigpzESoUAYwKuJQOUpFaUgGjn/ILKosz0jBIFR2AopSp45iXr6SgYGRiaMzCAwhyi+nMgOCwZxc4gxJrvMzDY7v////9uhJjXfgaGjUCdXDsRYhoWDAyC3AwMJ3YWJBYlgoWYgZgpLY2B4dNyBgbeSAYG4QtAPdHFacZGYHlGHicGBtZ7//9/VmNgYJ/MwPB3wv//vxf9//93MVDzHQaGA3kAFSFl7jXH0fsAAAHJSURBVDgRnZO9S8NQFMWTNB3sIoggdnFQcXISxEEnxT+gg4OIUIS2CUjp4McgmMGtQwfpJ7iJooPoUPwDxEWooK4uLhkFl4BoG3/30WjU+vmgPe/dc+55994kmsZKpVK+oJZOp+ttTOpEr3RdH1aM+iNy/XbSNMuyZnQJQFhIJ3zfn6jVaiO64zim67pPQhqGsSb4/VI+3F9GdoLPlZhGCSx/lQd3+Vo64kcRfkSclLMQ552ciA/ilO/Eadlstg/yOCCVVSaTWcXW4dcVEOB1PB4fo+9nmeJliHi3hVvmyihDMVbfMaFDtVrd5tjQguo/dhU6+3JdMpT8aQtfF1FeWv3EEiCuRqO649BPbIXHKd0lqEVGsAFudUpWMQQHtG4EAuVk2/ZQs9k8pIk73EqxWKxRKBTuA1EYc7lcj+d5Y2httAORSGSuVCrdyku4TmCc6xPhhN/uqewI0wuThE1mHg8SIRZkj/Gu4E9ncpfoxpUevVar1StJ/1ntXE9am6S1Pcob5aN5+IsZud3k3pA7r4bNRufFtEAH4gxsgK/DNk3ztFgs3skltGoD02im0DiVSqUMtj+UH8qQqpHsM48dWlnEeFaeVDjtBaRT1nHakjV9AAAAAElFTkSuQmCC"
                     alt=""> <!----> <span data-v-0fda34ec="" class="online-person"> 在线客服</span></a>
            <a data-v-0fda34ec="" class="to-service">
                <img data-v-0fda34ec=""
                     src="data:images/login_ico.png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAQCAYAAAFVZq6RAAABYWlDQ1BrQ0dDb2xvclNwYWNlRGlzcGxheVAzAAAokWNgYFJJLCjIYWFgYMjNKykKcndSiIiMUmB/yMAOhLwMYgwKicnFBY4BAT5AJQwwGhV8u8bACKIv64LMOiU1tUm1XsDXYqbw1YuvRJsw1aMArpTU4mQg/QeIU5MLikoYGBhTgGzl8pICELsDyBYpAjoKyJ4DYqdD2BtA7CQI+whYTUiQM5B9A8hWSM5IBJrB+API1klCEk9HYkPtBQFul8zigpzESoUAYwKuJQOUpFaUgGjn/ILKosz0jBIFR2AopSp45iXr6SgYGRiaMzCAwhyi+nMgOCwZxc4gxJrvMzDY7v////9uhJjXfgaGjUCdXDsRYhoWDAyC3AwMJ3YWJBYlgoWYgZgpLY2B4dNyBgbeSAYG4QtAPdHFacZGYHlGHicGBtZ7//9/VmNgYJ/MwPB3wv//vxf9//93MVDzHQaGA3kAFSFl7jXH0fsAAAGwSURBVCgVdZI/SEJRFMZ97/mHHgQ2RCEFDgVBDRFCDQ1RS0vQ0NjQpGJJblEEORZBCo9KRZBwCF2aWiNwDKOtMZDwDTaIgYb4p999cEXJLtz3nXu+7zvn3Me12YavQCBwqvE59vl8s8Vi8c2S+f3+ihXAhAaMMLpkdiSjiADGoSjKhy0UCi3m83mNRFcqBNpbrZa3UCh8ORwObz8h7U+qql5R4rvdbj97PB7NIqSSUR6J291ud8vKkTiUpESVZMnpdGZoviyTAlXqZg3DqIHJfsJOvXkxajKZHOinohplZ/vVIlZwKMFg0AD3Od+x51Kp1IroIW58o2maj8Qed1hDuNCry8GL6xVRBnHOIhg5TWIVYgLEmDoChy5xv10YF9OKnmP8sgbTG0PVJO20cVO5JgS0j3Y6nTNMS/8ZlEgk4q7X6yUE0+wqlxiJRqM//xnUeDxepeI2nV4QzZTL5RJjbkhDOBwel7HA3t/goUzyJkzMm4wofvYJ+EDHC9M03zmnE4nEec8g3GJxj3WE94SXuq5fx2KxhsjT9RYw/xgEKRfjTDWbzQMKVFwuV45H8fkLmKerdC5pa5YAAAAASUVORK5CYII="
                     alt="" class="phone">
                <span data-v-0fda34ec="" class="hot-line"> 400-678-9688(24小时全国服务热线)</span>
            </a>
        </div>
        <div data-v-0fda34ec="" class="copyright">COPYRIGHT ©2011-2019 广东步步高电子工业有限公司 版权所有 保留一切权利 | 隐私政策 | 法律声明 |
            粤B2-20080267 | 粤ICP备05100288号
        </div>
    </div>
</div>
<form action="${pageContext.request.contextPath}/registerServlet?action=editorPassword" method="post" id="from_a">
    <div data-v-1220a120="" data-v-9621511e="" class="personal-pop" style="">
        <div data-v-1220a120="" class="bind-old-account w490">
            <div data-v-1220a120="" class="cancel">
                <img data-v-1220a120=""
                     src="data:images/close.png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAABGdBTUEAALGPC/xhBQAAARZJREFUOBGl1T0OgjAUB3DbwOiim4On8ADGqwDBCzh5BDfjYFIYGJy8hKMncXQm4Uv+SAkf7StiE6B9bX8pvAIsiqJlkiSF67rv2R8lDMNVlmUbHsfxrqw8EZjqYW6apo+iKNbc9/0751wgMAWVGIzSujC5KiHEIc9zz7KsreM4Lxmnrm3M87wTxjYgGr+gKmwAjkV1mBI0oRSmBXWoCSPBPoo2dgKyKROAWL90ktLvRLtO1B71ErtSWDUGJ6qUyI0xNseBOjUWfeQK288Mg8fsUy3YxuRtjtmnSlCFYYUoJnQAUtiXpNEOOAYzoQ34C0ahFTgF06EsCIIFPrCmN0ACqms7Udy2bazyKLeGaoIpVs894xfwATlbFjb45OjiAAAAAElFTkSuQmCC"
                     alt="">
            </div>
            <div data-v-1220a120="" class="personal-center-pc-title title">
                修改密码
            </div>
            <%--  <div data-v-1220a120="" class="box">
                  <div data-v-1220a120="" class="user-tip">
                      原密码
                  </div>
                  <div data-v-1220a120="" class="ipt-box pwd-box">
                      <input data-v-1220a120="" autocomplete="new-password" type="password" maxlength="16"
                             placeholder="请输入旧密码" name="fakeremembered" class="ipt-pwd">
                      <div data-v-1220a120="" class="eye-box">
                          <img data-v-1220a120=""
                               src="${pageContext.request.contextPath}/VivoProject/images/eyes-off.7c50935.png.webp"
                               class="img1" alt="">
                      </div>
                  </div>
                  <div data-v-e8bc1554="" data-v-1220a120="" class="errTip-Box" style="display: none;">
                      <div data-v-e8bc1554="" class="errTip"></div>
                  </div>
              </div>--%>
            <div data-v-1220a120="" class="box">
                <div data-v-1220a120="" class="user-tip">
                    新密码
                </div>
                <div data-v-1220a120="" class="ipt-box pwd-box">
                    <input data-v-1220a120="" type="password" name="fakeremembered" style="display: none;">
                    <input data-v-1220a120="" autocomplete="new-password" type="password" maxlength="16"
                           placeholder="请输入新密码" class="ipt-pwd">
                    <div data-v-1220a120="" class="eye-box">
                        <img data-v-1220a120=""
                             src="${pageContext.request.contextPath}/VivoProject/images/eyes-off.7c50935.png.webp"
                             class="img1" alt="">
                    </div>
                </div>

                <div data-v-1220a120="" class="ipt-box ipt-boxT pwd-box">
                    <input data-v-1220a120="" type="password" name="fakeremembered" style="display: none;">
                    <input data-v-1220a120="" autocomplete="new-password" type="password" maxlength="16"
                           placeholder="请再次确认密码" name="v_password" class="ipt-pwd ipt-pwd-last">
                </div>
                <div data-v-e8bc1554="" data-v-1220a120="" class="errTip-Box" style="display: none;">
                    <div data-v-e8bc1554="" class="errTip"></div>
                </div>
            </div>
            <input type="text" name="v_uid" value="${sessionScope.vivo_user.v_uid}" style="display:none;">
            <div data-v-1220a120="" class="btn os-pc-btn">
                完成
            </div>
        </div>
    </div>
</form>
</body>
</html>
<script>
    $(function () {
        $(".btn").click(function () {
            if( $(".ipt-pwd").val()===$(".ipt-pwd-last").val()){
                $("#from_a").submit();
            }else{
                alert("两次输入的密码不一致");
            }
        });
    });
</script>
