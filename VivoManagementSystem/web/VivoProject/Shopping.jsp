<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>vivo智能手机官方商城-AI智慧旗舰NEX</title>
    <meta name="keywords" content='vivo智能手机官方商城'/>
    <meta name="description" content='vivo智能手机官方商城'/>
    <link rel="icon" href="images/favicon_7c51b3b.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/shangcheng.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/iconfont.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/list-content.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/banner-img.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/core-content.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/font/font/iconfont.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/VivoProject/css/font_909460_q5vpdq6r77q/iconfont.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/VivoProject/css/font_909460_qqf8ef5pfyf/iconfont.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/VivoProject/css/font_918068_xgekrb9yo88/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/vivo-footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/index-footer.css">
    <!--设置列表项的样式-->
    <style type="text/css">
        .box-a {
            width: 394px;
            height: 288px;
        }

        .box-b {
            width: 293px;
            height: 215px;
        }

        .img-item, .img-item2, .img-item3, .img-item4, .img-item5, .img-item6, .img-item7, .img-item8 {
            position: absolute !important;
            left: 20%;
            top: 0;
            transform: scale(1);
            transition: all .5s ease-in-out;
        }

        .selected {
            opacity: 1 !important;
            transition: all .5s ease-in-out;
        }
    </style>
    <style>
        .deldel {
            display: inline-block;
            margin-left: 6px;
            opacity: 0;
            transition: all .5s ease-in-out;
            cursor: pointer;
        }

        .Select-hidden {
            opacity: 1;
            visibility: inherit;
            transition: all .5s ease-in-out;
        }

        .v_h_search .search-top {
            position: relative;
            width: 100%;
            height: 100%;
        }

        .v_h_search {
            position: absolute;
            width: 69%;
            height: 44px;
            top: 0;
            left: 237px;
            z-index: 999;
            /* display: none; */
        }

        .search-top input {
            font-family: 'Microsoft YaHei', 'PingFang SC';
            width: 750px;
            height: 30px;
            margin-top: 7px;
            background: 0 0;
            padding-left: 43px;
            color: #fff;
            font-size: 14px;
        }

        input {
            outline: 0;
            border: 0;
        }

        .v_h_search .search-content {
            position: absolute;
            width: 90%;
            height: auto;
            min-height: 280px;
            background: #fff;
            top: 44px;
        }

        .search-content {
            font-family: 'Microsoft YaHei', 'PingFang SC';
        }

        .search-content dl {
            position: relative;
            width: 100%;
            height: auto;
            margin-bottom: 24px;
        }

        .search-content dl dt {
            width: auto;
            height: auto;
            padding-left: 43px;
            font-size: 12px;
            color: #888;
            padding-top: 28px;
            margin-bottom: 11px;
        }

        #vivo-head-wrap a, #vivo-contain a, #vivo-foot-path a, #vivo-foot-wrap a {
            text-decoration: none;
            cursor: pointer;
            outline: 0 none;
            -webkit-tap-highlight-color: transparent;
        }

        .search-content dl dd a {
            display: block;
            width: auto;
            height: 100%;
            line-height: 40px;
            padding-left: 67px;
            color: #333;
            -webkit-transition: all .4s ease;
            -moz-transition: all .4s ease;
            -o-transition: all .4s ease;
            transition: all .4s ease;
        }

        .search-content dl dd a:hover {
            color: #0000d8;
            background-color: #e5e5e5;
        }

        .icon-cha2:before {
            margin-left: 20px;
            color: white;
        }
        @media screen and (max-width:1088px) {
            #banner {
                width: 1200px;
            }
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/font/iconfont.css">
    <%-- 正品 --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/VivoProject/css/product-footer.css">

</head>
<body>
<!-- 头部开始 -->
<%@include file="vivo-top.jsp" %>
<!-- 头部结束 -->

