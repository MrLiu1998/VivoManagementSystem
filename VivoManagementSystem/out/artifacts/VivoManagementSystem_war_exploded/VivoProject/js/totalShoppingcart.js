(function () {
        totalChecked();
        // 1.全选效果checked
        $(".checkbox").addClass("checked");
        $(".J_viewCheckAll").click(function () {
            if ($(this).find(".checkbox").attr("class").indexOf("checked") !== -1) {
                $(".checkbox").removeClass("checked");
                $("#J_totalSalePrice").text("0");
            } else {
                $(".checkbox").addClass("checked");
                totalChecked();
            }
        });

        $(".checkbox").click(function () {
            if ($(this).attr("class").indexOf("checked") !== -1) {
                $(".checkbox").removeClass("checked");
                $("#J_totalSalePrice").text("0");
            } else {
                $(".checkbox").addClass("checked");
                totalChecked();
            }

        });
        subtotal();

        // 计算小计方法
        function subtotal() {

            $(".reduce-num").click(function () {

                if ($(this).parent().find(".prod-num").val() > 1) {
                    $(this).parent().find(".prod-num").val(parseInt($(this).parent().find(".prod-num").val()) - 1);
                    totalChecked(); // 每次更新计算
                }


            });
            $(".add-num").click(function () {
                if ($(this).parent().find(".prod-num").val() < 5) {
                    $(this).parent().find(".count-number").val(parseInt($(this).parent().find(".count-number").val()) + 1);
                    totalChecked(); // 每次更新计算
                }
            });

        }



        // 计算全选总价格
        function totalChecked() {
            var prices = 0;
            var numCount = 0;
            var di = 0;
            $("#tbody").find("tr").each(function (i, ele) {

                // 获取数量
                var num = parseInt($(ele).find(".count-number").val());
                // 获取商品价格
                var $price = parseInt($(ele).find(".price-col").text());
                // 优惠计算
                var discounts = num * 100;
                // 进行计算小计
                var priceTotal = ($price * num) - discounts;
                // 计算总金额
                // 保存上一次的金额进行累加
                prices += priceTotal;
                // 保存上一次数量
                numCount += num;
                di += discounts;
                // 设置优惠
                $(ele).find(".J_viewDiscount").text(discounts);
                // 优惠
                $("#J_totalDiscount").text(di);
                // 进行设置小计
                $(ele).find(".J_viewVcoin").text(priceTotal);
                // 设置总金额
                $("#J_totalSalePrice").text(prices);
                // 设置商品 J_totalSkuNum
                $("#J_totalSkuNum").text(numCount);

            });

        }

      /*  // 计算总价格
        var prices = 0;
        var numCount = 0;
        var di = 0;
        function total() {
            $("#tbody").find("tr").each(function (i, ele) {
                $(this).find(".check-col>i").click(function () {
                    if ($(this).attr("class").indexOf('checked') !== -1) {
                        // 获取数量
                        var num = parseInt($(ele).find(".count-number").val());
                        // 获取商品价格
                        var $price = parseInt($(ele).find(".price-col").text());
                        // 优惠计算
                        var discounts = num * 100;
                        // 进行计算小计
                        var priceTotal = ($price * num) - discounts;
                        // 计算总金额
                        // 保存上一次的金额进行累加
                        prices += priceTotal;
                        // 保存上一次数量
                        numCount += num;
                        di += discounts;
                        // 设置优惠
                        $(ele).find(".J_viewDiscount").text(discounts);
                        // 优惠
                        $("#J_totalDiscount").text(di);
                        // 进行设置小计
                        $(ele).find(".total-price").text(priceTotal);
                        // 设置总金额
                        $("#J_totalSalePrice").text(prices);
                        // 设置商品 J_totalSkuNum
                        $("#J_totalSkuNum").text(numCount);
                    }
                });
            });

        }*/

        // 3.批量删除
        $(".J_delMultiple").click(function () {
            let flge = confirm("确定删除" + $(".checked").parents(".prod-line").length + "个商品");
            if (flge) {
                $(".checked").parents(".prod-line").remove();
                $("#J_totalSalePrice").text("0");
                $("#J_totalSkuNum").text("0");
                $("#J_totalMarketPrice").text("0");
                $("#J_totalDiscount").text("0");
            }
        });

        // 4.小删除
        $(".J_delSingle").click(function () {
            let flge = confirm("确定删除" + $(this).parents(".prod-line").length + "个商品");
            if (flge) {
                $(this).parents(".prod-line").remove();
                totalChecked();
            }
        });

    }

)(window);