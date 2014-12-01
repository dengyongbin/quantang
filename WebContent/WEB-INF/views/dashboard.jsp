<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/css/bootstrap-responsive.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/css/fullcalendar.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/css/unicorn.main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/css/unicorn.grey.css"
	class="skin-color" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/css/select2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/css/uniform.css">
<script src="${pageContext.request.contextPath}/admin/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/admin/js/jquery.ui.custom.js"></script>
<script
	src="${pageContext.request.contextPath}/admin/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/admin/js/jquery.uniform.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/unicorn.js"></script>

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
			<li class="active"><a href="dashboard.htm"><i
					class="icon icon-home"></i> <span>控制面板</span></a></li>
			<li><a href="articleidx.htm"><i class="icon icon-eye-open"></i>
					<span>资讯管理</span></a></li>
			<li><a href="accountidx.htm"><i class="icon icon-th-large"></i>
					<span>预约开户</span></a></li>
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
			<h1>控制面板</h1>
		</div>
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> 主页</a> <a href="#" class="current">控制面板</a>
		</div>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12 center" style="text-align: center;">
					<ul class="stat-boxes">
						<li>
							<div class="left peity_bar_good">
								<span>2,4,9,7,12,10,12</span>+20%
							</div>
							<div class="right">
								<strong>36094</strong> Visits
							</div>
						</li>
						<li>
							<div class="left peity_bar_neutral">
								<span>20,15,18,14,10,9,9,9</span>0%
							</div>
							<div class="right">
								<strong>1433</strong> Users
							</div>
						</li>
						<li>
							<div class="left peity_bar_bad">
								<span>3,5,9,7,12,20,10</span>-50%
							</div>
							<div class="right">
								<strong>8650</strong> Orders
							</div>
						</li>
						<li>
							<div class="left peity_line_good">
								<span>12,6,9,23,14,10,17</span>+70%
							</div>
							<div class="right">
								<strong>8650</strong> Orders
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="widget-box widget-calendar">
						<div class="widget-title">
							<span class="icon"><i class="icon-calendar"></i></span>
							<h5>Calendar</h5>
						</div>
						<div class="widget-content nopadding">
							<div class="calendar"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div id="footer" class="span12">
					2014 &copy; 誉高 Admin. Brought to you by <a href="">www.yugao.com</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>