<!--列表商品开始-->
<div id="vivo-contain" class="J_replace_content cl">
    <!--轮播图-->
    <div id="banner">
        <div class="img-wrap" id="img-wrap">
            <a href="javascript:;"
               style="background-image: url(${pageContext.request.contextPath}/VivoProject/images/20191031230423517533_original.png); "
               class="item"></a>
            <a href="javascript:;"
               style="background-image: url(${pageContext.request.contextPath}/VivoProject/images/20191031230715273806_original.jpg);"
               class="item"></a>
            <a href="javascript:;"
               style="background-image: url(${pageContext.request.contextPath}/VivoProject/images/2019102420221655999_original.jpg);"
               class="item"></a>
            <a href="javascript:;"
               style="background-image: url(${pageContext.request.contextPath}/VivoProject/images/20191014151413700163_original.png);"
               class="item"></a>
            <a href="javascript:;"
               style="background-image: url(${pageContext.request.contextPath}/VivoProject/images/20191017184458506751_original.jpg);"
               class="item"></a>
        </div>
        <div class="btn-list" id='btn-list'>
            <div class="btn active"></div>
            <div class="btn"></div>
            <div class="btn"></div>
            <div class="btn"></div>
            <div class="btn"></div>
        </div>
    </div>
    <!--二级导航栏-->
    <div class="wrapper">
        <ul class="category">
            <li class="list-wrap">
                <a class="category-name" href="javascript:;">手机<span class="arrow"></span></a>
                <div class="category-box">
                    <div class="category-detail">
                        <a href="javascript:;" class="category-all">
                            全部手机
                            <span class="arrow"></span>
                        </a>
                        <p>手机</p>
                        <ul class="category-sub has-border">
                            <li><a href="javascript:;"
                                   style="display: block; background-image: url(${pageContext.request.contextPath}/VivoProject/images/1530530826053hd_312x100.jpg);">NEX系列</a>
                            </li>
                            <li><a href="javascript:;"
                                   style="display: block; background-image: url(${pageContext.request.contextPath}/VivoProject/images/1537348549254hd_312x100.jpg);">X系列</a>
                            </li>
                            <li><a href="javascript:;"
                                   style="display: block; background-image: url(${pageContext.request.contextPath}/VivoProject/images/1541645495010hd_312x100.jpg);">Z系列</a>
                            </li>
                            <li><a href="javascript:;"
                                   style="display: block; background-image: url(${pageContext.request.contextPath}/VivoProject/images/1530530649218hd_312x100.png);">Y系列</a>
                            </li>
                        </ul>
                        <ul class="category-product">
                            <a href="javascript:;">
                                <img src="${pageContext.request.contextPath}/VivoProject/images/10712_1541856519481_250x250.png">
                                <span>X21s 全面屏 6GB+128GB</span>
                            </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10486_1540950868348_250x250.png">
                                    <span>X23全面屏 8GB+128GB</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10636_1539749092760_250x250.png"/>
                                    <span>Z3 全面屏 6GB+64GB</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10393_1535944376372_250x250.png"/>
                                    <span>Z1全面屏6GB+64GB</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10391_1537496639438_250x250.png"/>
                                    <span>NEX旗舰版8GB+128GB</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10637_1539680741413_250x250.png"/>
                                    <span>Z3 全面屏 6GB+128GB</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10616_1540209740574_250x250.png"/>
                                    <span>Y73 全面屏 3GB+32GB</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10701_1540984734442_250x250.png"/>
                                    <span>Z1青春版 全面屏 4G+32G</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10349_1535944412236_250x250.png"/>
                                    <span>Z1全面屏4GB+64GB</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10658_1540975205610_250x250.png"/>
                                    <span>Y93 全面屏 4GB+64GB</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10392_1541058388609_250x250.png"/>
                                    <span>NEX旗舰版8GB+256GB</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/00_1539864506117_250x250.png"/>
                                    <span>Y73 全面屏 4GB+64GB</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="list-wrap">
                <a class="category-name" href="javascript:;">充电<span class="arrow"></span></a>
                <div class="category-box">
                    <div class="category-detail">
                        <a class="category-all" href="JavaScript:;">全部充电&nbsp;<span class="arrow"></span></a>
                        <p>充电</p>
                        <ul class="category-product">
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10069_1534839319343_250x250.png"/>
                                    <span>原装闪充数据线</span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/249_1534842794682_250x250.png"/>
                                    <span>原装9V/2A双引擎闪充</span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10425_1534842381523_250x250.png"/>
                                    <span>原装Type-C数据线</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/9989_1534842693670_250x250.png"
                                         style="display: inline;"/>
                                    <span>原装低压闪充数据线</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10424_1534841769313_250x250.png"
                                         style="display: inline;">
                                    <span>原装10V/2.25A闪充充电器</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10334_1534839351307_250x250.png"
                                         style="display: inline;">
                                    <span>MGE 金属编织数据线</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10336_1534842312070_250x250.png"
                                         style="display: inline;">
                                    <span>MGE 牛仔布数据线</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/00_1539073259196_250x250.png"
                                         style="display: inline;">
                                    <span>公牛数显车载USB充电器 GNV-CD1180</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/9988_1534842258247_250x250.png"
                                         style="display: inline;">
                                    <span>原装低压闪充充电器</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10324_1534841583602_250x250.png"
                                         style="display: inline;">
                                    <span>vivo原装旅行充电器</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10337_1534841462505_250x250.png"
                                         style="display: inline;">
                                    <span>MGE 多彩数据线</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/111_1534839266764_250x250.png"
                                         style="display: inline;">
                                    <span>原装Micro USB数据线</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10335_1534841855778_250x250.png"
                                         style="display: inline;">
                                    <span>MGE 二合一数据线</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/4479_1508394695844hd_250x250.png"
                                         style="display: inline;">
                                    <span>车载充电器&amp;蓝牙耳机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/5136_1534842573117hd_bi_750x750.png"
                                         style="display: inline;">
                                    <span>公牛小白USB插座 GN-B333U</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="list-wrap">
                <a class="category-name" href="javascript:;">配件<span class="arrow"></span></a>
                <div class="category-box">
                    <div class="category-detail">
                        <a class="category-all" href="javascript:;">全部配件&nbsp;<span class="arrow"></span></a>
                        <p>配件</p>
                        <ul class="category-product">
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10638_1539570622845_250x250.png"
                                         style="display: inline;">
                                    <span>X23原装高透保护膜</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10557_1537149081603_250x250.png"
                                         style="display: inline;">
                                    <span>NEX原装高透保护膜</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10325_1535510295231_250x250.png"
                                         style="display: inline;">
                                    <span>X21系列原装保护膜</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10091_1534843087126_250x250.png"
                                         style="display: inline;">
                                    <span>飞智 Wee拉伸手柄</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/5587_1540206840746hd_bi_250x250.png"
                                         style="display: inline;">
                                    <span>罗技 蓝牙键盘K480</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10292_1540175870841_250x250.png"
                                         style="display: inline;">
                                    <span>X21硅胶手机保护壳</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10166_1534843165694_250x250.png"
                                         style="display: inline;">
                                    <span>ROCK 桌面手机支架</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10413_1534843509476_250x250.png"
                                         style="display: inline;">
                                    <span>闪迪至尊版存储卡 32G</span>
                                </a>
                            </li>
                            <li data-id="10013">
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/4293_1531882698024hd_250x250.png"
                                         style="display: inline;">
                                    <span>ROCK 车载手机支架</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10339_1539238646088_250x250.png"
                                         style="display: inline;">
                                    <span>X21屏幕指纹保护壳</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10412_1534843593247_250x250.png"
                                         style="display: inline;">
                                    <span>闪迪至尊版存储卡 64G</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/4158_1531884417507hd_250x250.png"
                                         style="display: inline;">
                                    <span>闪迪32GB手机U盘</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/10414_1534843264543_250x250.png"
                                         style="display: inline;">
                                    <span>闪迪64GB手机U盘</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/00_1539054465000_250x250.png"
                                         style="display: inline;">
                                    <span>镭拓 GTS时尚游戏鼠标垫</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/5503_1539260577757hd_bi_750x750.png"
                                         style="display: inline;">
                                    <span>罗技 蓝牙无线鼠标</span>
                                </a>
                            </li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="list-wrap">
                <a class="category-name" href="javascript:;">音乐<span class="arrow"></span></a>
                <div class="category-box">
                    <div class="category-detail">
                        <a class="category-all" href="javascript:;">全部音乐&nbsp;<span class="arrow"></span></a>
                        <p>音乐</p>
                        <ul class="category-product">
                            <li>
                                <a href="javascript:;">
                                    <img src="${pageContext.request.contextPath}/VivoProject/images/00_1541126606964_250x250.png"
                                         style="display: inline;">
                                    <span>得胜&amp;全民K歌 Q5手机麦克风</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/00_1540627445158_250x250.png" style="display: inline;">
                                    <span>XE160原装耳机</span>
                                </a>
                            </li>
                            <li data-id="9923">
                                <a href="javascript:;">
                                    <img src="images/4068_1531902211892hd_250x250.png" style="display: inline;">
                                    <span>XE100原装耳机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/10560_1538970109633_250x250.png" style="display: inline;">
                                    <span>出门问问 小问智能耳机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4100_1531902437342hd_250x250.png" style="display: inline;">
                                    <span>XE680原装耳机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/1929_1531902509010hd_250x250.png" style="display: inline;">
                                    <span>XE800 Hi-Fi耳机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/00_1538896707288_250x250.png" style="display: inline;">
                                    <span>Linner NC21 Pro主动降噪耳机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/10169_1540536539940_250x250.png" style="display: inline;">
                                    <span>欧雷特 X8蓝牙耳机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/1882_1531902270921hd_250x250.png" style="display: inline;">
                                    <span>XE600i 原装耳机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/5071_1531902328482hd_250x250.png" style="display: inline;">
                                    <span>XE710原装耳机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4126_1497517577446hd_250x250.png" style="display: inline;">
                                    <span>QCY Q25蓝牙耳机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/5131_1531902752370hd_250x250.png" style="display: inline;">
                                    <span>西柚X-metal 头戴式蓝牙耳机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4534_1531901707051hd_250x250.png" style="display: inline;">
                                    <span>欧雷特 蓝牙耳机Q10</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/5135_1531902655164hd_250x250.png" style="display: inline;">
                                    <span>ZACK 随享蓝牙音箱</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/10469_1535111455022_250x250.png" style="display: inline;">
                                    <span>得胜 PH105手机麦克风</span>
                                </a>
                            </li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="list-wrap">
                <a class="category-name" href="javascript:;">智能<span class="arrow"></span></a>
                <div class="category-box">
                    <div class="category-detail">
                        <a class="category-all" href="javascript:;">全部智能&nbsp;<span class="arrow"></span></a>
                        <p>智能</p>
                        <ul class="category-product">
                            <li>
                                <a href="javascript:;">
                                    <img src="images/00_1541488750902_250x250.png" style="display: inline;">
                                    <span>乐心体脂秤S5mini</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/00_1540796036027_250x250.png" style="display: inline;">
                                    <span>科沃斯 扫地机器人DK36</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4163_1532003003541hd_250x250.png" style="display: inline;">
                                    <span>乐心手环MAMBO2</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/5027_1532002886631hd_250x250.png" style="display: inline;">
                                    <span>乐心手环3</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/00_1539936148555_250x250.png" style="display: inline;">
                                    <span>极米无屏电视Z6</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4325_1532002818539hd_250x250.png" style="display: inline;">
                                    <span>乐心 MAMBO2礼盒版</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4456_1532003275088hd_250x250.png" style="display: inline;">
                                    <span>乐心手环 大麦版</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/00_1541495210030_250x250.png" style="display: inline;">
                                    <span>好写 光能小黑板</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/00_1535794165454_250x250.png" style="display: inline;">
                                    <span>爱奇艺 电视果3</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4758_1532002747075hd_250x250.png" style="display: inline;">
                                    <span>拉卡拉 跨界手环</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/00_1534928099790_250x250.png" style="display: inline;">
                                    <span>鱼跃 e-Tens智能手机按摩帖</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/10057_1537856339895_250x250.png" style="display: inline;">
                                    <span>乐心手环ZIVA plus</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4368_1532003405665hd_250x250.png" style="display: inline;">
                                    <span>乐心智能手环ziva</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4692_1532003802856hd_250x250.png" style="display: inline;">
                                    <span>乐心 体脂秤NANA-1</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/00_1536319505023_250x250.png" style="display: inline;">
                                    <span>大华家庭摄像头TP7</span>
                                </a>
                            </li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="list-wrap">
                <a class="category-name" href="javascript:;">摄影<span class="arrow"></span></a>
                <div class="category-box">
                    <div class="category-detail">
                        <a class="category-all" href="javascript:;">全部摄影&nbsp;<span class="arrow"></span></a>
                        <p>摄影</p>
                        <ul class="category-product">
                            <li>
                                <a href="javascript:;">
                                    <img src="images/10741_1541657726660_250x250.png" style="display: inline;">
                                    <span>猎奇 三合一手机镜头</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/5123_1530263062203hd_250x250.png" style="display: inline;">
                                    <span>Jji 手机美颜补光灯</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/5134_1530602833758hd_250x250.png" style="display: inline;">
                                    <span>Jji 迷你三脚架</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4128_1481559221417_250x250.png" style="display: inline;">
                                    <span>远点拍线控自拍杆</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/5250_1534734746129hd_250x250.png" style="display: inline;">
                                    <span>Jji SS500 蓝牙补光自拍杆</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4484_1508913199043hd_250x250.png" style="display: inline;">
                                    <span>远点拍 蓝牙三脚架自拍杆</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4538_1511590804004hd_250x250.png" style="display: inline;">
                                    <span>飞蝗 蓝牙自拍杆</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/5124_1530264754347hd_250x250.png" style="display: inline;">
                                    <span>飞宇 Vimble2手持稳定器</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4292_1493257066761hd_250x250.png" style="display: inline;">
                                    <span>惠普 ZINK 照片纸</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4288_1493000928736hd_250x250.png" style="display: inline;">
                                    <span>惠普小印照片打印机</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4556_1512975135820hd_250x250.png" style="display: inline;">
                                    <span>佳能 小型照片打印机</span>
                                </a>
                            </li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="list-wrap">
                <a class="category-name" href="javascript:;">生活<span class="arrow"></span></a>
                <div class="category-box">
                    <div class="category-detail">
                        <a href="javascript:;" class="category-all">
                            全部生活
                            <span class="arrow"></span>
                        </a>
                        <p>生活</p>
                        <ul class="category-product">
                            <li>
                                <a href="javascript:;">
                                    <img src="images/00_1541494798464_250x250.png"/>
                                    <span>TITA 临时停车牌</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/10682_1540465410858_250x250.png"/>
                                    <span>Guildford衣服防皱袋套装</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <img src="images/4809_1519798995399hd_250x250.png"/>
                                    <span>智途 金属宝珠笔</span>
                                </a>
                            </li>
                            <li data-id="10681"><a target="_blank" href="javascript:;">
                                <img src="images/00_1540386779257_250x250.png"/>
                                <span>Guildford便携洗漱包</span>
                            </a>
                            </li>
                            <li data-id="10680"><a target="_blank" href="javascript:;">
                                <img src="images/00_1540384836307_250x250.png"/>
                                <span>Guildford便携鞋盒</span>
                            </a>
                            </li>
                            <li data-id="10686"><a target="_blank" href="javascript:;">
                                <img src="images/00_1540524907246_250x250.png"/>
                                <span>Guildford折叠双肩包</span>
                            </a>
                            </li>
                            <li data-id="10688"><a target="_blank" href="javascript:;">
                                <img src="images/00_1540561084086_250x250.png"/>
                                <span>可宝 指甲刀KB-5000N</span>
                            </a>
                            </li>
                            <li data-id="10405"><a target="_blank" href="javascript:;">
                                <img src="images/5132_1530599360088hd_250x250.png"/>
                                <span>CLICK立体防盗背包</span>
                            </a>
                            </li>
                            <li data-id="10493"><a target="_blank" href="javascript:;">
                                <img src="images/00_1534993221309_250x250.png"/>
                                <span>KEYBO 凯宝 中性笔3支装</span>
                            </a>
                            </li>
                            <li data-id="10025"><a target="_blank" href="javascript:;">
                                <img src="images/4320_1494811168554hd_250x250.png"/>
                                <span>vivo 多功能双肩包</span>
                            </a>
                            </li>
                            <li data-id="10608"><a target="_blank" href="javascript:;">
                                <img src="images/10608_1541850247473_250x250.png"/>
                                <span>kappa 粒子护颈枕</span>
                            </a>
                            </li>
                            <li data-id="10406"><a target="_blank" href="javascript:;">
                                <img src="images/5133_1530600717088hd_250x250.png"/>
                                <span>Guildford简约电脑双肩包</span>
                            </a>
                            </li>
                            <li data-id="10241"><a target="_blank" href="javascript:;">
                                <img src="images/4812_1519799473001hd_250x250.png"/>
                                <span>智途 金属中性笔</span>
                            </a>
                            </li>
                            <li data-id="10494"><a target="_blank" href="javascript:;">
                                <img src="images/00_1534995084025_250x250.png"/>
                                <span>PURE 书源 中性笔10支装</span>
                            </a>
                            </li>
                            <li data-id="9921"><a target="_blank" href="javascript:;">
                                <img src="images/4061_1481559196702_250x250.png"/>
                                <span>vivo 配件收纳包</span>
                            </a>
                            </li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <!--商品核心-->
    <div class="wrapper">
        <ul class="floor-list">
            <li class="floor fp fp4">
                <%-- 待定 --%>
                <ul class="box-list">
                    <li class="box">
                        <a target="_blank" href="javascript:;">
                            <img src="${pageContext.request.contextPath}/VivoProject/images/20180920175745112621_original.jpg"
                                 style="display: inline;">
                        </a>
                    </li>
                    <li class="box">
                        <a target="_blank" href="javascript:;">
                            <img src="${pageContext.request.contextPath}/VivoProject/images/20180428105522994861_original.jpg"
                                 style="display: inline;">
                        </a>
                    </li>
                    <li class="box">
                        <a target="_blank" href="javascript:;">
                            <img src="${pageContext.request.contextPath}/VivoProject/images/20180926092746425764_original.jpg"
                                 style="display: inline;">
                        </a>
                    </li>
                    <li class="box">
                        <a target="_blank" href="javascript:;">
                            <img src="${pageContext.request.contextPath}/VivoProject/images/2018080809570622388_original.jpg"
                                 style="display: inline;">
                        </a>
                    </li>
                </ul>
            </li>
            <li class="floor c_3">
                <div class="info">
                    <p class="subject">热卖专区</p>
                    <ul class="more-wrapper">
                        <li>
                            <a target="_blank" href="javascript:;" class="more">
                                更多<span class="arrow"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <%-- 热卖商品 --%>
                <ul class="box-list">
                    <c:forEach items="${hostGoods}" var="good" varStatus="">
                        <li class="box">
                            <a target="_blank" class="box-a boxa-one"
                               href="${pageContext.request.contextPath}/ShoppingServlet?action=productDetails&gid=${good.v_gid}">
                                <img class="img-item selected"
                                     src="${pageContext.request.contextPath}/VivoProject/${good.v_image}"
                                     style="opacity: 0;">
                            </a>
                            <div class="prodinfo">
                                <p class="name">${good.v_user}</p>
                                <p class="feature">${good.v_gparticulars}</p>
                                <p class="price rmb-symbol">${good.v_price}</p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </li>
            <li class="floor pc_6">
                <div class="info">
                    <p class="subject">精品手机</p>
                    <%-- 精品手机 --%>
                    <ul class="more-wrapper">
                        <li>
                            <a target="_blank" href="javascript:;" class="more">
                                更多<span class="arrow"></span>
                            </a>
                        </li>
                    </ul>

                </div>

                <ul class="box-list">
                    <c:forEach items="${getBoutiquePhone4}" var="good" varStatus="">
                        <%-- 如果状态为5  则为上架   4为下架 --%>
                        <c:if test="${good.v_status eq 5}">
                        <li class="box">
                            <a target="_blank" href="${pageContext.request.contextPath}/ShoppingServlet?action=productDetails&gid=${good.v_gid}">
                                <img src="${pageContext.request.contextPath}/VivoProject/${good.v_image}"
                                     style="display: inline;">
                            </a>
                        </li>
                        </c:if>
                    </c:forEach>
                    <c:forEach items="${getBoutiquePhone}" var="good" varStatus="">
                        <li class="box">
                            <a target="_blank" class="box-b"
                               href="${pageContext.request.contextPath}/ShoppingServlet?action=productDetails&gid=${good.v_gid}">
                                <img class="img-item8 selected"
                                     src="${pageContext.request.contextPath}/VivoProject/${good.v_image}"
                                     style="opacity: 0;">
                            </a>
                            <div class="prodinfo">
                                <p class="name">${good.v_user}</p>
                                <p class="feature">${good.v_gparticulars}</p>
                                <p class="price rmb-symbol">${good.v_price}</p>
                            </div>
                        </li>
                    </c:forEach>
                </ul>

            </li>
            <li class="floor c_8">
                <div class="info">
                    <p class="subject">精品配件</p>
                    <ul class="more-wrapper">
                        <li>
                            <a target="_blank" href="javascript:;">
                                充电
                            </a>
                        </li>
                        <li>
                            <a target="_blank" href="javascript:;">
                                配件
                            </a>
                        </li>
                        <li>
                            <a target="_blank" href="javascript:;">
                                音乐
                            </a>
                        </li>
                        <li>
                            <a target="_blank" href="javascript:;" class="more">
                                更多<span class="arrow"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <ul class="box-list">
                    <c:forEach items="${accessories}" var="good" varStatus="">
                    <li class="box">
                        <a target="_blank" data-name="${good.v_user}" href="${pageContext.request.contextPath}/ShoppingServlet?action=productDetails&gid=${good.v_gid}">
                            <img src="${pageContext.request.contextPath}/VivoProject/${good.v_image}" alt="">
                        </a>

                        <div class="prodinfo">
                            <p class="name">${good.v_user}</p>
                            <p class="feature">${good.v_gparticulars}</p>
                            <p class="price rmb-symbol">${good.v_price}</p>
                        </div>
                    </li>
                    </c:forEach>
                </ul>
            </li>
        </ul>
    </div>
