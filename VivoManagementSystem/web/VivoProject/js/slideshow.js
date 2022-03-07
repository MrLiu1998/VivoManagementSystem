window.onload = function () {
    /* 轮播图 */
    /* 1.拿到需要操作的元素 */
    let phoneUl = document.querySelector(".main-top.hide-phone>ul");
    let mainLeftCurrent = document.querySelector(".main-left-current");
    let mainRightCurrent = document.querySelector(".main-right-current");
    let phoneCarousel = document.querySelectorAll(".main-top.hide-phone>span");
    let phoneLi = document.querySelectorAll(".main-top.hide-phone>ul>li");
    // 获取li的宽度
    let imgWidth = parseFloat(getComputedStyle(phoneLi[0]).width);
    // 记录每一次的索引
    let currentIndex = 0;
    // 2.监听点击事件
    let preIndex = 0; // 记录线条索引
    let a = 0;
    mainRightCurrent.onclick = function () {
        currentIndex++;
        preIndex++;
        if (currentIndex > phoneLi.length - 1) {
            currentIndex = 0;
            phoneUl.style.marginLeft = -currentIndex * imgWidth + "px";
            currentIndex++;
        }
        easeAnimation(phoneUl, {"marginLeft": -currentIndex * imgWidth});

        if (preIndex > phoneLi.length - 2) {
            preIndex = 0;
        }

        phoneCarousel[a].className = "Carousel";
        phoneCarousel[preIndex].className = "Carousel  current";
        a = preIndex;
    };


    mainLeftCurrent.onclick = function () {

        currentIndex--;
        if (currentIndex < 0) {
            currentIndex = phoneLi.length - 1;
        }
        phoneUl.style.marginLeft = -currentIndex * imgWidth + "px";

    };

    let id = setInterval(function () {
        mainRightCurrent.onclick();
    }, 3000);

    phoneCarousel.onmouseenter = function () {
        clearInterval(id);
    };
    phoneCarousel.onmouseleave = function () {
        id = setInterval(function () {
            mainRightCurrent.onclick();
        }, 3000);
    };




    // 1.拿到需要操作的元素
    let headerSearch = document.querySelector(".header-search");
    let headerMiddle = document.querySelector(".header-middle");
    let getTop = document.querySelector(".getTop");
    headerSearch.onclick = function () {
        headerMiddle.style.display = "none";
    };

    let phone = document.querySelector(".header-phone");
    window.onscroll = function () {

        /* 获取滚动出去的高度 */
        let offsetHeight = getPageScroll().y;

        /* 判断 */
        if (offsetHeight >= 10) {
            // phone.style.top = offsetHeight+"px";
            phone.style.position = "fixed";
            phone.style.background = "rgba(0,0,0,.9)";
            phone.style.transition = "position,background 2s ";
            phone.style.zIndex = "999";
        } else {
            // phone.style.top = "0px";
            phone.style.position = "";
            phone.style.background = "transparent";
            phone.style.transition = "position,background 2s ";
        }


        /* 获取页面高度判断返回顶部是否显示 */
        if (offsetHeight >= 1300) {
            getTop.style.display = "block";
        } else {
            getTop.style.display = "none";
        }
    };

    /* 返回开始 */
    // 1.监听回滚按钮点击
    let timerId = null;
    clearInterval(timerId);
    getTop.onclick = function () {
        // 开启定时器
        timerId = setInterval(function () {
            // 1.获取开始步长
            let begin = getPageScroll().y;
            // 2.目标步长
            let target = 0;
            // 3.计算步长
            let step = (target - begin) * 0.3;
            // 4.重新设置开始步长为计算后的
            begin += step;
            // 5.判断是否小于等于1 为 则停止滚动
            if (Math.abs(Math.abs(step)) <= 1) {
                clearInterval(timerId);
                // 滚动到顶部
                window.scrollTo(0, 0);
                return;
            }
            // 6.设置页面滚动
            window.scrollTo(0, begin);
        }, 50);
    }
    /* 返回结束 */
};
