$(function () {

    $(".personal-pop").hide();

    $("#div1").click(function () {
        $(".personal-pop").show();
    });
    $(".cancel").click(function () {
        $(".personal-pop").hide();
    });
    $(".img1").click(function () {
        let a = $(this).parent(".eye-box").prev().attr("type");
        if (a == "text") {
            $(this).parent(".eye-box").prev().attr("type", "password");
            $(this).attr("src", "images/eyes-off.7c50935.png.webp");
        } else {
            $(this).parent(".eye-box").prev().attr("type", "text");
            $(this).attr("src", "images/eyes-on.c96cc6e.png");
        }
    });

});