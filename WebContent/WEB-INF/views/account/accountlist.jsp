<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" href="${base}/admin/css/select2.css">
<link rel="stylesheet" href="${base}/admin/css/uniform.css">
<link rel="stylesheet"
	href="${base}/admin/css/bootstrap-datetimepicker.css">
<script src="${base}/admin/js/jquery.min.js"></script>
<script src="${base}/admin/js/jquery.ui.custom.js"></script>
<script src="${base}/admin/js/bootstrap.min.js"></script>
<script src="${base}/admin/js/jquery.uniform.js"></script>
<script src="${base}/admin/js/select2.min.js"></script>
<script src="${base}/admin/js/jquery.dataTables.min.js"></script>
<script src="${base}/admin/js/unicorn.js"></script>
<script src="${base}/admin/js/unicorn.tables.js"></script>
<script type="text/javascript"
	src="${base}/admin/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<title>誉高后台Admin</title>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('#datetimepicker').datetimepicker({
					format : 'yyyy-mm-dd'
				});
				$('#datetimepicker1').datetimepicker({
					format : 'yyyy-mm-dd'
				});
				var styles = new Array("alert alert-block",
						"alert alert-success alert-block",
						"alert alert-info alert-block",
						"alert alert-error alert-block");
				$(".alert-block").each(
						function(i) {
							$(this).attr(
									"class",
									styles[parseInt(Math.random()
											* styles.length + 1)]);
						});
			});
</script>
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
			<li class="active"><a href="accountidx.htm"><i
					class="icon icon-th-large"></i> <span>预约开户</span></a></li>
			<li><a href="opinionidx.htm"><i class="icon icon-th"></i> <span>反馈建议</span></a></li>
			<li><a href="messageidx.htm"><i class="icon icon-th-list"></i>
					<span>在线留言</span></a></li>
			<li><a href="channelidx.htm"><i class="icon icon-ok"></i> <span>渠道合作</span></a></li>
			<li><a href="analyseidx.htm"><i class="icon icon-user"></i>
					<span>分析师管理</span></a></li>
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
			<h1>预约开户</h1>
		</div>
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">预约开户</a>
		</div>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<div class="widget-box">
						<div class="widget-title">
							<span class="icon"> <i class="icon-th-large"></i>
							</span>
							<h5>预约开户</h5>
						</div>
						<c:forEach items="${accountList}" var="map" varStatus="status">
							<c:if test="${status.count % 6 == 1}">
								<div class="widget-content" style="display: flex;">
							</c:if>
							<div class="alert alert-block" style="width: 200px; float: left;">
								<a class="close" data-dismiss="alert" href="#">×</a> <strong>姓名：</strong>${map.name}<br>
								<strong>性别：</strong>
								<c:choose>
									<c:when test="${map.sex == 1}">男士</c:when>
									<c:when test="${map.sex == 2}">女士</c:when>
								</c:choose>
								<br> <strong>年龄：</strong>
								<c:choose>
									<c:when test="${map.age == 1}">20~40岁</c:when>
									<c:when test="${map.age == 2}">40~60岁</c:when>
									<c:when test="${map.age == 3}">大于60岁</c:when>
								</c:choose>
								<br> <strong>电话：</strong>${map.phone}<br> <strong>邮箱：</strong>${map.email}<br>
								<strong>日期：</strong>${map.ask_time}
							</div>
							<span>&nbsp;&nbsp;&nbsp;</span>
							<c:if test="${status.count % 6 == 0}">
					</div>
					</c:if>
					</c:forEach>
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
	</div>
</body>
</html>