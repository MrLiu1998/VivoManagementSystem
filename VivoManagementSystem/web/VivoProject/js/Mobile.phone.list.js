/**
 * Created by Genuine杨不易 on 2018/11/14.
 */
/*轮播图*/
var index = 0, item;
$(".btn").click(function () {
    index = $(this).index();
    $(".item").eq(index).fadeIn().siblings().fadeOut();
    $(this).addClass("active").siblings().removeClass("active");
});
item = setInterval(function () {
    index++;//下标加一
    index = index % 5;
    $(".item").eq(index).fadeIn().siblings().fadeOut();
    $(".btn").eq(index).addClass("active").siblings().removeClass("active");
}, 5000);

$(".btn").mouseenter(function () {
    clearInterval(item);
});
$(".btn").mouseleave(function () {
    item = setInterval(function () {
        index++;//下标加一
        index = index % 5;
        $(".item").eq(index).fadeIn().siblings().fadeOut();
        $(".btn").eq(index).addClass("active").siblings().removeClass("active");
    }, 5000);
});
/*手机列表项*/
var imgitem = document.getElementsByClassName("img-item");
var btnimg = document.getElementsByClassName("btn-img");
for (var i = 0; i < btnimg.length; i++) {
    var li = btnimg[i];
    li.index = i;
    li.onclick = function () {
        for (var j = 0; j < imgitem.length; j++) {
            imgitem[j].className = "img-item";

        }
        imgitem[this.index].className = "img-item selected";

        if (this.index === 0) {
            document.getElementsByClassName("prompt")[0].innerHTML = "已选：X23 全面屏 星芒版"
            document.getElementsByClassName("prompt")[0].title = "已选：X23 全面屏 星芒版"
        }
        if (this.index === 1) {
            document.getElementsByClassName("prompt")[0].innerHTML = "已选：X23 全面屏 魅影紫"
            document.getElementsByClassName("prompt")[0].title = "已选：X23 全面屏 魅影紫"
        }
        if (this.index === 2) {
            document.getElementsByClassName("prompt")[0].innerHTML = "已选：X23 全面屏 幻夜蓝"
            document.getElementsByClassName("prompt")[0].title = "已选：X23 全面屏 幻夜蓝"
        }
        if (this.index === 3) {
            document.getElementsByClassName("prompt")[0].innerHTML = "已选：X23 全面屏 幻影红"
            document.getElementsByClassName("prompt")[0].title = "已选：X23 全面屏 幻影红"

        }
        if (this.index === 4) {
            document.getElementsByClassName("prompt")[0].innerHTML = "已选：X23 全面屏 Logo时尚橙"
            document.getElementsByClassName("prompt")[0].title = "已选：X23 全面屏 Logo时尚橙"

        }
        if (this.index === 5) {
            document.getElementsByClassName("prompt")[0].innerHTML = "已选：X23 全面屏 Logo时尚紫"
            document.getElementsByClassName("prompt")[0].title = "已选：X23 全面屏 Logo时尚紫"

        }
    }
}

//列表二
var imgitem2 = document.getElementsByClassName("img-item2");
var btnimg2 = document.getElementsByClassName("btn-img2");
for (var i = 0; i < btnimg2.length; i++) {
    var liid = btnimg2[i];
    liid.index = i;
    liid.onclick = function () {
        for (var j = 0; j < imgitem2.length; j++) {
            imgitem2[j].className = "img-item2";
        }
        imgitem2[this.index].className = "img-item2 selected";
        if (this.index === 0) {
            document.getElementsByClassName("prompt")[1].innerHTML = "已选：Z3 全面屏 6GB+64GB 星夜黑"
            document.getElementsByClassName("prompt")[1].title = "已选：Z3 全面屏 6GB+64GB 星夜黑"
            document.getElementsByClassName("prompt")[1].style.fontSize = "12px"

        }
        if (this.index === 1) {
            document.getElementsByClassName("prompt")[1].innerHTML = "已选：Z3 全面屏 6GB+64GB 极光蓝"
            document.getElementsByClassName("prompt")[1].title = "已选：Z3 全面屏 6GB+64GB 极光蓝"
            document.getElementsByClassName("prompt")[1].style.fontSize = "12px"

        }
        if (this.index === 2) {
            document.getElementsByClassName("prompt")[1].innerHTML = "已选：Z3 全面屏 6GB+64GB 梦幻粉"
            document.getElementsByClassName("prompt")[1].title = "已选：Z3 全面屏 6GB+64GB 梦幻粉"
            document.getElementsByClassName("prompt")[1].style.fontSize = "12px"
        }
    }
}


