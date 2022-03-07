<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/admin/tag-library.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>

<link rel="stylesheet" href="${path}/admin/css/style.css"
	type="text/css" />
<link rel="stylesheet" href="${path }/admin/css/amazeui.min.css" />
<link rel="stylesheet" href="${path}/admin/css/pageStyle.css">
<script src="${path }/admin/js/jquery.min.js"></script>
</head>
<body>

	<div class="main_top">
		<div class="am-cf am-padding am-padding-bottom-0">
			<div class="am-fl am-cf">
				<strong class="am-text-primary am-text-lg">分类管理</strong><small></small>
			</div>
		</div>
		<hr>
		<div class="am-g">
			<div class="am-u-sm-12 am-u-md-6">
				<div class="am-btn-toolbar">
					<div class="am-btn-group am-btn-group-xs">

						<button id="add" class="am-btn am-btn-default">
							<span class="am-icon-plus"></span> 添加分类
						</button>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="goods_list" id="account_List">
		<ul class="title_ul">
			<li>序号</li>
			<li>分类名称</li>
			<li>修改分类</li>
			<li>删除分类</li>
		</ul>
		<c:forEach items="${allCategory }" var="category"
			varStatus="category_index">
			<ul class="list_goods_ul">
				<li>${category_index.index +1}</li>
				<li>${category.cname }</li>
				<%-- ${path }/CategoryServlet?action=editCategory&id=${category.cid} --%>
				<li><a
					href="${path}/CategoryServlet?action=editCategory&id=${category.cid}" id="edite_c"><img
						class="img_icon" src="${path}/admin/images/edit_icon.png" alt="" ></a></li>
				<li><a
					href="${path }/CategoryServlet?action=delCategory&id=${category.cid}"><img
						class="img_icon" src="${path}/admin/images/delete_icon.png" alt=""></a></li>
			</ul>
		</c:forEach>


	</div>

	<div id="modal_view" class="modal_view_insert"></div>


	<div id="modal_content" class="modal_content_insert">
		<div id="close">
			<img src="${path}/admin/images/delete_icon.png" alt="">
		</div>
		<div class="edit_content">

			<div class="item1">
				<div>
					<span>添加分类：</span>
				</div>
			</div>
			<form action="${path }/CategoryServlet?action=categorys"
				id="category_form" style="background: none" method="post">
				<div class="item1">
					<div>
						<span>分类名称：</span> <input type="text" name="cname"
							class="am-form-field">&nbsp;&nbsp;
					</div>
				</div>
				<div class="item1">
					<button class="am-btn am-btn-default submit_btn" type="button">添加</button>
				</div>
			</form>
		</div>
	</div>

	<div id="modal_view" class="modal_view_edit"></div>
	<div id="modal_content" class="modal_content_edit">
		<div id="close" class="close">
			<img src="${path}/admin/images/delete_icon.png" alt="">
		</div>
		<div class="edit_content">

			<div class="item1">
				<div>
					<span>编辑分类：</span>
				</div>
			</div>
			<form action="" id="category_edit" style="background: none" method="post">
				<div class="item1">
					<div>
						<span>更改名称：</span> <input type="text" name="cname"
							class="am-form-field">&nbsp;&nbsp;
					</div>
				</div>
				<div class="item1">
					<button class="am-btn am-btn-default edit_btn" type="button">编辑</button>
				</div>
			</form>
		</div>
	</div>

	<script>
		$(function() {
			$('#add').click(function() {
				$(".modal_view_insert").fadeIn();
				$(".modal_content_insert").fadeIn();
			});
			
			/* 记录地址 */
			var path = "";
			$('#edite_c').click(function() {
				$(".modal_view_edit").fadeIn();
				$(".modal_content_edit").fadeIn();
				path = $(this).attr("href");
				return false;
			});
			
			$(".edit_btn").click(function() {
				$("#category_edit").attr("action",path);
				$("#category_edit").submit();
			});

			
			
			$("#close").click(function() {
				$(".modal_view_insert").fadeOut();
				$(".modal_content_insert").fadeOut();
				
			
			});
			
			
			$(".close").click(function() {
				$(".modal_view_edit").fadeOut();
				$(".modal_content_edit").fadeOut();
			});
			
			
			
			$(".submit_btn").click(function() {
				$("#category_form").submit();
			});

		});
	</script>
</body>
</html>