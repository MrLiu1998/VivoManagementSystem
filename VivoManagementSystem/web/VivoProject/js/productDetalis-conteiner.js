$(function () {
    // 切换商品图片
    $(".small-item").mouseenter(function () {
        let $index = $(this).index();
        $(".big-item").eq($index).css({
            opacity: 1
        });
        $(".big-item").eq($index).siblings().css({
            opacity: 0
        });
        $(".corner").css({
            opacity: 1
        });
    });

    // 商品多余显示 $(".img--small .list_wrapper").width()
    $(".operation--previous").click(function () {
        if (parseInt($(".img-list--small").css("left")) !== 0) {
            $(".img-list--small").css("left", "0");
        }
    });

    $(".operation--next").click(function () {
        $(".img-list--small").css("left", "-87px");
    });

    // 我已确认同意
    $(".agreement").click(function () {
        $(this).find(".agreement_checkbox ").toggleClass("agreement_checked");
    });

    // 详情商品加减
    $(".minus").click(function () {
        if (parseInt($(".count").val()) <= 1) {
            $(this).attr("class", "minus disabled");
            $(".plus").attr("class", "plus ");
        } else {
            $(".number_tips").css("color", "#999");
            $(".count").val(parseInt($(".count").val()) - 1);
        }

    });
    $(".plus").click(function () {
        if (parseInt($(".count").val()) >= 5) {
            $(this).attr("class", "plus disabled");
            $(".minus").attr("class", "minus ");
            $(".number_tips").css("color", "red");
        } else {
            $(".count").val(parseInt($(".count").val()) + 1);
        }

    });


    // 商品展示 base-info_left
    $(window).scroll(function () {
        console.log($(".base-info_container").height());
        let leftInfo = document.querySelector(".left-info");

        if ($(this).scrollTop() >= 0) {
            leftInfo.style.position = "fixed";
            leftInfo.style.transaction = "all 1s";
        } else {
            leftInfo.style.position = "static";
            leftInfo.style.transaction = "all 1s";
        }
        if ($(this).scrollTop() >= 1071) {
            leftInfo.style.position = "absolute";
            leftInfo.style.transaction = "all 1s";
            leftInfo.style.bottom = "35px";
        }


    });

});