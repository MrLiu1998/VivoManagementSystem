$(function () {
    // 1.监听菜单点击
    $(".header-phone>.icon-caidan").click(function () {
        $(".header-phone-menu").css({display: "block", opacity: 1, overflowY: "auto"});
        document.querySelector("body").style.overflowY = "hidden";
    });

    // 监听叉叉菜单
    $(".header-phone-menu-top>.icon-chacha").click(function () {
        $(".header-phone-menu").css({display: "none", opacity: 0, overflowY: "hidden"});
        document.querySelector("body").style.overflowY = "auto";
    });

    $(".nav>li").click(function () {
        $(".nav>li .sub").css({background: "#fff"});
        // 切换 是否收起
        $(this).children(".sub").slideToggle(100);
        // 1.1 拿到二级菜单
        // let $sub = $(this).children(".sub");
        // 1.2 让二级菜单展开
        // $sub.slideDown(500);
        // 1.3 拿到所有非当前的二级菜单  siblings非当前元素  children拿到子元素
        let $onThis = $(this).siblings().children(".sub");
        // 1.4 让所有非当前的二级菜单收起
        $onThis.slideUp(100);
        // 1.5 让当前被点击的一级菜单箭头旋转
        $(this).addClass("current");
        // 1.6 让所有非被点击的一级菜单箭头还原
        $(this).siblings().removeClass("current");
    });

});