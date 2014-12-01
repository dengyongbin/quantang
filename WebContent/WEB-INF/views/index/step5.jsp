<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>开户流程 | 全唐贵金属</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="keywords" content="贵金属,全唐贵金属,钯金、铂金、镍投资,贵金属投资,投资理财"/>
<meta content="我们强调“尊重客户，礼待客户”，让客户满意是服务的根本原则。全唐贵金属的每一位客户、每一份开户合约、每一个咨询电话，都将是规范、专业和客户利益至上原则的体现。 在对待客户的方式上，“客户就是上帝”，以客户为导向，不断满足客户的需求并持续超越客户的期望，是我们全唐人一致的追求。" name="description">

<!-- CSS Styles  -->
<link href="${base}/index/css/bootstrap.css" rel="stylesheet">
<link href="${base}/index/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${base}/index/css/font-awesome.min.css" rel="stylesheet">
<link href="${base}/index/css/style.css" rel="stylesheet">
<!-- <link href="${base}/index/css/colors.css" rel="stylesheet"> -->

<script src="${base}/index/js/jquery.min.js"></script>
<script  type="text/javascript">
$(document).ready(function(){
	$('#checked').bind('click',function(){
		var check=$(this).attr('checked');
		if(check=='checked'){
			$('#before').hide();
			$('#after').show();
		}
		else{
			$('#after').hide();
			$('#before').show();
		}
	});
});
</script>
<!-- [if lt IE9]> --> 
<script> 
   (function() {
     if (! 
     /*@cc_on!@*/
     0) return;
     var e = "abbr, article, aside, audio, canvas, datalist, details, dialog, eventsource, figure, footer, header, hgroup, mark, menu, meter, nav, output, progress, section, time, video".split(', ');
     var i= e.length;
     while (i--){
         document.createElement(e[i])
     } 
})();
</script>
<!--  <![endif]--> 

</head>

<body style="overflow-x : hidden; ">
<form name="name1"  action="step6.htm"  method="post">
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
					<div class="tab-content" >
						<div id="tab5" class="tab-pane active" >
						<h3>第五步：开户成功</h3>
							<p  style="color:#fe2f2f; font-weight:bold; font-size:14px; line-height:36px;">
							<img  src="${base}/index/images/icon_check.png"  style="width:41px; height:30px; padding-right:15px;" >银行卡验证成功<br>
							您已完成银行卡验证，请通过您选择的第三方存管银行柜台或银行网银办理签约。
							</p>
							<p>
							您已成功获得实盘账号：<br>
							<span style="color:#906f00; font-weight:bold;">${accountsId}</span><br>
							<span style="color:#000;">交易客户端下载地址：</span><a href="http://www.tanggold.com/download/jyd.exe" style="color:#906f00;">http://www.tanggold.com/download/jyd.exe</a> 
							</p>
							<a href="step6.htm?v=1&protocolid=${protocolid}" class="reser_left_next"></a>
						</div>
					</div>	
				</div>
				<div class ="span4 ">
					<div class="reser_right">
						<h2>实盘开户流程</h2>
						<div class="reser_right_content">
							<ul>
								<li class="bg">第一步：风险揭示书</li>
								<li class="bg">第二步：客户协议书</li>
								<li class="bg">第三步：权责告知函</li>
								<li class="bg">第四步：填写开户信息和银行信息</li>
								<li class="bg  active">第五步：开户成功</li>
								<li class="bg">第六步：网银签约</li>
							</ul>
						</div>
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
	<script type="text/javascript" src="${base}/index/js/respond.js"></script>
	<script type="text/javascript"  src="${base}/index/js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="${base}/index/js/jquery.placeholder.js"></script>
	<script type="text/javascript"  src="${base}/index/js/custom.js"></script>
	<script type="text/javascript"  src="${base}/index/js/common.js"></script>
</form>	
</body>
</html>