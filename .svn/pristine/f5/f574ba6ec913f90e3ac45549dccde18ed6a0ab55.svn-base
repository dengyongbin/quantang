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
<script src="${base}/admin/js/jquery.validate.js"></script>
<script src="${base}/admin/js/bootstrap.min.js"></script>
<script src="${base}/admin/js/select2.min.js"></script>
<script src="${base}/admin/js/unicorn.js"></script>
<script src="${base}/admin/js/unicorn.tables.js"></script>
<script type="text/javascript"
	src="${base}/admin/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script src="${base}/admin/js/jquery.uniform.js"></script>
<script src="${base}/admin/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#datetimepicker').datetimepicker({
			format : 'yyyy-mm-dd'
		});
		$('#datetimepicker1').datetimepicker({
			format : 'yyyy-mm-dd'
		});
		$("#delbt").click(function() {
			var noticeids = '';
			var delct = 0;
			$(".checked").each(function(i) {
				if($(this).attr("checked")){
				var tmpid = $($(this).parents("tr")).find("#noticeid").val();
				if (noticeids != '') {
					noticeids += ',';
				}
				if (typeof (tmpid) != 'undefined') {
					noticeids += tmpid;
					delct++;
				}
				}
			});
			if (delct < 1) {
				alert("请选择要删除行");
			} else {
				location.href = "noticeDelete.htm?ids=" + noticeids;
			}
		});
	});

	function push(id) {
		location.href = "pushNotice.htm?id=" + id;
	}
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
			<li><a href="accountidx.htm"><i class="icon icon-th-large"></i>
					<span>预约开户</span></a></li>
			<li><a href="opinionidx.htm"><i class="icon icon-th"></i> <span>反馈建议</span></a></li>
			<li><a href="messageidx.htm"><i class="icon icon-th-list"></i>
					<span>在线留言</span></a></li>
			<li><a href="channelidx.htm"><i class="icon icon-ok"></i> <span>渠道合作</span></a></li>
			<li><a href="analyseidx.htm"><i class="icon icon-user"></i>
					<span>分析师管理</span></a></li>
			<li class="active"><a href="noticeidx.htm"><i
					class="icon-volume-up"></i> <span>公告管理</span></a></li>
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
			<h1>资讯管理</h1>
		</div>
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">文章列表</a>
		</div>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<div class="widget-box">
						<div class="widget-title">
							<span class="icon"> <i class="icon-eye-open"></i>
							</span>
							<h5>文档列表</h5>
							<div style="float: left; padding-top: 6px; padding-right: 20px">
								<button type="button" class="btn btn-success btn-mini"
									onclick='location.href="addnotice.htm"'>新增</button>
								<button type="button" id="delbt"
									class="btn btn-success btn-mini">刪除</button>
							</div>

						</div>
						<div class="widget-content nopadding">
							<div id="DataTables_Table_0_wrapper" class="dataTables_wrapper"
								role="grid">
								<table class="table table-bordered data-table dataTable"
									id="DataTables_Table_0">
									<thead>
										<tr>
											<th>
												<!-- <div class="checker"
													id="uniform-title-table-checkbox">
													<span><input type="checkbox"
														id="title-table-checkbox" name="title-table-checkbox"
														style="opacity: 0;"></span>
												</div> -->
											</th>
											<th>序号</th>
											<th>标题</th>
											<th>发布时间</th>
											<th>公告状态</th>
											<th>静态页面</th>
											<th>发布</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${noticeList}" var="map" varStatus="status">
											<tr class="gradeX">
												<td style="text-align: center;"><input type="checkbox"
													class="checked"></td>
												<td style="text-align: center;">${status.count}</td>
												<td><a
													href='<c:url value="/notice.htm?id=${map.noticeid}"/>'>${map.title}</a>
													<input type="hidden" name="noticeid" id="noticeid"
													value="${map.noticeid}" /></td>
												<td>${map.crdate}</td>
												<td><c:if test="${map.static_page!=''}">
														<a href="${base}${map.static_page}">${map.static_page}</a>
													</c:if></td>
												<td><c:if test="${map.status=='0'}">
											草稿
										</c:if> <c:if test="${map.status=='1'}">
											已发布
										</c:if></td>
												<td style="text-align: center;"><c:if
														test="${map.status=='0'}">
														<button class="btn btn-warning btn-mini" name="pubbt"
															onclick="push(${map.noticeid})">发布</button>
													</c:if></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
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