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
<%-- <script src="${base}/admin/js/jquery.min.js"></script>
<script src="${base}/admin/js/jquery.uniform.js"></script>
<script src="${base}/admin/js/jquery.validate.js"></script>
<script src="${base}/admin/js/bootstrap.min.js"></script>
<script src="${base}/admin/js/select2.min.js"></script>
<script src="${base}/admin/js/unicorn.js"></script>
<script src="${base}/admin/js/unicorn.tables.js"></script>
<script type="text/javascript"
	src="${base}/admin/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script src="${base}/admin/js/jquery.dataTables.min.js"></script>
<script src="${base}/admin/js/unicorn.form_validation.js"></script> --%>
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
<title>誉高后台Admin</title>
<script type="text/javascript">
	$(document).ready(function() {
		$('#datetimepicker').datetimepicker({
			format : 'yyyy-mm-dd'
		});
		$('#datetimepicker1').datetimepicker({
			format : 'yyyy-mm-dd'
		});
		$("#delbt").click(function() {
			var analyse_id = '';
			var delct = 0;
			$(".checked").each(function(i) {
				if($(this).attr("checked")){
				var tmpid = $($(this).parents("tr")).find("#analyse_id").val();
				if (analyse_id != '') {
					analyse_id += ',';
				}
				if (typeof (tmpid) != 'undefined') {
					analyse_id += tmpid;
					delct++;
				}
				}
			});
			if (delct < 1) {
				alert("请选择要删除行");
			}else{
				location.href="analyseDelete.htm?ids="+analyse_id;
			}
		});
		$("#pubbt").click(function(){
			alert(1);
		});
		$(".btn btn-warning btn-mini").click(function(){
			alert(22);
		});
	});
	function publish(obj){
		var infoid = $(obj).parents("tr").find("#infoid").val();
		location.href="articlePublish.htm?infomationType="+$("#infomationType").val()+"&infomationStatus="
		+$("#infomationStatus").val()+"&timing="+$("#timing").val()+"&timing1="+$("#timing1").val()+"&id="+infoid;
	}
	
	function update(id) {
		location.href = "articleUpdate.htm?id=" + id;
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
				class="icon-home"></i> Home</a> <a href="#" class="current">分析师管理</a>
		</div>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">

					<div class="widget-box">
						<div class="widget-title">
							<span class="icon"> <i class="icon-user"></i>
							</span>
							<h5>分析师列表</h5>
							<div style="float: left; padding-top: 6px; padding-right: 20px">
								<button type="button" class="btn btn-success btn-mini"
									onclick='location.href="analyseNew.htm"'>新增</button>
								<button type="button" id="delbt"
									class="btn btn-success btn-mini">刪除</button>
							</div>
						</div>
						<div class="widget-content nopadding">
							<table class="table table-bordered data-table">
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
										<th>分析师名称</th>
										<th>从业年限</th>
										<th>业务特长</th>
										<!-- <th>简介</th>
										<th>业绩</th> -->
										<th>照片</th>
										<th>QQ</th>
										<th>电话</th>
										<th>修改</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${analyseList}" var="map" varStatus="status">
										<tr class="gradeX">
											<td style="text-align: center;">
												<!-- 	<div class="checker" id="uniform-undefined">
													<span name="checkinfo"> -->
												<input type="checkbox" class="checked">
											<!-- </span>
												</div>  --> <%----%>
											</td>
											<td>${status.count}</td>
											<td>${map.name}<input type="hidden" name="analyse_id"
												id="analyse_id" value="${map.analyse_id}"></td>
											<td>${map.year}</td>
											<td>${map.business}</td>
											<%-- <td>${map.profile}</td> 
											<td>${map.performance}</td>--%>
											<td><a href="${base}${map.photo}" target="true">${map.photo}</a></td>
											<td>${map.qq}</td>
											<td>${map.phone}</td>
											<td style="text-align: center;"><button
													class="btn btn-warning btn-mini" name="uptbt"
													onclick="update(${map.analyse_id})">修改</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
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