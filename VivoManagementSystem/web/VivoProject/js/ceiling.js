// PC吸顶盒
// 1.监听盒子的位置
//let $nav = $(".vp-head-mainbar-pc");
// 2.判断可视区域是否滚动出去

// window.onload = function () {
//     window.onscroll = function () {
//         /* 获取滚动出去的高度 */
//         let offsetHeight = getPageScroll().y;
//         console.log(offsetHeight);
//     };
// };

$(function () {

    $(".vp-head-mainbar-pc").hover(function () {
        $(".header-middle>li>a,.vp-head-site > .login > a").addClass("header-middle-pc");
    }, function () {
        $(".header-middle>li>a,.vp-head-site > .login > a").removeClass("header-middle-pc");
    });

    $(window).scroll(function () {
        // 1.获取网页滚动出去的高度
        let $scrollTop = $("body").scrollTop() + $("html").scrollTop();
        let $nav = $(".vp-head-mainbar-pc");
        // 2.判断是否大于某个值
        if ($scrollTop > 0) {
            $nav.css({
                position: "fixed",
                background: "#fff",
                top: "0",
            });
            $(".header-middle>li>a,.vp-head-site > .login > a").addClass("header-middle-pc");

            $(".vp-head-site > .header-middle > li a,.vp-head-site > .login > a").addClass("site-middle");
        } else {
            $nav.css({
                position: "",
                background: "",
                top: "0",
            });
            $(".header-middle>li>a,.vp-head-site > .login > a").removeClass("header-middle-pc");

            $(".vp-head-site > .header-middle > li a,.vp-head-site > .login > a").removeClass("site-middle");
        }

    });
});