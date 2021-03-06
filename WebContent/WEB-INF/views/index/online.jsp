<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>在线咨询 | 全唐贵金属</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="keywords" content="贵金属,全唐贵金属,钯金、铂金、镍投资,贵金属投资,投资理财"/>
<meta content="我们强调“尊重客户，礼待客户”，让客户满意是服务的根本原则。全唐贵金属的每一位客户、每一份开户合约、每一个咨询电话，都将是规范、专业和客户利益至上原则的体现。 在对待客户的方式上，“客户就是上帝”，以客户为导向，不断满足客户的需求并持续超越客户的期望，是我们全唐人一致的追求。" name="description">


<!-- CSS Styles  -->
<link href="${base}/index/css/bootstrap.css" rel="stylesheet">
<link href="${base}/index/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${base}/index/css/font-awesome.min.css" rel="stylesheet">
<link href="${base}/index/css/colors.css" rel="stylesheet">
<link href="${base}/index/css/style.css" rel="stylesheet">

<script type="text/javascript"  src="${base}/index/js/respond.js"></script>
<script type="text/javascript"  src="${base}/index/js/jquery.min.js"></script>
<script type="text/javascript"  src="${base}/index/js/bootstrap.min.js"></script>
<script type="text/javascript"  src="${base}/index/js/jquery.placeholder.js"></script>
<script type="text/javascript"  src="${base}/index/js/custom.js"></script>
<script type="text/javascript"  src="${base}/index/js/common.js"></script>
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
})() 
</script>
<!--  <![endif]--> 
</head>
<body id="red">

	<!-- begin header -->
	<header>
		<%@include file="header.jsp"%>
	</header>

	<!-- end header -->
	<div class="container page-content">
		<div class="row">
			<div class="span8">
				<div class="row">
					<c:forEach items="${analyselt1}" var="map" varStatus="status"
						begin="0" end="5">
						<div class="span8 box-container">
							<div class="agent row">
								<span class="span2 overlay"> <img alt="image"
									class="media-object" style="width: 170px; height: 170px"
									src="<%-- ${base}${map.photo} --%>${base}/index/images/nv.jpg"
									onmousemove="msover();"> <a target=blank
									href="tencent://message/?uin=
													${map.qq}&Site=qq&Menu=yes"
									class="consult" style="color: #fff;"><strong>点击资讯</strong></a>
								</span>
								<div class="span6">
									<div class="agent-content">
										<h3>${map.name}</h3>
										<%-- <span class="pull-right">职位：${map.position} </span> --%>
										<p style="height: 60px">${map.performance }</p>
										<%-- <p class="margin0">${map.business}</p> --%>
										<!-- <div class="phone-number pull-right">
											<button class="btn btn-small btn-realto" type="button">点击资讯</button>
										</div> -->
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- .row -->
			</div>
			<!-- .span8 -->
			<div class="span4"><%@include file="right.jsp"%></div>
			<!-- .span4 -->
		</div>
		<!-- .row -->
	</div>
	<!-- .container -->
	<div class="container">
		<div class="row">
			<div class="span12 box-container">
				<div class="row adv-message clearfix">
					<div class="pull-left span7">
						<p class="upper-line serif italic" style="padding-top: 10px;">实时行情让您的投资交易得到更加可靠的保障，让您准确把握市场投资机会…</p>
					</div>
					<!-- .pull-left -->
					<a class="pull-right btn btn-large btn-realto span3" href="#"
						title="Buy It Now">交易端下载</a>
				</div>
				<div class="row adv-message clearfix" style="display: none;">
					<div class="pull-left span7">
						<p class="upper-line serif italic" style="padding-top: 10px;">最全面的交易资讯，最及时的行业脉搏，一键下载客服端，全球市场随身看…</p>
					</div>
					<!-- .pull-left -->
					<a class="pull-right btn btn-large btn-realto span3" href="#"
						title="Buy It Now">手机端下载</a>
				</div>
				<!-- .adv-message  -->
			</div>
		</div>
	</div>

	<!-- begin footer -->
	<footer>
		<%@include file="footer.jsp"%>
	</footer>
	<!-- end footer -->
</body>
</html>