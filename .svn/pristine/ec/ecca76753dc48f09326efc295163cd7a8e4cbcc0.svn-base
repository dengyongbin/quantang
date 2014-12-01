<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>行业资讯 | 全唐贵金属</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="keywords" content="贵金属,全唐贵金属,钯金、铂金、镍投资,贵金属投资,投资理财"/>
<meta content="我们强调“尊重客户，礼待客户”，让客户满意是服务的根本原则。全唐贵金属的每一位客户、每一份开户合约、每一个咨询电话，都将是规范、专业和客户利益至上原则的体现。 在对待客户的方式上，“客户就是上帝”，以客户为导向，不断满足客户的需求并持续超越客户的期望，是我们全唐人一致的追求。" name="description">

<!-- CSS Styles  -->
<link href="${base}/index/css/bootstrap.css" rel="stylesheet">
<link href="${base}/index/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${base}/index/css/font-awesome.min.css" rel="stylesheet">
<link href="${base}/index/css/colors.css" rel="stylesheet">
<link href="${base}/index/css/style.css" rel="stylesheet">

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
<body>
	<!-- begin header -->
	<header>
		<%@include file="header.jsp"%>
	</header>
	<!-- end header -->
	
	<div class="container page-content blog">
		<div class="row">
			<div class="span8">
				<div class="row">
					<div class="span8">
						<c:forEach items="${articlelt}" var="map" varStatus="status">
							<div class="post box1-container row-fluid " style="height: 160px;padding:10px;  width:752px;">
								<a class="overlay span4" href="${base}${map.static_page}"> 
									<img style="width: 200px;height: 160px;" class="media-object" src="${base}${map.image}">
								</a>
								<div class="span8 post-contents">
									<h2 class="post-title"><a href="${base}${map.static_page}" class="article">${map.title}</a></h2>
									<p style="width:480px; height: 60px; overflow:hidden; padding-left:0; margin-bottom:5px;">${map.summary }</p>
									<div class="clearfix meta  padding100">
										<p class="serif italic pull-left">
											日期 <a>${map.timing}</a>
										</p>
										<p class="italic serif  pull-right">
											<a href="${base}${map.static_page}"><button class="-btn -btn-small -btn-realto   read" type="button"></button></a>
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
						<!-- .post -->
					</div>
				</div>
				<!-- .row -->
				${paging}
			</div>
			<!-- .span8 -->
			<div class="span4">
				<%@include file="right.jsp"%>
			</div>
			<!-- .span4 -->
		</div>
		<!-- .row -->
	</div>
	<!-- .container -->
	<footer>
		<%@include file="footer.jsp"%>
	</footer>
	<!-- end footer -->
	<script type="text/javascript"  src="${base}/index/js/respond.js"></script>
	<script type="text/javascript"  src="${base}/index/js/jquery.min.js"></script>
	<script type="text/javascript"  src="${base}/index/js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="${base}/index/js/jquery.placeholder.js"></script>
	<script type="text/javascript"  src="${base}/index/js/custom.js"></script>
	<script type="text/javascript"  src="${base}/index/js/common.js"></script>
	<script type="text/javascript"  src="${base}/index/js/index.js"></script>
</body>
</html>