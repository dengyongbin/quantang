<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="open_rever">
		<!-- <form name="editerform" id="editerform" class="row-fluid" action="#" method="post" novalidate="novalidate"> -->
		<div class="row-fluid" style="position:relative;  top:20px;">
				<div class="selec_sex" style="position:relative;  padding-bottom:6px;">
					<span style="font-size:16px; position:absolute; top:-15px;">您的姓名</span><input name="name" id="name" size="22" tabindex="1" aria-required="true" class="span5  btn_small_frame" style="width:137px; position:absolute; left:80px; top:-25px;" type="text"><span for="name" generated="true" class="help-inline" style="display: none;"></span>
					<div class="select_box"  style="position:absolute; left:222px; top:-20px;">
						<input id="myselect" type="text" value="先生" readonly="readonly" class="btn_small_frames">
				    	<ul class="select_ul">
							<li value="1" onclick="javascript:$('#sex').val($(this).val())">先生</li>
							<li value="2" onclick="javascript:$('#sex').val($(this).val())">女士</li>
						</ul>
						<b style="color: red; position:absolute; left:82px; top:10px; font-size:14px;">&nbsp;*</b>
						<input id="sex" name="sex" type="hidden" value="1"/>
					</div>
				</div>
				<div class="selec_sex" style="position:relative; height:38px;">	
				   		<span style=" position:absolute; top:20px; font-size:16px;">您的年龄</span>
					   <div class="select_box1"  style="position:absolute; left:80px; top:16px;">
							<input id="myselect1" type="text" value="20~40岁" readonly="readonly" class="btn_frame1">
					    	<ul class="select_ul1">
								<li value="1" onclick="javascript:$('#age').val($(this).val())">20~40岁</li>
								<li value="2" onclick="javascript:$('#age').val($(this).val())">40~60岁</li>
								<li value="3" onclick="javascript:$('#age').val($(this).val())">大于60岁</li>
							</ul>
						</div>
						<input id="age" name="age" type="hidden" value="1"/>
			</div><br> <span style="padding-right: 16px; font-size:16px;">手机号码</span><input name="phone" id="phone" size="22" tabindex="1" aria-required="true" class="span8 btn_frame" type="text" style=" border:none; outline:none; width:223px; height:32px;"><b style="color: red;">&nbsp;*</b><span
				for="phone" generated="true" style="display: none;"></span><br>
			<span style="padding-right: 16px; font-size:16px;">您的邮箱</span><input name="email" id="email" size="22" tabindex="2" class="span8 btn_frame" aria-required="true" type="text" style=" border:none; outline:none; width:223px; height:32px;">
			<div class="clearfix" style="position:relative; width:346px; height:79px;">
				<button class=" btnx-form btn-large " type="button" onclick="submit()" style="position:absolute; -left:0;">提交</button>
				<img src="${base}/index/images/clock.gif" style="position:absolute; right:6px; bottom:8px;">
			</div>
		</div>
		<!-- </form> -->
	</div>
	<!-- .clearfix -->
	<div class="info-box widget search-form right_bar_server" >
		<div class="server_title">
			<img  src="${base}/index/images/sever_title.png">
		</div>
		<div class="-clearfix  server_article" >
				<p> 我们强调“尊重客户，礼待客户”，让客户满意是服务的根本原则。在对待客户的方式上，“客户就是上帝”，以客户为导向，不断满足客户的需求并持续超越客户的期望，是我们全唐人一致的追求。</p>
		</div>
		<!-- .clearfix -->
	</div>
</body>
</html>
