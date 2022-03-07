<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!-- 导入路径和标签库  -->
<%@include file="/admin/tag-library.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="${path }/admin/css/style.css"
          type="text/css" />
    <link rel="stylesheet" href="${path }/admin/css/amazeui.min.css" />
    <style>
        #label_file{
            width: 100px;
            height: 39px;
            background: #000;
            text-align: center;
            font-size: 14px;
            border-radius: 10px;
            color: #fff;
            display: inline-block;
            line-height: 39px;
            font-weight: 600;
        }
        .item1_img{
            width: 100px;
            height: 100px;
            border: 1px solid #000;
            padding: 5px;
            display: inline-block;
        }
    </style>
</head>
<body>

<div class="main_top">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
            <strong class="am-text-primary am-text-lg">编辑商品</strong><small></small>
        </div>
    </div>
    <hr>

    <div class="edit_content">

        <form action="${pageContext.request.contextPath}/adminServlet?action=editorOrder" method="post" id="edit_form"
              style="background: none; width: 700px">

            <!-- 	// 隐藏 储存id -->

            <div class="item1">
                <div>
                    <span>订单号：</span> <input type="text" class="am-form-field"
                                              name="v_myOrderNo" value="${v_myOrderNo}">&nbsp;&nbsp;
                </div>
                <div>
                    <span>订单状态：</span> <input type="text" class="am-form-field"
                                              name="v_status" value="${v_status}">
                </div>

            </div>


            <button class="am-btn am-btn-default" type="button" id="edit">编辑</button>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <button class="am-btn am-btn-default" type="button" id="reset">重置</button>
        </form>
    </div>


</div>

<script src="${path }/admin/js/jquery.min.js"></script>

<script>
    $(function() {


        $("#edit").click(function() {
            // 获取表单进行提交  GoodsEditServlet
            $("#edit_form").submit();
        });


    });
</script>
</body>
</html>