$(function () {
    // 1.监听放大镜点击事件
    $(".header-search>a").click(function () {
        // 1.1 把当前的导航隐藏
        $(".header-middle.nav1").css({display: "none"});
        // 1.2 拿到需要显示的导航
        $(".header-search-wrap").css({height: "auto", opacity: 1, transition: "all .5s"});
        $(".vp-head-site>.login>a").css({color: "#000"});
    });
    // 2.监听叉叉点击事件
    $(".header-search-btns>span:last-child").click(function () {
        // 2.1 把以前的导航显示
        $(".header-middle.nav1").css({display: "block"});
        // 1.2 拿到需要隐藏的导航
        $(".header-search-wrap").css({height: "0", opacity: 0, transition: "all .5s"});
        $(".vp-head-site>.login>a").css({color: "#fff"});
    });

    // 隐藏手机菜单
    $(".header-phone-menu").css({display: "none", opacity: 0, overflowY: "hidden"});
    document.querySelector("body").style.overflowY = "auto";
});