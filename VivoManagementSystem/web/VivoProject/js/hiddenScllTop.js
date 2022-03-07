/**
 * Created by Genuine杨不易 on 2018/11/14.
 */
/**计算出导航与浏览器的顶端的距离**/
$(window).scroll(function () {
    var scrollT = $(window).scrollTop();
    if (scrollT >  600) {
        $(".hidden-wrap").css({
            display: "block"
        })
    } else {
        $(".hidden-wrap").css({
            display: "none"
        })
    }
});
