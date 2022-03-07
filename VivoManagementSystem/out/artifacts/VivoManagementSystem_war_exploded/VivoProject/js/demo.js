/*
 思路：
 要实现的效果：点击“加入购物车”，对应的图片就会飞入购物车，购物车上的数+1
 但是如果图片飞过去了这就没图片了，所以考虑使用克隆方法，
 克隆的样式有：width、height、left、top，并设置在页面的最上边，否则飞的时候看不见
 克隆到body上的购物车位置（飞入效果）：width、height、left、top,  购物车+1
 清除购物车的克隆样式
 */
var iCount = 0; //购物车的变量，用来增加购物车的数量的临时变量
$(function () {
    $(".putin-shopcart-one").click(function () { //点击“加入购物车”触发时事件
        iCount++;  //点击一次就+1
        var addImg = $(".boxa-one").find('.selected');  //找到该商品的图片
        var cloneImg = addImg.clone();  //对该图片进行克隆
        cloneImg.css({        //克隆的样式
            "width": "230px",
            "height": "230px",
            "position": "absolute",        //绝对定位
            "transition": "all 1s", /*为什么这里没有效果*/
            "left": addImg.offset().left,  //该图片的left位置
            "top": addImg.offset().top,    //该图片的top位置
            "z-index": "99999",              //层级，越大越在上
            "opacity": "0.5 ",			  //透明度  半透明
            "transform": "scale(0.6)"  /*为什么这里没有效果*/

        });

        //克隆到body上的购物车位置
        cloneImg.appendTo($("body")).animate({
            "width": "0px",  //克隆后的宽
            "height": "0px",  //克隆后的宽
            "left": $(".vivo-fixed-wrap").offset().left + 30,  //克隆后的left位置  购物车
            "top": $(".vivo-fixed-wrap").offset().top + 20,   //克隆后的left位置  购物车
        }, 10, function () {//克隆后
            $("#Number-che").html(iCount);	//购物车上的数 +1
            $("#msg").show().animate({width: '300px'}, 1000).fadeOut(1000); //提示信息
        });

    });
});








var iCount = 0; //购物车的变量，用来增加购物车的数量的临时变量
$(function () {
    $(".two-putin-shopcart").click(function () { //点击“加入购物车”触发时事件
        iCount++;  //点击一次就+1
        var addImg = $(".boxb-img").find('.selected');  //找到该商品的图片
        var cloneImg = addImg.clone();  //对该图片进行克隆
        cloneImg.css({        //克隆的样式
            "width": "230px",
            "height": "230px",
            "position": "absolute",        //绝对定位
            "transition": "all 1s", /*为什么这里没有效果*/
            "left": addImg.offset().left,  //该图片的left位置
            "top": addImg.offset().top,    //该图片的top位置
            "z-index": "99999",              //层级，越大越在上
            "opacity": "0.5 ",			  //透明度  半透明
            "transform": "scale(0.6)"  /*为什么这里没有效果*/

        });

        //克隆到body上的购物车位置
        cloneImg.appendTo($("body")).animate({
            "width": "0px",  //克隆后的宽
            "height": "0px",  //克隆后的宽
            "left": $(".vivo-fixed-wrap").offset().left + 30,  //克隆后的left位置  购物车
            "top": $(".vivo-fixed-wrap").offset().top + 20,   //克隆后的left位置  购物车
        }, 10, function () {//克隆后
            $("#Number-che").html(iCount);	//购物车上的数 +1
            $("#msg").show().animate({width: '300px'}, 1000).fadeOut(1000); //提示信息
        });

    });
    $(".traeyy-putin-shopcart").click(function () { //点击“加入购物车”触发时事件
        iCount++;  //点击一次就+1
        var addImg = $(".boxc-img").find('img');  //找到该商品的图片
        var cloneImg = addImg.clone();  //对该图片进行克隆
        cloneImg.css({        //克隆的样式
            "width": "230px",
            "height": "230px",
            "position": "absolute",        //绝对定位
            "transition": "all 1s", /*为什么这里没有效果*/
            "left": addImg.offset().left,  //该图片的left位置
            "top": addImg.offset().top,    //该图片的top位置
            "z-index": "99999",              //层级，越大越在上
            "opacity": "0.5 ",			  //透明度  半透明
            "transform": "scale(0.6)"  /*为什么这里没有效果*/

        });

        //克隆到body上的购物车位置
        cloneImg.appendTo($("body")).animate({
            "width": "0px",  //克隆后的宽
            "height": "0px",  //克隆后的宽
            "left": $(".vivo-fixed-wrap").offset().left + 30,  //克隆后的left位置  购物车
            "top": $(".vivo-fixed-wrap").offset().top + 20,   //克隆后的left位置  购物车
        }, 10, function () {//克隆后
            $("#Number-che").html(iCount);	//购物车上的数 +1
            $("#msg").show().animate({width: '300px'}, 1000).fadeOut(1000); //提示信息
        });

    });
    $(".putin-shopcart-true").click(function () { //点击“加入购物车”触发时事件
        iCount++;  //点击一次就+1
        var addImg = $(".boxa-true").find('.selected');  //找到该商品的图片
        var cloneImg = addImg.clone();  //对该图片进行克隆
        cloneImg.css({        //克隆的样式
            "width": "230px",
            "height": "230px",
            "position": "absolute",        //绝对定位
            "transition": "all 1s", /*为什么这里没有效果*/
            "left": addImg.offset().left,  //该图片的left位置
            "top": addImg.offset().top,    //该图片的top位置
            "z-index": "99999",              //层级，越大越在上
            "opacity": "0.5 ",			  //透明度  半透明
            "transform": "scale(0.6)"  /*为什么这里没有效果*/

        });

        //克隆到body上的购物车位置
        cloneImg.appendTo($("body")).animate({
            "width": "0px",  //克隆后的宽
            "height": "0px",  //克隆后的宽
            "left": $(".vivo-fixed-wrap").offset().left + 30,  //克隆后的left位置  购物车
            "top": $(".vivo-fixed-wrap").offset().top + 20,   //克隆后的left位置  购物车
        }, 10, function () {//克隆后
            $("#Number-che").html(iCount);	//购物车上的数 +1
            $("#msg").show().animate({width: '300px'}, 1000).fadeOut(1000); //提示信息
        });

    });
});