<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>首页 | 全唐贵金属</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="keywords" content="贵金属,全唐贵金属,钯金、铂金、镍投资,贵金属投资,投资理财" />
<meta name="description" content="我们强调“尊重客户，礼待客户”，让客户满意是服务的根本原则。全唐贵金属的每一位客户、每一份开户合约、每一个咨询电话，都将是规范、专业和客户利益至上原则的体现。 在对待客户的方式上，“客户就是上帝”，以客户为导向，不断满足客户的需求并持续超越客户的期望，是我们全唐人一致的追求。">

<!-- CSS Styles  -->
<link href="${base}/index/css/bootstrap.css"  rel="stylesheet">
<link href="${base}/index/css/bootstrap-responsive.css"  rel="stylesheet">
<link href="${base}/index/css/font-awesome.min.css"  rel="stylesheet">
<link href="${base}/index/css/style.css"  rel="stylesheet">

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
<body>
<!-- begin header -->
<header>
	<%@include file="header.jsp"%></header>
<!-- end header -->
<div id="home-search-container">
    <div class="down1 clearfix">
    	<img src="${base}/index/images/banner.jpg" style="width:1920px; height:340px;">
   </div>
   <div class="down2 clearfix" style="display: none;">
   	<a href="http://mall.tjpme.com/index.htm" target="_blank"  style="width:100%; margin-left:0;"><img src="${base}/index/images/banner1.jpg"  style="width:1920px; height:340px;"></a> 
    </div>
</div>
	<div class="online_btn">
		 <a href="${base}/reservation.htm" style="color:#fff;">在线开户</a>
</div>
<div id="themes_panel">
	<div id="toggle_button">
		<a href="javascript:;" style="color:#fff;" onFocus="this.blur()">预约开户</a>
	</div>
	<div id="themes_menu" class="widget pull-right segment">
	<div class="search-form">
		<h2>预约开户</h2>
	<div class="row-fluid" style="position:relative; top:20px;">
		<div class="selec_sex" style="padding-bottom:6px;">
			<span class="selec_name">您的姓名</span><input name="name" id="name" size="22" tabindex="1" aria-required="true" class="span5  btn_small_frame" style="width:137px; position:absolute; left:80px; top:-25px;" type="text"><span for="name" generated="true" class="help-inline" style="display: none;"></span>
			<div class="select_box"  style="position:absolute; left:222px; top:-20px;">
				<input id="myselect" type="text" value="先生" readonly="readonly" class="btn_small_frames">
		    	<ul class="select_ul">
					<li value="1" onclick="javascript:$('#sex').val($(this).val())">先生</li>
					<li value="2" onclick="javascript:$('#sex').val($(this).val())">女士</li>
				</ul>
				<b>&nbsp;*</b>
				<input id="sex" name="sex" type="hidden" value="1"/>
			</div>
		</div>
		<div class="selec_sex" style="height:38px;">
		   		<span>您的年龄</span>
			   <div class="select_box1"  style="position:absolute; left:80px; top:16px;">
					<input id="myselect1" type="text" value="20~40岁" readonly="readonly" class="btn_frame1">
			    	<ul class="select_ul1">
						<li value="1" onclick="javascript:$('#age').val($(this).val())">20~40岁</li>
						<li value="2" onclick="javascript:$('#age').val($(this).val())">40~60岁</li>
						<li value="3" onclick="javascript:$('#age').val($(this).val())">大于60岁</li>
					</ul>
				</div>
				<input id="age" name="age" type="hidden" value="1"/>
	</div><br> <span class="phone_number" >手机号码</span><input name="phone" id="phone" size="22" tabindex="1" aria-required="true" class="span8 btn_frame" type="text" style="width:223px;"><b style="color: red;">&nbsp;*</b><span
		for="phone" generated="true" style="display: none;"></span><br>
	<span  class="phone_number" >您的邮箱</span><input name="email"  id="email" size="22" tabindex="2" class="span8 btn_frame" aria-required="true" type="text" style="width:223px;">
	<div class="clearfix  btn_submit" >
		<button class="btnx-form btn-large " type="button" onclick="submit()" id="btn" style="position:absolute; left:80px;">提交</button>
	</div>
</div>
 </div>