</div>
<!--列表商品结束-->

<!--底部列表项-->
<div class="shop-foot-area home-foot-area">
    <div class="wrapper cl">
        <ul class="vvs-agree">
            <li class="vvs-agree-item">
                <a href="javascript:;">
                    <b class="iconfont size" style="margin-right: -4px;position:  relative;top: 2px;">&#xe62c;</b>
                    官方正品
                </a>
            </li>
            <li class="vvs-agree-item">
                <a href="javascript:;">
                    <b class="iconfont size">&#xe64a;</b>满68包邮
                </a>
            </li>
            <li class="vvs-agree-item">
                <a href="javascript:;">
                    <b class="iconfont size">&#xe60f;</b>30天退换货
                </a>
            </li>
            <li class="vvs-agree-item">
                <a href="">
                    <b class="iconfont size">&#xe672;</b>全国网点售后
                </a>
            </li>
        </ul>
    </div>
</div>
<%-- 载入底部 --%>
<%@include file="vivo-footer.jsp" %>
<style>
    #vivo-contain {
        margin-top: 60px;
    }

    .footer {
        background: #fff;
    }
</style>
</body>
<script src="${pageContext.request.contextPath}/VivoProject/js/TweenLite.min.js"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/EasePack.min.js"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/html5.js"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/Mobile.phone.list.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/scroll.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/demo.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/hiddenScllTop.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/VivoProject/js/pc-menu-nav.js"></script>
</html>