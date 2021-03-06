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
<link rel="stylesheet"
	href="${base}/admin/css/bootstrap-datetimepicker.css" />
<link rel="stylesheet"
	href="${base}/admin/editor/themes/default/default.css" />
<link rel="stylesheet"
	href="${base}/admin/editor/plugins/code/prettify.css" />
<script src="${base}/admin/js/jquery.min.js"></script>
<script charset="utf-8" src="${base}/admin/editor/kindeditor.js"></script>
<script charset="utf-8" src="${base}/admin/editor/lang/zh_CN.js"></script>
<script charset="utf-8"
	src="${base}/admin/editor/plugins/code/prettify.js"></script>
<script type="text/javascript"
	src="${base}/admin/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>

<style type="text/css">
#contents {
	background: none repeat scroll 0 0 #eeeeee;
	margin-left: 220px;
	margin-right: 0;
	padding-bottom: 25px;
	position: relative;
	min-height: 500px;
	width: auto;
	border-top-left-radius: 8px;
}
</style>
<script>
	KindEditor
			.ready(function(K) {
				var editor1 = K
						.create(
								'textarea[name="content"]',
								{
									cssPath : '${base}/admin/editor/plugins/code/prettify.css',
									uploadJson : 'file_upload.htm',
									fileManagerJson : 'file_manager.htm',
									allowFileManager : true,
									afterCreate : function() {
										var self = this;
										K.ctrl(document, 13, function() {
											self.sync();
											document.forms['editerform']
													.submit();
										});
										K.ctrl(self.edit.doc, 13, function() {
											self.sync();
											document.forms['editerform']
													.submit();
										});
									},
									afterChange : function() {
										$('.word_count1').html(this.count()); //字数统计包含HTML代码
										$('.word_count2').html(
												this.count('text')); //字数统计包含纯文本、IMG、EMBED，不包含换行符，IMG和EMBED算一个文字
										//////////
										//限制字数
										var limitNum = 19500; //设定限制字数
										var pattern = "";
										if (this.count() > limitNum) {
											pattern = ('<font style="color: red;">字数超过限制，请适当删除部分内容</font>');
										} else {
											pattern = '还可输入'
													+ (limitNum - this.count())
													+ '个文字';
										}
										$("#wordcount").val(this.count());
										$('.word_surplus').html(pattern); //输入显示
									}
								});
				prettyPrint();
			});
	$(document).ready(function() {
		$('#datetimepicker').datetimepicker({
			format : 'yyyy-mm-dd hh:ii:ss',
			language : 'zh-CN',
			todayBtn : true,
			forceParse : true,
			autoclose : true
		//minView : "month" //选择日期后，不会再跳转去选择时分秒 
		});
		$("#editerform").validate({
			rules : {
				title : {
					required : true
				},
				timing : {
					required : true,
					date : true
				}
			},
			errorClass : "help-inline",
			errorElement : "span",
			highlight : function(element, errorClass, validClass) {
				$(element).parents('.control-group').addClass('error');
			},
			unhighlight : function(element, errorClass, validClass) {
				$(element).parents('.control-group').removeClass('error');
			},
			submitHandler:function(form){
				var wc = $("#wordcount");
	            if(wc.val()>19500){
	            	$("#content").parents('.control-group').addClass('error');
	            	return;
	            }
	            form.submit();
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
			<li class="active"><a href="articleidx.htm"><i
					class="icon icon-eye-open"></i> <span>资讯管理</span></a></li>
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

	<div id="contents">
		<div id="content-header">
			<h1>资讯管理</h1>
		</div>
		<div id="breadcrumb">
			<a href="#" title="Go to Home" class="tip-bottom"><i
				class="icon-home"></i> Home</a> <a href="#" class="current">新增文章</a>
		</div>
		<div class="container-fluid">
			<div class="row-fluid">
				<!-- 文章发布开始 -->
				<div class="span12">
					<form name="editerform" id="editerform"
						action='<c:url value="/savearticle.htm"/>' method="post"
						class="form-horizontal" enctype="multipart/form-data">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon"> <i class="icon-eye-open"></i>
								</span>
								<h5>新增文章</h5>
								<!-- <span class="label label-important">48 notices</span> -->
								<div style="float: left; padding-top: 6px; padding-right: 20px">
									<button type="button" class="btn btn-success btn-mini"
										onclick="location.href='articleidx.htm'">返回</button>
									<button id="subbt" type="submit"
										class="btn btn-success btn-mini">提交</button>
								</div>
							</div>
							<div class="widget-content nopadding">

								<div class="control-group">
									<div class="controls">
										<span>文章标题</span> <input type="text" name="title" id="title"
											maxlength="50" value="${title}"> <span for="title"
											generated="true" class="help-inline" style="display: none;"></span>
									</div>
								</div>

								<div class="control-group">
									<div class="controls">
										<span>文章摘要</span> <input type="text" name="summary" id="title"
											maxlength="1000" value="${summary}">
										<!--  <span
											for="title" generated="true" class="help-inline"
											style="display: none;"></span> -->
									</div>
								</div>

								<div class="control-group">
									<div class="controls">
										<span>文章图片</span> <a href="${base}${image}" target="true">${image}</a>
										<input name="image" value="${image}" type="hidden" /> <input
											type="file" name="fileUpload" />
									</div>
								</div>

								<div class="control-group">
									<div class="controls">
										<span>关键字</span>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"
											style="width: 408px" name="keyWord" id="keyWord"
											maxlength="300" value="${keyword}">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>首页推荐</span>
										<select style="width: 160px" name="homeTop">
											<option value="0"
												<c:if test="${home_top == 0}">selected="true"</c:if>>否</option>
											<option value="1"
												<c:if test="${home_top == 1}">selected="true"</c:if>>是</option>
										</select>

									</div>
								</div>
								<div class="control-group">

									<div class="controls">
										<span>来源</span> <input style="width: 150px" type="text"
											name="author" id="author" value="${author}">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>资讯类别</span>

										<select style="width: 160px" name="infomationType"
											id="infomationType">
											<option value="0"
												<c:if test="${infomation_type == 0}">selected="true"</c:if>>行业资讯</option>
											<option value="1"
												<c:if test="${infomation_type == 1}">selected="true"</c:if>>每日评论</option>
											<option value="2"
												<c:if test="${infomation_type == 2}">selected="true"</c:if>>分析研究</option>
										</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>发布时间</span>
										<div class="input-append date" id="datetimepicker">
											<input style="width: 150px" type="text" name="timing"
												id="timing" value="${timing}"> <span class="add-on"><i
												class="icon-th"></i></span>
										</div>
									</div>
								</div>
								<div class="control-group">
									<div class="controls">
									
										<textarea id="content" name="content" rows="8"
											style="width: 80%; height: 400px; visibility: hidden;" >${content}</textarea>
										<input id="wordcount" name="wordcount"
												type="hidden" value="0" >
										<p>
											当前输入 <span class="word_count1">0</span> 个文字<br /> <span
												class="word_surplus"></span>
										</p>
									</div>
								</div>
								<input type="hidden" name="infomationId" id="infomationId"
									value="${infomation_id}">

								<!-- <div class="form-actions">
								<input type ="submit" value="提交" class="btn btn-primary">-->
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
	<%!private String htmlspecialchars(String str) {
		str = str.replaceAll("&", "&amp;");
		str = str.replaceAll("<", "&lt;");
		str = str.replaceAll(">", "&gt;");
		str = str.replaceAll("\"", "&quot;");
		return str;
	}%>
	<script src="${base}/admin/js/jquery.uniform.js"></script>
	<script src="${base}/admin/js/select2.min.js"></script>
	<script src="${base}/admin/js/jquery.validate.js"></script>
	<script src="${base}/admin/js/unicorn.js"></script>
	<script src="${base}/admin/js/unicorn.form_validation.js"></script>
</body>
</html>