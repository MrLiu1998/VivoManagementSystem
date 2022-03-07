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
</head>
<body>

	<div class="main_top">
		<div class="am-cf am-padding am-padding-bottom-0">
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">编辑分类</strong><small></small>
			</div>
		</div>
		<hr>

		<div class="edit_content">

			<form action="${path}/GoodsServlet?action=eidtGoods" method="post"
				id="edit_form" style="background: none; width: 700px">

				<div class="item1">
					<div>
						<span>商品名称：</span> <input type="text" class="am-form-field"
							name="name" value="${goods.name}">&nbsp;&nbsp;
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

			$("#reset").click(
					function() {
						$(window).attr('location',
								'${path}/GoodsServlet?action=getListGoods');
					});

		});
	</script>
</body>
</html>