//列表三
var imgitem3 = document.getElementsByClassName("img-item3");
var btnimg3 = document.getElementsByClassName("btn-img3");
for (var i = 0; i < btnimg3.length; i++) {
    var liid = btnimg3[i];
    liid.index = i;
    liid.onclick = function () {
        for (var j = 0; j < imgitem3.length; j++) {
            imgitem3[j].className = "img-item3";
        }
        imgitem3[this.index].className = "img-item3 selected";
        if (this.index === 0) {
            document.getElementsByClassName("prompt")[2].innerHTML = "已选：NEX旗舰版8GB+128GB 星迹版"
            document.getElementsByClassName("prompt")[2].title = "已选：NEX旗舰版8GB+128GB 星迹版"
            document.getElementsByClassName("prompt")[2].style.fontSize = "12px"

        }
        if (this.index === 1) {
            document.getElementsByClassName("prompt")[2].innerHTML = "已选：NEX旗舰版8GB+128GB 宝石红"
            document.getElementsByClassName("prompt")[2].title = "已选：NEX旗舰版8GB+128GB 宝石红"
            document.getElementsByClassName("prompt")[2].style.fontSize = "12px"

        }
        if (this.index === 2) {
            document.getElementsByClassName("prompt")[2].innerHTML = "已选：NEX旗舰版8GB+128GB 星钻黑"
            document.getElementsByClassName("prompt")[2].title = "已选：NEX旗舰版8GB+128GB 星钻黑"
            document.getElementsByClassName("prompt")[2].style.fontSize = "12px"
        }
    }
}

//列表四
var imgitem4 = document.getElementsByClassName("img-item4");
var btnimg4 = document.getElementsByClassName("btn-img4");
for (var i = 0; i < btnimg4.length; i++) {
    var liid = btnimg4[i];
    liid.index = i;
    liid.onclick = function () {
        for (var j = 0; j < imgitem4.length; j++) {
            imgitem4[j].className = "img-item4";
        }
        imgitem4[this.index].className = "img-item4 selected";
        if (this.index === 0) {
            document.getElementsByClassName("prompt")[4].innerHTML = "已选：Z1 青春版 4GB+32GB 极光色"
            document.getElementsByClassName("prompt")[4].title = "已选：Z1 青春版 4GB+32GB 极光色"
            document.getElementsByClassName("prompt")[4].style.fontSize = "12px"

        }
        if (this.index === 1) {
            document.getElementsByClassName("prompt")[4].innerHTML = "已选：Z1 青春版 4GB+32GB 黑金"
            document.getElementsByClassName("prompt")[4].title = "已选：Z1 青春版 4GB+32GB 黑金"
            document.getElementsByClassName("prompt")[4].style.fontSize = "12px"

        }
        if (this.index === 2) {
            document.getElementsByClassName("prompt")[4].innerHTML = "已选：Z1 青春版 4GB+32GB 炫慕红"
            document.getElementsByClassName("prompt")[4].title = "已选：Z1 青春版 4GB+32GB 炫慕红"
            document.getElementsByClassName("prompt")[4].style.fontSize = "12px"
        }
    }
}

//列表五
var imgitem5 = document.getElementsByClassName("img-item5");
var btnimg5 = document.getElementsByClassName("btn-img5");
for (var i = 0; i < btnimg5.length; i++) {
    var liid = btnimg5[i];
    liid.index = i;
    liid.onclick = function () {
        for (var j = 0; j < imgitem5.length; j++) {
            imgitem5[j].className = "img-item5";
        }
        imgitem5[this.index].className = "img-item5 selected";
        if (this.index === 0) {
            document.getElementsByClassName("prompt")[5].innerHTML = "已选：Y83 全网通 4GB+32GB 极夜黑"
            document.getElementsByClassName("prompt")[5].title = "已选：Y83 全网通 4GB+32GB 极夜黑"
            document.getElementsByClassName("prompt")[5].style.fontSize = "12px"

        }
        if (this.index === 1) {
            document.getElementsByClassName("prompt")[5].innerHTML = "已选：Y83 全网通 4GB+32GB 魅力红"
            document.getElementsByClassName("prompt")[5].title = "已选：Y83 全网通 4GB+32GB 魅力红"
            document.getElementsByClassName("prompt")[5].style.fontSize = "12px"
        }

    }
}


