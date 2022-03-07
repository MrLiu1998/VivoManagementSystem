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

			<form action="${pageContext.request.contextPath}/adminServlet?action=eidtGoods" enctype="multipart/form-data" method="post" id="edit_form"
				style="background: none; width: 700px">

				<!-- 	// 隐藏 储存id -->
				<input type="text" class="am-form-field" name="v_gid"
					value="${vivo_goods.v_gid}" style="display: none;">

				<div class="item1">
					<div>
						<span>商品名称：</span> <input type="text" class="am-form-field"
							name="v_user" value="${vivo_goods.v_user}">&nbsp;&nbsp;
					</div>
					<div>
						<span>商品价格：</span> <input type="text" class="am-form-field"
							name="v_price" value="${vivo_goods.v_price}">
					</div>

				</div>

				<div class="item1">
					<div>
						<span>所属分类：</span> <select id="category_select" name="v_sid">
							<c:forEach items="${category }" var="allCategory">
								<option value="${allCategory.v_sid }">${allCategory.v_name }</option>
							</c:forEach>
						</select>
					</div>
					<div>
						<span>是否热门：</span> <select id="is_Hot" name="v_host">
						<%-- 0为热卖 1为精品手机 2为精品配件   3为普通商品 --%>
							<option value="2">精品配件</option>
							<option value="1">精品手机</option>
							<option value="0">热门商品</option>
						</select>
					</div>
				</div>

				<div class="item1 update_pic">
					<span>商品图片：</span>
					<img src="${pageContext.request.contextPath}/VivoProject/${vivo_goods.v_image}"    id="imagevivew"    class="item1_img"    alt="">
					<label for="fileupload" id="label_file">上传文件</label>
					<input type="file"  name="v_image" value="${vivo_goods.v_image}" style="display: none"  id="fileupload"  />
					<input type="text"   value="${vivo_goods.v_image}" style="display:none;">
				</div>
				<div class="item1 item_desc">
					<span>商品描述：</span>
					<textarea id="desc" name="v_gparticulars" rows="4" cols="50">${vivo_goods.v_gparticulars }</textarea>
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

            $("#fileupload").change(function () {
                var $file = $(this);
                var objUrl = $file[0].files[0];
                // 获得一个HTTP格式的url路径
                var windowURL = windowURL || window.webkitURL;
                // createObjectURL创建一个指向该参数对象图片的URL
                var dateURL;
                dateURL = windowURL.createObjectURL(objUrl);
                console.log(dateURL);
                $("#imagevivew").attr("src",dateURL);
                console.log($("#imagevivew").attr('style',"inline"));
                if($("#imagevivew").attr("style") === 'display:none'){
                    $("#imagevivew").attr('style',"inline");
                    $("#imagevivew").width("300px");
                    $("#imagevivew").height("200px");
                    $(".update_pic").attr("style","margin-bottom:80px");
                }


            });

			$("#edit").click(function() {
				// 获取表单进行提交  GoodsEditServlet
				$("#edit_form").submit();
			});

			$("#reset").click(function() {
				$("input").val("");
				$("#desc").val("");
			});
			
			// 判断我获取到的值是哪一个 进行选中
			$("#is_Hot option[value=${vivo_goods.v_host}]").prop("selected",true);
			$("#category_select option[value=${vivo_goods.v_sid}]").prop("selected",true);
		});
	</script>
</body>
</html>