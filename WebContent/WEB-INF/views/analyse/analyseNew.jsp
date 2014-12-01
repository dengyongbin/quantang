<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setCharacterEncoding("UTF-8");
	String htmlData = request.getParameter("content") != null ? request
			.getParameter("content") : "";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${base}/admin/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${base}/admin/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${base}/admin/css/fullcalendar.css" />
<link rel="stylesheet" href="${base}/admin/css/unicorn.main.css" />
<link rel="stylesheet" href="${base}/admin/css/unicorn.grey.css"
	class="skin-color" />
<link rel="stylesheet" href="${base}/admin/css/uniform.css"></link>
<link rel="stylesheet"
	href="${base}/admin/editor/themes/default/default.css" />
<link rel="stylesheet"
	href="${base}/admin/editor/plugins/code/prettify.css" />
<script src="${base}/admin/editor/plugins/code/prettify.js"></script>
<script src="${base}/admin/js/jquery.min.js"></script>
<script src="${base}/admin/js/jquery.ui.custom.js"></script>
<script src="${base}/admin/js/bootstrap.min.js"></script>
<script src="${base}/admin/js/bootstrap-colorpicker.js"></script>
<script src="${base}/admin/js/jquery.uniform.js"></script>
<script src="${base}/admin/js/unicorn.js"></script>
<script src="${base}/admin/js/unicorn.form_common.js"></script>
<script src="${base}/admin/js/jquery.validate.js"></script>
<script src="${base}/admin/js/unicorn.form_validation.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#analyseform").validate({
			rules : {
				name : {
					required : true
				},
				year : {
					min : 1
				},
				qq : {
					min : 50000
				},
				phone : {
					number : true
				}
			},
			errorClass : "help-inline",
			errorElement : "span",
			highlight : function(element, errorClass, validClass) {
				$(element).parents('.control-group').addClass('error');
			},
			unhighlight : function(element, errorClass, validClass) {
				$(element).parents('.control-group').removeClass('error1');
				$(element).parents('.control-group').addClass('success');
			}
		});
	});
</script>
<title>誉高后台Admin</title>
</head>
<body>
	<div id="header">
		<h1>
			<a href="">誉高 Admin</a>
		</h1>
	</div>

	<div id="search">
		<input type="text" placeholder="Search here..." />
		<button type="submit" class="tip-right" title="Search">
			<i class="icon-search icon-white"></i>
		</button>
	</div>
	<div id="user-nav" class="navbar navbar-inverse">
		<ul class="nav btn-group">
			<li class="btn btn-inverse"><a title="" href="logout.htm"><i
					class="icon icon-share-alt"></i> <span class="text">注销</span></a></li>
		</ul>
	</div>

	<div id="sidebar">
		<a href="#" class="visible-phone"><i class="icon icon-home"></i>
			控制面板</a>
		<ul>
			<li><a href="dashboard.htm"><i class="icon icon-home"></i> <span>控制面板</span></a></li>
			<li><a href="articleidx.htm"><i class="icon icon-eye-open"></i>
					<span>资讯管理</span></a></li>
			<li><a href="accountidx.htm"><i class="icon icon-th-large"></i>
					<span>预约开户</span></a></li>
			<li><a href="opinionidx.htm"><i class="icon icon-th"></i> <span>反馈建议</span></a></li>
			<li><a href="messageidx.htm"><i class="icon icon-th-list"></i>
					<span>在线留言</span></a></li>
			<li><a href="channelidx.htm"><i class="icon icon-ok"></i> <span>渠道合作</span></a></li>
			<li class="active"><a href="analyseidx.htm"><i
					class="icon icon-user"></i> <span>分析师管理</span></a></li>
			<li><a href="noticeidx.htm"><i class="icon-volume-up"></i> <span>公告管理</span></a></li>
		</ul>
	</div>

	<div id="style-switcher">
		<i class="icon-arrow-left icon-white"></i> <span>Style:</span> <a
			href="#grey"
			style="background-color: #555555; border-color: #aaaaaa;"></a> <a
			href="#blue" style="background-color: #2D2F57;"></a> <a href="#red"
			style="background-color: #673232;"></a>
	</div>

	<div id="content">
		<div id="content-header">
			<h1>分析师管理</h1>
		</div>
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">新增分析师</a>
		</div>
		<div class="container-fluid">
			<div class="row-fluid">
				<!-- 文章发布开始 -->
				<div class="span12">
					<form id="analyseform" name="analyseform"
						action='<c:url value="/analyseSave.htm"/>' method="post"
						class="form-horizontal" enctype="multipart/form-data">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon"> <i class="icon-user"></i>
								</span>
								<h5>新增分析师</h5>
								<div style="float: left; padding-top: 6px; padding-right: 20px">
									<button type="button" class="btn btn-success btn-mini"
										onclick="location.href='analyseidx.htm'">返回</button>
									<button type="submit" class="btn btn-success btn-mini">提交</button>
								</div>
							</div>
							<div class="widget-content nopadding">

								<div class="control-group">
									<label class="control-label">分析师姓名</label>
									<div class="controls">
										<input type="text" name="name" id="name" value="${name}">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">从业年限</label>
									<div class="controls">
										<input type="text" name="year" id="year" value="${year}">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">业务特长</label>
									<div class="controls">
										<input type="text" name="business" value="${business}">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">简介</label>
									<div class="controls">
										<input type="text" name="profile" id="profile"
											value="${profile}">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">业绩</label>
									<div class="controls">
										<input type="text" name="performance" id="performance"
											value="${performance}">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">照片</label>
									<div class="controls">
										<a href="${base}${photo}" target="true">${photo}</a> <input
											name="photo" value="${photo}" type="hidden" /> <input
											type="file" name="fileUpload" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">QQ</label>
									<div class="controls">
										<input type="text" name="qq" id="qq" value="${qq}"> <span
											for="qq" generated="true" class="help-inline"
											style="display: none;"></span>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">电话</label>
									<div class="controls">
										<input type="text" name="phone" id="phone" value="${phone}">
										<span for="phone" generated="true" class="help-inline"
											style="display: none;"></span>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">首页推荐</label>
									<div class="controls">
										<select style="width: 160px" name="homeTop">
											<option value="0"
												<c:if test="${home_top == 0}">selected="true"</c:if>>否</option>
											<option value="1"
												<c:if test="${home_top == 1}">selected="true"</c:if>>是</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">类型</label>
									<div class="controls">
										<select style="width: 160px" name="type" id="type">
											<option value="0"
												<c:if test="${type == 0}">selected="true"</c:if>>技术</option>
											<option value="1"
												<c:if test="${type == 1}">selected="true"</c:if>>售前</option>
											<option value="2"
												<c:if test="${type == 2}">selected="true"</c:if>>售后</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">职位</label>
									<div class="controls">
										<input type="text" name="position" id="position"
											value="${position}"> <span for="position"
											generated="true" class="help-inline" style="display: none;"></span>
									</div>
								</div>
								<input type="hidden" name="analyse_id" id="analyse_id"
									value="${analyse_id}">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 文章发布结束 -->
	<div class="row-fluid">
		<div id="footer" class="span12">
			2014 &copy; 誉高 Admin. Brought to you by <a href="">www.yugao.com</a>
		</div>
	</div>
</body>
</html>