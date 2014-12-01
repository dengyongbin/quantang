<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>开户流程 | 全唐贵金属</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="keywords" content="贵金属,全唐贵金属,钯金、铂金、镍投资,贵金属投资,投资理财" />
<meta
	content="我们强调“尊重客户，礼待客户”，让客户满意是服务的根本原则。全唐贵金属的每一位客户、每一份开户合约、每一个咨询电话，都将是规范、专业和客户利益至上原则的体现。 在对待客户的方式上，“客户就是上帝”，以客户为导向，不断满足客户的需求并持续超越客户的期望，是我们全唐人一致的追求。"
	name="description">

<!-- CSS Styles  -->
<link href="${base}/index/css/bootstrap.css" rel="stylesheet">
<link href="${base}/index/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${base}/index/css/font-awesome.min.css" rel="stylesheet">
<!-- <link href="${base}/index/css/colors.css" rel="stylesheet">-->
<link href="${base}/index/css/style.css" rel="stylesheet">
<link href="${base}/index/css/city.css" rel="stylesheet">

<script src="${base}/index/js/jquery.min.js"></script>
<%-- <script src="${base}/index/js/address.js"></script> --%>
<script type="text/javascript">
$(document)
.ready(
		function() {
			$('#checked').bind('click', function() {
				var check = $(this).attr('checked');
				if (check == 'checked') {
					$('#before').hide();
					$('#after').show();
				} else {
					$('#after').hide();
					$('#before').show();
				}
			});
			$("#name").blur(
					function() {
						var name_reg = /^[\u0391-\uFFE5]{2,6}$/;
						if ($(this).val() != ''
								&& !name_reg.test($(this).val())) {
							alert('请输入有效的姓名！');
							$(this).focus();
							return;
						}
					});
			$("#id")
					.blur(
							function() {
								var id_reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
								if ($(this).val() != ''
										&& !id_reg.test($(this)
												.val())) {
									alert("身份证输入不合法");
									$(this).focus();
									return false;
								}
							});
			$("#phone")
					.blur(
							function() {
								var phone_reg = /^(13[0-9]|15[0-9]|18[0-9])\d{8}$/;
								if ($(this).val() != ''
										&& !phone_reg.test($(this)
												.val())) { //手机框输入的值符合要求，才可以提交
									alert('请输入有效的手机号码！');
									$(this).focus();
									return;
								}
							});
			$("#mail")
					.blur(
							function() {
								var mail_reg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
								if ($(this).val() != ''
										&& !mail_reg.test($(this)
												.val())) {
									alert('请输入有效的E_mail！');
									$(this).focus();
									return;
								}
							});
			$("#tradePwd1").blur(function() {
				var pwd = $("#tradePwd");
				var pwd1 = $("#tradePwd1");
				if (pwd1.val() != '' && pwd.val() != pwd1.val()) {
					alert('两次输入密码不一致，请重新输入');
					pwd1.focus();
				}
			});
			$("#phonePwd1").blur(function() {
				var pwd = $("#phonePwd");
				var pwd1 = $("#phonePwd1");
				if (pwd1.val() != '' && pwd.val() != pwd1.val()) {
					alert('两次输入密码不一致，请重新输入');
					pwd1.focus();
				}
			});
			$("#bankno")
					.blur(
							function() {
								var bankno_reg = /[0-9]{16,19}$/;
								if ($(this).val() != ''
										&& !bankno_reg.test($(this)
												.val())) {
									alert('银行卡号格式不正确，请重新输入！');
									$(this).focus();
									return;
								}
							});
			$('#tradePwd').blur(
					function() {
						var pwd_reg = /^[a-z0-9A-Z]{6,16}$/;
						if ($(this).val() != ''
								&& !pwd_reg.test($(this).val())) {
							alert('密码格式有误，请重新输入');
							$(this).focus();
							return;
						}
					});
			$('#phonePwd').blur(
					function() {
						var pwd_reg = /^[0-9]{6,16}$/;
						if ($(this).val() != ''
								&& !pwd_reg.test($(this).val())) {
							alert('密码格式有误，请重新输入');
							$(this).focus();
							return;
						}
					});
			$("#fixedLine,#fax")
					.blur(
							function() {
								var fixedLine_reg = /^((0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/;
								if ($(this).val() != ''
										&& !fixedLine_reg.test($(
												this).val())) {
									alert('格式不正确，请重新输入！');
									$(this).focus();
									return;
								}
							});
		});

	function submit() {
		if ($("#name").val() == '') {
			alert("客户姓名不能为空！");
			return;
		}
		if ($("#idType").val() == '') {
			alert("证件类型不能为空");
			return;
		}
		if ($("#id").val() == '') {
			alert("证件号码不能为空！");
			return;	
		}
		if ($("#gender").val() == '') {
			alert("性别不能为空！");
			return;
		}
		if ($("#cmbProvince").val() == '请选择省份') {
			alert("请选择所在省份！");
			return;	
		}
		if ($("#cmbCity").val() == '请选择城市') {
			alert("请选择所在城市");
			return;
		}
		if ($("#cmbArea").val() == '请选择地区') {
			alert("请选择所在地区");
			return;
		}
		if ($("#phone").val() == '') {
			alert("手机号码不能为空");
			return;
		}
		if ($("#tradePwd1").val() == '') {
			alert("交易密码不能为空");
			return;
		}
		if ($("#phonePwd1").val() == '') {
			alert("电话密码不能为空");
			return;
		}
		if ($("#bank").val() == '') {
			alert("请选择开户行");
			return;
		}
		if ($("#bankno").val() == '') {
			alert("银行卡号不能为空");
			return;
		}
		if ($("#address").val() == '') {
			alert("通讯地址不能为空");
			return;
		}
		$("#formstep5").submit();
	}
</script>
<!-- [if lt IE9]> -->
<script>
	(function() {
		if (!
		/*@cc_on!@*/
		0)
			return;
		var e = "abbr, article, aside, audio, canvas, datalist, details, dialog, eventsource, figure, footer, header, hgroup, mark, menu, meter, nav, output, progress, section, time, video"
				.split(', ');
		var i = e.length;
		while (i--) {
			document.createElement(e[i])
		}
	})();
</script>
<!--  <![endif]-->
</head>
<body style="overflow-x: hidden;">

	<!-- begin header -->
	<header>
		<%@include file="header.jsp"%>
	</header>
	<!-- end header -->
	<div class="container page-content">
		<div class="row">
			<div class="span8">
				<div class="reser_left">
					<h2>实盘开户正规平台 资金三方存管安全可靠</h2>
					<div class="tab-content">
						<form id="formstep5" name="formstep5"
							action="step5.htm?v=1&protocolid=${protocolid}" method="post">
							<div id="tab4" class="tab-pane active">
								<h3>第四步：填写开户信息和银行信息</h3>
								<p style="color: #fe2f2f; font-weight: bold; font-size: 14px;">请您填写真实、有效的个人信息，您所填写的信息将影响到您实盘账号的申请</p>
								<div class="reser_left_fill">
									<em><i>*</i>&nbsp;客户姓名：</em>${protocolName}<input type="hidden" name="name" value="${protocolName}">
								</div>
								<div class="reser_left_fill  select_style">
									<em><i>*</i>&nbsp;证件类型：</em> <input type="text" class="select0"
										id="select0" value="请选择" readonly="readonly"
										style="cursor: pointer;">
									<ul class="select0_id">
										<li value="2"
											onclick="javascript:$('#idType').val($(this).val())">居民身份证</li>
									</ul>
									<input type="hidden" id="idType" name="idType" value="">
								</div>
								<div class="reser_left_fill">
									<em><i>*</i>&nbsp;证件号码：</em><input id="id" name="id"
										type="text" value="${id}">
								</div>
								<div class="reser_left_fill  select_style">
									<em><i>*</i>&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</em>
									<input type="text" class="select0" id="sex" value="请选择"
										readonly="readonly" style="cursor: pointer;">
									<ul class="select_sex" style="display: none;">
										<li value="0"
											onclick="javascript:$('#gender').val($(this).val())">男</li>
										<li value="1"
											onclick="javascript:$('#gender').val($(this).val())">女</li>
									</ul>
									<input type="hidden" id="gender" name="gender" value="">
								</div>
								<div class="infolist" style="position: relative;">
								
									<span style="position: absolute;left: 30px;top: 10px;"> <em style="font-style: normal;"><i style="color: red;">*</i>所在地区：</em></span>
									<div style="position: absolute;left: 105px;top: 5px;" class="liststyle" style="padding-top: 7px;">
										<span id="Province"> <i>请选择省份</i>
											<ul style="height: 300px; overflow: auto;">
												<li><a href="javascript:void(0)" alt="请选择省份">请选择省份</a></li>
											</ul> <input type="hidden" id="cmbProvince" name="cmbProvince"
											value="">
										</span> <span id="City"> <i>请选择城市</i>
											<ul>
												<li><a href="javascript:void(0)" alt="请选择城市">请选择城市</a></li>
											</ul> <input type="hidden" id="cmbCity" name="cmbCity" value="">
										</span> <span id="Area"> <i>请选择地区</i>
											<ul style="height: 260px; overflow: auto;">
												<li><a href="javascript:void(0)" alt="请选择地区">请选择地区</a></li>
											</ul> <input type="hidden" id="cmbArea" name="cmbArea" value="">
										</span>
									</div>
								</div>
								<div class="reser_left_fill">
									<em><i>*</i>&nbsp;手机号码：</em><input id="phone" name="phone"
										type="text" value="${phone}">
								</div>
								<div class="reser_left_fill">
									<em><i>*</i>&nbsp;交易密码：</em><input id="tradePwd"
										name="tradePwd" type="password"><span
										style="padding-left: 30px; color: #00d11e;">由数字或字母组成,长度6-16位</span>
								</div>
								<div class="reser_left_fill">
									<em><i>*</i>&nbsp;交易密码确认：</em><input id="tradePwd1"
										name="tradePwd1" type="password">
								</div>
								<div class="reser_left_fill">
									<em><i>*</i>&nbsp;电话密码：</em><input id="phonePwd"
										name="phonePwd" type="password">
								</div>
								<div class="reser_left_fill">
									<em><i>*</i>&nbsp;电话密码确认：</em><input id="phonePwd1"
										name="phonePwd1" type="password"><span
										style="padding-left: 30px; color: #00d11e;">由数字组成,长度6-16位</span>
								</div>
								<div class="reser_left_fill select_style">
									<em><i>*</i>&nbsp;银&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;行：</em>
									<input type="text" class="select0" id="banks" value="请选择"
										readonly="readonly" style="cursor: pointer;">
									<ul class="select0_id1">
										<li value="001" onclick="javascript:$('#bank').val('001')">工商银行</li>
										<li value="013" onclick="javascript:$('#bank').val('013')">建设银行</li>
									</ul>
									<input type="hidden" id="bank" name="bank" value="">
								</div>
								<div class="reser_left_fill">
									<em><i>*</i>&nbsp;银行卡号：</em><input id="bankno" name="bankno"
										type="text" value="${bankno}">
								</div>
								<div class="reser_left_fill">
									<em>&nbsp;&nbsp;固定电话：</em><input id="fixedLine"
										name="fixedLine" type="text" value="${fixedLine}">
								</div>
								<div class="reser_left_fill">
									<!-- <i>*</i> -->
									&nbsp;&nbsp;<em>传&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;真：</em><input
										id="fax" name="fax" type="text" value="${fax}">
								</div>
								<div class="reser_left_fill">
									&nbsp;&nbsp;<em>联系邮箱：</em><input id="mail" name="mail"
										type="text" value="${mail}">
								</div>
								<div class="reser_left_fill" style="padding-bottom: 63px;">
									<em><i>*</i>&nbsp;通讯地址：</em><input id="address" name="address"
										type="text" value="${address}">
								</div>
								<div class="back_submit">
									<span id="error1"
										style="float: left; color: red; font-size: 16px;">${message1}</span><br>
									<span id="error2"
										style="float: left; color: red; font-size: 16px;">${message2}</span>
									<a href="step3.htm?v=-1" class="back_submit_a"></a>
									<!-- <a id="before" class="hover" ></a>-->
									<a id="-after" onclick="submit();" href="javascript:void(0)"
										class="hover1" style="display: inline-block; margin-top: 3px;">提交信息</a>
								</div>
							</div>
						</form>
					</div>
				</div>

			</div>
			<div class="span4 ">
				<div class="reser_right">
					<h2>实盘开户流程</h2>
					<div class="reser_right_content">
						<ul>
							<li class="bg">第一步：风险揭示书</li>
							<li class="bg">第二步：客户协议书</li>
							<li class="bg">第三步：权责告知函</li>
							<li class="bg  active">第四步：填写开户信息和银行信息</li>
							<li class="bg">第五步：开户成功</li>
							<li class="bg">第六步：网银签约</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- begin footer -->
	<footer>
		<%@include file="footer.jsp"%>
	</footer>
	<!-- end footer -->
	<script src="${base}/index/js/respond.js"></script>
	<script src="${base}/index/js/bootstrap.min.js"></script>
	<script src="${base}/index/js/jquery.placeholder.js"></script>
	<script src="${base}/index/js/custom.js"></script>
	<script src="${base}/index/js/common.js"></script>
	<script src="${base}/index/js/city.min.js"></script>
	<script src="${base}/index/js/jquery.cityselect.js"></script>
	<script type="text/javascript">
		$(function() { //调用插件
			$.fn.citySelect();
		});
		imitate_select("#select0", ".select0_id");
		imitate_select("#banks", ".select0_id1");
		imitate_select("#sex", ".select_sex");

		function imitate_select(obj, obj1) {
			$(obj).click(function() {
				var thisinput = $(this);
				var oUl = $(obj1);
				if (oUl.css("display") == "none") {
					oUl.fadeIn('100');
					oUl.hover(function() {
					}, function() {
						oUl.fadeOut("100");
					})
					oUl.find("li").click(function() {
						thisinput.val($(this).text());
						oUl.fadeOut("100");
					}).hover(function() {
						$(this).addClass("hover");
					}, function() {
						$(this).removeClass("hover");
					});
				} else {
					oUl.fadeOut("fast");
				}
			});
		}
	</script>
</body>
</html>