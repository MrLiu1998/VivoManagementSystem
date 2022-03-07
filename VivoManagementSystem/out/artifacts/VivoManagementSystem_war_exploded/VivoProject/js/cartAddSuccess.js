/*加入购物车*/
$(function () {
    $(".v-btn--dark").click(function () {
        console.log("1");
        // 1.获取值
        let name = $(".name").text();
        let specs = $(".specs .sku-module_item--checked").text();
        let suitescolor = $(".suites .sku-module_item--checked").text();
        let count = $(".count").val();
        let img = $(".small-item>img").attr("src");
        // 进行创建节点
        let $item = $("<div class=\"product-info\">\n" +
            "                    <div class=\"product-img\">\n" +
            "                        <img src=\"" + img + "\" alt=\"\">\n" +
            "                    </div>\n" +
            "                    <div class=\"product-des\">\n" +
            "                        <div class=\"product-name\">" + name + "</div>\n" +
            "                        <div class=\"product-tag\">颜色：" + suitescolor + "</div>\n" +
            "                        <div class=\"product-tag\">版本：" + specs + "</div>\n" +
            "                        <div class=\"product-tag\">数量：" + count + "</div>\n" +
            "                    </div>\n" +
            "                </div>");

        $(".add-success-content").append($item);

    });
    $(".add-success-container").click(function () {

        $(".v-btn--dark").trigger("click");
    })


});