//列表六
var imgitem6 = document.getElementsByClassName("img-item6");
var btnimg6 = document.getElementsByClassName("btn-img6");
for (var i = 0; i < btnimg6.length; i++) {
    var liid = btnimg6[i];
    liid.index = i;
    liid.onclick = function () {
        for (var j = 0; j < imgitem6.length; j++) {
            imgitem6[j].className = "img-item6";
        }
        imgitem6[this.index].className = "img-item6 selected";
        if (this.index === 0) {
            document.getElementsByClassName("prompt")[6].innerHTML = "已选：Y73 全面屏 3GB+32GB 香槟金"
            document.getElementsByClassName("prompt")[6].title = "已选：Y73 全面屏 3GB+32GB 香槟金"
            document.getElementsByClassName("prompt")[6].style.fontSize = "12px"

        }
        if (this.index === 1) {
            document.getElementsByClassName("prompt")[6].innerHTML = "已选：Y73 全面屏 3GB+32GB 磨砂黑"
            document.getElementsByClassName("prompt")[6].title = "已选：Y73 全面屏 3GB+32GB 磨砂黑"
            document.getElementsByClassName("prompt")[6].style.fontSize = "12px"
        }

        if (this.index === 2) {
            document.getElementsByClassName("prompt")[6].innerHTML = "已选：Y73 全面屏 3GB+32GB 倾慕红"
            document.getElementsByClassName("prompt")[6].title = "已选：Y73 全面屏 3GB+32GB 倾慕红"
            document.getElementsByClassName("prompt")[6].style.fontSize = "12px"
        }
    }
}

//列表七
var imgitem7 = document.getElementsByClassName("img-item7");
var btnimg7 = document.getElementsByClassName("btn-img7");
for (var i = 0; i < btnimg7.length; i++) {
    var liid = btnimg7[i];
    liid.index = i;
    liid.onclick = function () {
        for (var j = 0; j < imgitem7.length; j++) {
            imgitem7[j].className = "img-item7";
        }
        imgitem7[this.index].className = "img-item7 selected";
        if (this.index === 0) {
            document.getElementsByClassName("prompt")[7].innerHTML = "已选：Y73 全面屏 3GB+32GB 香槟金"
            document.getElementsByClassName("prompt")[7].title = "已选：Y73 全面屏 3GB+32GB 香槟金"
            document.getElementsByClassName("prompt")[7].style.fontSize = "12px"

        }
        if (this.index === 1) {
            document.getElementsByClassName("prompt")[7].innerHTML = "已选：Y73 全面屏 3GB+32GB 磨砂黑"
            document.getElementsByClassName("prompt")[7].title = "已选：Y73 全面屏 3GB+32GB 磨砂黑"
            document.getElementsByClassName("prompt")[7].style.fontSize = "12px"
        }

    }
}

//列表八
var imgitem8 = document.getElementsByClassName("img-item8");
var btnimg8 = document.getElementsByClassName("btn-img8");
for (var i = 0; i < btnimg8.length; i++) {
    var liid = btnimg8[i];
    liid.index = i;
    liid.onclick = function () {
        for (var j = 0; j < imgitem8.length; j++) {
            imgitem8[j].className = "img-item8";
        }
        imgitem8[this.index].className = "img-item8 selected";
        if (this.index === 0) {
            document.getElementsByClassName("prompt")[8].innerHTML = "已选：Y73 全面屏 3GB+32GB 香槟金"
            document.getElementsByClassName("prompt")[8].title = "已选：Y73 全面屏 3GB+32GB 香槟金"
            document.getElementsByClassName("prompt")[8].style.fontSize = "12px"

        }
        if (this.index === 1) {
            document.getElementsByClassName("prompt")[8].innerHTML = "已选：Y73 全面屏 3GB+32GB 磨砂黑"
            document.getElementsByClassName("prompt")[8].title = "已选：Y73 全面屏 3GB+32GB 磨砂黑"
            document.getElementsByClassName("prompt")[8].style.fontSize = "12px"
        }

        if (this.index === 2) {
            document.getElementsByClassName("prompt")[8].innerHTML = "已选：Y73 全面屏 3GB+32GB 倾慕红"
            document.getElementsByClassName("prompt")[8].title = "已选：Y73 全面屏 3GB+32GB 倾慕红"
            document.getElementsByClassName("prompt")[8].style.fontSize = "12px"
        }
    }
}