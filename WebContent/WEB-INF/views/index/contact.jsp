<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>联系我们| 全唐贵金属</title>
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
})();
</script>
<!--  <![endif]--> 
<script type="text/javascript">
	
	function submit() {
		var name = $("#name");
		var email = $("#email");
		//var content = $("#content").val();
		var content = $("#content");
		var name_reg = /^[\u0391-\uFFE5]{2,6}$/;
		var mail_reg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if(!name_reg.test(name.val())){
			alert('请输入有效的姓名！');
			name.focus();
			return;
		}
		if (!mail_reg.test(email.val())) {
			alert('请输入有效的E_mail！');
			email.focus();
			return;
		}
		if (content.length == 0 || content.length > 500) {
			content.focus();
			return;
		}
		
		$.ajax({
			url : "opinionSubmit.htm",
			type : "post",
			data : {
				"name" : name.val(),
				"email" : email.val(),
				"content" : content.val()
			},
			dataType : "text",
			success : function(data) {
				$("#name").val("");
				$("#email").val("");
				$("#content").val("");
				alert('提交成功!');
			}
		});
	}
</script>
<style type="text/css">
#gmap {
	width: 100%;
	margin: 0 auto;
	height: 330px;
	border-top: 1px solid #e0e0e0;
	border-bottom: 1px solid #e0e0e0;
}
#gmap img {
	width: auto;
	max-width: none;
}
</style>
</head>
<body >
	<header>
		<%@include file="header.jsp"%>
	</header>
	<!-- end header -->
	
	<div class="container page-content">
            <div class="row">
                <div class="span8">
                    <div class="box-container"  style="border:none;">
                        <div class="-padding30 contact-text_bg1" style="position:relative;  padding-bottom:30px;">
                            <h2 class="contact-title">在线留言</h2>
                            <img src="${base}/index/images/about_us_bar.png"  style="width:2px; height:509px; position:absolute: top:34px; left:2px;">
                            <div class="contact-text"   style="position:absolute; top:34px;">
                            	 <!-- <form action="#" class="margin300" method="post"> -->
                                    <input  class="contact-xm"   id="name"     placeholder="请输入您的姓名"    type="text">
                                    <input  class="contact-mail"   id="email"    placeholder="请输入您的邮箱"   type="text">
                                    <textarea  class="contact-textarea"   id="content"   placeholder="填写您的内容"   rows="6"   style="width:702px; height:142px; border:none;"></textarea>
                                    <div class="clearfix">
                                        <button class="contact-btn" id="submit" type="button" onclick="submit()">提&nbsp;&nbsp;交</button>
                                    </div>
                                 <!-- </form> -->
                            </div>
                            <div class="row-fluid "  style="position:absolute; top:330px;">
                            	<div class="contact-text_bg" >
									<h2 class="contact-title1">联系我们</h2>
									<img src="${base}/index/images/contact_title2.png"  style="width:409px; height:2px;">
									<ul class="contact-style">
											<li>
											      <i class="fa fa-envelope-square" ></i>邮箱:
											      <a href="Mailto:tanggold@foxmail.com" style="color:#707070;">tanggold@foxmail.com</a>
											</li>	
											<li>
											     <i class="fa fa-phone" ></i>电话: 010-52420857
											</li>
									</ul>
									<ul  class="contact-style" style="width:754px; padding-top:16px; padding-bottom:52px;">
											<li>
												<a href="http://weibo.com/p/1006062689070591/home?from=page_100606&mod=TAB#place" style="color:#707070;"><i class="fa fa-weibo" ></i>全唐贵金属</a>
											</li>
											<li>
											    <a href="http://t.qq.com/tanggold888" style="color:#707070;"><i class="fa fa-tencent-weibo"></i>全唐贵金属</a>
											</li>
									</ul>
                                </div>
                            </div>
                            <img src="${base}/index/images/about_us_bar.png"  style="width:2px; height:509px;  position:absolute; top:34px; right:-2px;">
                        </div>
                    </div>
                </div>
                <!-- .span8 -->
                <div class="span4 widget">
                    <div class="widget map box-container  map_style" >
  						<h3 class="contact-map-title">公司地址</h3>
						<div id="gmap"  style="width:314px; heigth:336px;"></div>
						<dl class="margin0 map-bg" >
							<dd class="margin0" style="padding-top:68px;">北京市东城区东二环朝阳门</dd>
							<dd class="margin0">银河SOHO C座 30519(朝阳门地铁站G口)</dd>
						</dl>
                    </div>
                </div>
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
	<script type="text/javascript"  src="${base}/index/js/custom.js"></script>
	<script type="text/javascript"  src="${base}/index/js/index.js"></script>
	<script type="text/javascript"  src="http://api.map.baidu.com/api?v=2.0&ak=pmxIODS4V3p6wYosQnOsvfWz"></script>
	<script type="text/javascript" >
		// 百度地图API功能
		var map = new BMap.Map("gmap");            // 创建Map实例
		var point = new BMap.Point(116.439261,39.925654);    // 创建点坐标
		map.centerAndZoom(point,20);                     // 初始化地图,设置中心点坐标和地图级别。
		map.enableScrollWheelZoom();                            //启用滚轮放大缩小
		var marker = new BMap.Marker(point);  // 创建标注
		map.addOverlay(marker);              // 将标注添加到地图中
		marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
	</script>
</body>
</html>