<!-- </form> -->
</div>
<!-- .search-form -->
	</div>
	<div id="latest-properties">
		<div class="container">
			<div class="row">
				<div class="span12" >
					<span class="brand">
						<span class="logo-text"><img src="${base}/index/images/volume.gif"  style="width:20px; height:20px; padding-right:5px;">
						<c:if test="${fn:length(noticelt)>1}">
						<!-- <marquee id="a" onmouseover=a.stop() onmouseout=a.start() style="height: 20px;width: 400px;" scrollamount="1" direction="up">-->
							<c:forEach items="${noticelt}" var="map" varStatus="status" end="4">
							  	<a href="${base}${map.static_page}"  style="font-weight:bold; font-size:14px;">${map.title}</a>
							</c:forEach>
						<!-- </marquee>-->
						</c:if>
						<c:if test="${fn:length(noticelt)<=1}">
						<span  style="height: 20px;width: 300px; display:inline-block;">
							<c:forEach items="${noticelt}" var="map" varStatus="status" end="4">
							  	<a href="${base}${map.static_page}"  style="font-weight:bold; font-size:14px;">${map.title}</a>
							</c:forEach>
						</span>
						</c:if>
						<a href="notices.htm" style="color:#5a5a5a; font-size:14px;">更多>></a>
					</span>
					</span>
				</div>
				<div class="carousel-navigation pull-right" style="position:relative;  top:-25px; right:0;">
					<a class="left  -carousel-control pull-left  post_style"  href="#realto-carousel" data-slide="prev"><img src="${base}/index/images/prev.gif"  style="width:20px; height:20px;"></a>
					<a class="right  -carousel-control pull-right"  href="#realto-carousel" data-slide="next"><img src="${base}/index/images/next.gif"  style="width:20px; height:20px;"></a>
				</div>
			</div>
			<!-- Begin Carousel -->
			<div class="row">
				<div class="-span8  hq">
					<div class="box-container" style="width: 372px; position:relative;">
					    <img src="${base}/index/images/menu_bar_bg.png"  style="width:2px; height:230px;">
						<div id="chartdiv"  class="chartdiv"></div>
						<img src="${base}/index/images/menu_bar_bg.png"  style="width:2px; height:228px; position:absolute; top:0; right:0;">
						<span class="prop-tag">行情走势</span>
						<div class="prop-info market-trend" >
							<div class="tabbable" id="myTab" >
								<!-- Only required for left/right tabs -->
								<ul id="optionul" class="nav nav-tabs  cate_list">
									<li class="active" style="left:0;">
										<a id="tb1" href="#tab1" onclick="dataSet('XAG')" data-toggle="tab">白银</a>
									</li>
									<li style="left:62px;" >
										<a id="tb2" href="#tab2" onclick="dataSet('XPT')" data-toggle="tab">铂金</a>
									</li>
									<li style="left:124px;">
										<a id="tb3" href="#tab3" onclick="dataSet('XPD')" data-toggle="tab">钯金</a>
									</li>
									<li style="left:186px;">
										<a id="tb4" href="#tab4" onclick="dataSet('NID')" data-toggle="tab">镍</a>
									</li>
									<li style="left:248px;">
										<a id="tb4" href="#tab5" onclick="dataSet('AHD')" data-toggle="tab">铝</a>
									</li>
									<li style="left:310px;">
										<a id="tb4" href="#tab6" onclick="dataSet('CAD')" data-toggle="tab">铜</a>
									</li>
								</ul>
								<div class="tab-content  sider_bar" >
									<em></em>
									<input id="nowclass" type="hidden" value="XAG">
									<div id="tab1" class="tab-pane active  tab_pos" >
										<div class="price">
											<span name="price"  style="font-size:30px; position:absolute; top:18px; left:10px;">--</span>
											<span name="count"  class="-count_price"  style="color:#5a5a5a;  position:absolute; top:20px; left:145px;">美元/盎司</span>
											<span style="display: flex; position:absolute; top:20px; right:40px;" class=" " >
												<i name="rate" class="-fa -rate"  style=" position:absolute; left:-30px;"></i>
												<span name="changerate" >--</span>
											</span>
										</div>
										<div  class="tab10">
											<ul>
												<li>开盘价</li>
												<li>昨收价</li>
												<li>最高价</li>
												<li>最低价</li>
											</ul>
											<ul class="price_list">
												<li><span name="openprice"   class="price_list1" >--</span></li>
												<li><span name="yestodayprice"  class="price_list2" >--</span></li>
												<li><span name="maxprice"  class="price_list1" >--</span></li>
												<li><span name="minprice"  class="price_list2" style="color:#00ba00;">--</span></li>
											</ul>
										</div>
									</div>
									<div id="tab2" class="tab-pane  tab_pos" >
										<div class="price">
											<span name="price"  style="font-size:30px; position:absolute; top:18px; left:10px;">--</span>
											<span name="count"  class="-count_price"  style="color:#5a5a5a;  position:absolute; top:20px; left:145px">美元/盎司</span>
											<span style="display: flex; position:absolute; top:20px; right:40px;" class=" " >
												<i name="rate" class="-fa -rate"  style="position:absolute; left:-30px;"></i>
												<span name="changerate" >--</span>
											</span>
										</div>
										<div  class="tab10">
											<ul>
												<li>开盘价</li>
												<li>昨收价</li>
												<li>最高价</li>
												<li>最低价</li>
											</ul>
											<ul class="price_list">
												<li><span name="openprice"   class="price_list1" >--</span></li>
												<li><span name="yestodayprice"  class="price_list2" >--</span></li>
												<li><span name="maxprice"  class="price_list1" >--</span></li>
												<li><span name="minprice"  class="price_list2"  style="color:#00ba00;">--</span></li>
											</ul>
										</div>
									</div>
									<div id="tab3" class="tab-pane  tab_pos" >
										<div class="price">
											<span name="price"  style="font-size:30px; position:absolute; top:18px; left:10px;">--</span>
											<span name="count"  class="-count_price"  style="color:#5a5a5a;  position:absolute; top:20px;left:145px;">美元/盎司</span>
											<span style="display: flex; position:absolute; top:20px; right:40px;" class=" " >
												<i name="rate" class="-fa -rate"  style="position:absolute; left:-30px;"></i>
												<span name="changerate" >--</span>
											</span>
										</div>
										<div  class="tab10">
											<ul>
												<li>开盘价</li>
												<li>昨收价</li>
												<li>最高价</li>
												<li>最低价</li>
											</ul>
											<ul class="price_list">
												<li><span name="openprice"  class="price_list1">--</span></li>
												<li><span name="yestodayprice"  class="price_list2">--</span></li>
												<li><span name="maxprice"  class="price_list1" >--</span></li>
												<li><span name="minprice"  class="price_list2" style="color:#00ba00;">--</span></li>
											</ul>
										</div>
									 </div>
									 <div id="tab4" class="tab-pane  tab_pos">
									  	<div class="price">
									        <span name="price"  style="font-size:30px; position:absolute; top:18px; left:10px;">--</span>
											<span name="count"  class="-count_price"  style="color:#5a5a5a;  position:absolute; top:20px; left:145px;">美元/吨</span>
											<span style="display: flex; position:absolute; top:20px; right:40px;" class=" " >
												<i name="rate" class="-fa -rate"  style="position:absolute; left:-30px;"></i>
												<span name="changerate" >--</span>
											</span>
									    </div>
									    <div  class="tab10">
											<ul>
												<li>开盘价</li>
												<li>昨收价</li>
												<li>最高价</li>
												<li>最低价</li>
											</ul>
											<ul class="price_list">
												<li><span name="openprice"  class="price_list1"  >--</span></li>
												<li><span name="yestodayprice" class="price_list2" >--</span></li>
												<li><span name="maxprice" class="price_list1" >--</span></li>
												<li><span name="minprice" class="price_list2" style="color:#00ba00;">--</span></li>
											</ul>
										</div>
									</div>
                                    <div id="tab5" class="tab-pane  tab_pos" >
										<div class="price">
											<span name="price"  style="font-size:30px; position:absolute; top:18px; left:10px;">--</span>
											<span name="count"  class="-count_price"  style="color:#5a5a5a;  position:absolute; top:20px; left:145px;">美元/吨</span>
											<span style="display: flex; position:absolute; top:20px; right:40px;" class=" " >
												<i name="rate" class="-fa -rate"  style="position:absolute; left:-30px;"></i>
												<span name="changerate" >--</span>
											</span>
										</div>
										<div  class="tab10">
											<ul>
												<li>开盘价</li>
												<li>昨收价</li>
												<li>最高价</li>
												<li>最低价</li>
											</ul>
											<ul class="price_list">
												<li><span name="openprice"   class="price_list1">--</span></li>
												<li><span name="yestodayprice" class="price_list2" >--</span></li>
												<li><span name="maxprice"  class="price_list1" >--</span></li>
												<li><span name="minprice"  class="price_list2" style="color:#00ba00;">--</span></li>
											</ul>
										</div>
									</div>
									<div id="tab6" class="tab-pane  tab_pos">
										<div class="price">
											<span name="price"  style="font-size:30px; position:absolute; top:18px; left:10px;">--</span>
											<span name="count"  class="-count_price"  style="color:#5a5a5a;  position:absolute; top:20px; left:145px;">美元/吨</span>
											<span style="display: flex; position:absolute; top:20px; right:40px;" class=" " >
												<i name="rate" class="-fa -rate"  style="position:absolute; left:-30px;"></i>
												<span name="changerate" >--</span>
											</span>
										</div>
										<div  class="tab10">
											<ul>
												<li>开盘价</li>
												<li>昨收价</li>
												<li>最高价</li>
												<li>最低价</li>
											</ul>
											<ul class="price_list">
												<li><span name="openprice"   class="price_list1">--</span></li>
												<li><span name="yestodayprice"  class="price_list2">--</span></li>
												<li><span name="maxprice"  class="price_list1">--</span></li>
												<li><span name="minprice"   class="price_list2"style="color:#00ba00;">--</span></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- </div> -->
				</div>
				<div id="realto-carousel" class="carousel slide" style="float: right;  margin-bottom:0;">
					<div class="carousel-inner">
						<div class="item active">
							<ul class="thumbnails">
								<li class="span4  -box-container  hq">
									<div class="box-container" style="margin-bottom: 0;  position:relative;">
										<c:forEach items="${topline}" var="map" varStatus="status">
											<c:if test="${map.infomation_type==0}">									
												<a id="article1" class="overlay" title="" href="${base}${map.static_page }"><img alt="image" style="width: 370px; height: 210px; border:1px solid #b18c10;border-top:none; " src=" ${base}${map.image}" class="media-object"><span
												   id="info1" class="art_info" style="padding:10px 15px;">${map.title}
													<!--id="info1" class="art_info"> ${map.title}<br>${map.summary}...  --></span>
												</a>
											</c:if>
										</c:forEach>
										<span class="prop-tag">行业资讯</span>
										<div class="prop-info">
											<%-- <h3 class="prop-title">${title}</h3> --%>
											<ul class="more-info clearfix">
												<c:forEach items="${newlt}" var="map" varStatus="status" begin="0" end="4">
													<li class="info-label clearfix">
														<span class="pull-left art_row"><a href="${base}${map.static_page }" title="${map.title}" target="_blank"> ${map.title}</a> </span>
														<span class="qty pull-right">${map.timing}</span>
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</li>
								<li class="span4  -box-container hq">
									<div class=" box-container" style="margin-bottom: 0;">
										<c:forEach items="${topline}" var="map" varStatus="status">
											<c:if test="${map.infomation_type==1}">
												<a id="article2" class="overlay" title="" href="${base}${map.static_page }"><img alt="image" style="width: 370px; height: 210px; border:1px solid #b18c10;border-top:none; " src=" ${base}${map.image}" class="media-object">
													<%-- <span id="articlesum" class="prop-tag">${title}<br> <span>${summary}...</span></span> --%>
													<span id="info2" class="art_info" style="padding:10px 15px;">${map.title}<!-- <br>${map.summary}... --></span>
												</a>
											</c:if>
										</c:forEach>
										<span class="prop-tag">每日评论</span>
										<div class="prop-info">
											<%-- <h3 class="prop-title">${title}</h3> --%>
											<ul class="more-info clearfix">
												<c:forEach items="${newlt1}" var="map" varStatus="status" begin="0" end="4">
													<li class="info-label clearfix">
														<span class="pull-left art_row"><a href="${base}${map.static_page }" title="${map.title}" target="_blank"> ${map.title}</a></span>
														<span class="qty pull-right">${map.timing}</span>
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="item">
							<ul class="thumbnails">
								<li class="span4  -box-container hq">
									<div class="box-container" style="margin-bottom: 0;">
										<c:forEach items="${topline}" var="map" varStatus="status">
											<c:if test="${map.infomation_type==2}">
												<a id="article3" class="overlay" title="" href="${base}${map.static_page }"><img alt="image" style="width: 370px; height: 210px; border:1px solid #b18c10;border-top:none; " src="${base}${map.image}" class="media-object">
													<span id="info3" class="art_info" style="">${map.title}<!-- <br>${map.summary}... --></span>
												</a>
											</c:if>
										</c:forEach>
										<span class="prop-tag">分析研究</span>
										<div class="prop-info">
											<%-- <h3 class="prop-title">${title}</h3> --%>
											<ul class="more-info clearfix">
												<c:forEach items="${newlt2}" var="map" varStatus="status" begin="0" end="4">
													<li class="info-label clearfix">
														<span class="pull-left art_row"><a href="${base}${map.static_page }" title="${map.title}" target="_blank"> ${map.title}</a> </span>
														<span class="qty pull-right">${map.timing}</span>
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</li>
								<li class="span4 -box-container hq">
									<div class=" box-container" style="margin-bottom: 0;">
										<a id="article" class="overlay" title="property title" href="#"> <img alt="image" src="<%-- ${base}${image} --%>${base}/index/images/faq.jpg" class="media-object">
										<%-- <span id="articlesum" class="prop-tag">${title}<br> <span>${summary}...</span></span> --%>
										</a><span class="prop-tag">常见问题</span>
										<div class="prop-info">
											<%-- <h3 class="prop-title">${title}</h3> --%>
											<ul class="more-info clearfix">
												<li class="info-label clearfix">
													<span class="pull-left article_2">
														<a href="question.htm#q1" title="" target="_blank">我想了解贵金属投资更详细的业务应该怎么咨询？</a>
													</span>
												</li>
												<li class="info-label clearfix">
													<span class="pull-left article_2">
														<a href="question.htm#q2" title="" target="_blank">我想开户，一定要到现场才能办理吗？</a>
													</span>
												</li>
												<li class="info-label clearfix">
													<span class="pull-left article_2">
														<a href="question.htm#q3" title="" target="_blank">开户需要费用吗？</a>
													</span>
												</li>
												<li class="info-label clearfix">
													<span class="pull-left article_2">
														<a href="question.htm#q7" title="" target="_blank">目前市场上有哪些白银投资产品？</a>
													</span>
												</li>
												<li class="info-label clearfix">
													<span class="pull-left article_2">
														<a href="question.htm#q6" title="" target="_blank">建仓价、持仓价、平仓价是什么意思？</a>
													</span>
												</li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- .carousel-inner -->
	</div>
	<!--End Carousel-->
	<!-- .container  -->
	<!-- #latest-properties  -->
	<div class="container" style="padding-bottom: 20px;">
		<div class="row">
			<div class="down_tab">
				<div class="down1" class="-row adv-message clearfix" style="display:block;">
					<a href="${base}/download/jyd.exe" title="交易端下载" ><img src="${base}/index/images/Transaction.jpg" style="width:1170px; height:105px;"></a>
				</div>
				<div class="down2" class="-row adv-message clearfix" style="display: none;">
					<a href="${base}/download/hqfx.exe" title="行情分析下载" ><img src="${base}/index/images/Quotation.jpg" style="width:1170px; height:105px;"></a> 
				</div>
				<!-- .adv-message  -->
			</div>
		</div>
	</div>
	<!-- #latest-properties  -->
    <div class="container" style="padding-bottom:52px;">
    	<span class="selec_title">为什么选择全唐？</span>
    	<div class ="selec_content">
    		<div class ="selec_content_bg" >
    			<p class="selec_airticle">我们强调“尊重客户，礼待客户"，让客户满意是服务的根本原则。全唐贵金属的每一位客户、每一份开户合约、每一个咨询电话，都将是规范、专业和客户利益至上原则的体现。在对待客户的方式上，“客户就是上帝”，以客户为导向，不断满足客户的需求并持续超越客户的期望，是我们全唐人一致的追求。</p>
    			<ul class="selec_list">
    				<li class="select_list_small " >
    					<span class="select_list_bg1"></span>
    					<h3 class="selec_list_h3">一对一客户经理</h3>
    					<p>一对一客户服务，从开户到交易一站式服务，满足投资者各方面的服务需求；</p>
    				</li>
    				<li class="selec_list_big">
    					<span class="select_list_bg2"></span>
    					<h3 class="selec_list_h3">行情及交易服务软件</h3>
    					<p>专业周到技术服务，为客户应用行情软件和交易所交易平台,提供快捷支持；</p>
    				</li>
    				<li class="selec_list_big">
    					<span class="select_list_bg3"></span>
    					<h3 class="selec_list_h3">24小时电话客服</h3>
    					<p>24小时电话客服，多席位人工值机，实时解决客户问题、电话委托下单、投诉等事项；</p>
    				</li>
    				<li class="select_list_small  none" >
    					<span class="select_list_bg4"></span>
    					<h3 class="selec_list_h3">专业市场分析</h3>
    					<p>专业深入的市场分析，研发部每日多次市场点评、定期研发报告为客户投资提供参考；</p>
    				</li>
    			</ul>
    		</div>
    	</div>
    </div>
	<script type="text/javascript">
		$("#a").load(){
			if($("#noticelen").val()>1){
				$(this).stop();
			}
		}
	</script>
<!-- begin footer -->
<footer>
	<%@include file="footer.jsp"%>
</footer>
<!-- end footer -->
	<script type="text/javascript"  src="${base}/index/js/respond.min.js"></script>
	<script type="text/javascript"  src="${base}/index/js/jquery.min.js"></script>
	<script type="text/javascript"  src="${base}/index/js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="${base}/index/highcharts/js/highstock.js"></script>
	<script type="text/javascript"  src="${base}/index/js/index.js"></script>
</body>
</html>