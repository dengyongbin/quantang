<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>网站地图 | 全唐贵金属</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="keywords" content="贵金属,全唐贵金属,钯金、铂金、镍投资,贵金属投资,投资理财"/>
<meta content="我们强调“尊重客户，礼待客户”，让客户满意是服务的根本原则。全唐贵金属的每一位客户、每一份开户合约、每一个咨询电话，都将是规范、专业和客户利益至上原则的体现。 在对待客户的方式上，“客户就是上帝”，以客户为导向，不断满足客户的需求并持续超越客户的期望，是我们全唐人一致的追求。" name="description">

<!-- CSS Styles  -->
<link href="${base}/index/css/bootstrap.css" rel="stylesheet">
<link href="${base}/index/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${base}/index/css/font-awesome.min.css" rel="stylesheet">
<link href="${base}/index/css/colors.css" rel="stylesheet">
<link href="${base}/index/css/style.css" rel="stylesheet">
<link href="${base}/index/css/fonticon.css" rel="stylesheet">

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

	<header>
		<%@include file="header.jsp"%>
	</header>
	<!-- end header -->
	
	<!-- <div class="container page-content">
            <div class="row">
                <div class="span8">
                    <div class="box-container"> -->
    <div class="container page-content blog" style="padding-bottom:70px;">
            <div class="row">
                <div class="span12">
                    <div class="row">
                       <img src="${base}/index/images/sitmap.gif" usemap="Map" style="padding-left: 15%"/>
                       <map name="Map" id="Map">
						 <area shape="circle" coords="71,126,51"  href="http://www.tanggold.com/aboutus.htm" alt="关于我们">
                         <area shape="circle" coords="100,249,51" href="http://www.tanggold.com/product.htm" alt="产品介绍">
						 <area shape="circle" coords="369,129,123" href="http://www.tanggold.com" alt="首页">
				         <area shape="circle" coords="174,341,51" href="http://www.tanggold.com/industry.htm" alt="行业资讯" />
                         <area shape="circle" coords="292,419,51" href="http://www.tanggold.com/dailyreview.htm" alt="每日评论" />
                         <area shape="circle" coords="442,419,51" href="http://www.tanggold.com/analysis.htm" alt="分析研究" />
                         <area shape="circle" coords="566,340,51" href="http://www.tanggold.com/download.htm" alt="软件下载" />
                         <area shape="circle" coords="645,250,51" href="http://www.tanggold.com/question.htm" alt="常见问题" />
                         <area shape="circle" coords="677,126,51" href="http://www.tanggold.com/contact.htm" alt="联系我们" />
                      </map>                  
                  </div>
                    <!-- .row -->
                </div>
                <!-- .span8 -->
               <!-- <div class="span4">
                	<%-- <%@include file="right.jsp"%> --%>
                </div>-->
                <!-- .span4 -->
            </div>
            <!-- .row -->
        </div>
        <!-- .container -->
        
	<!-- begin footer -->
	<footer>
		<%@include file="footer.jsp"%>
	</footer>
	<!-- end footer -->
	<script type="text/javascript"  src="${base}/index/js/respond.js"></script>
	<script type="text/javascript"  src="${base}/index/js/jquery.min.js"></script>
	<script type="text/javascript"  src="${base}/index/js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="${base}/index/js/jquery.placeholder.js"></script>
	<script src="${base}/index/js/custom.js"></script>
</body>
</html>