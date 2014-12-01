<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>${article.title} | 全唐贵金属</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="keywords" content="贵金属,全唐贵金属,钯金、铂金、镍投资,贵金属投资,投资理财"/>
<meta content="我们强调“尊重客户，礼待客户”，让客户满意是服务的根本原则。全唐贵金属的每一位客户、每一份开户合约、每一个咨询电话，都将是规范、专业和客户利益至上原则的体现。 在对待客户的方式上，“客户就是上帝”，以客户为导向，不断满足客户的需求并持续超越客户的期望，是我们全唐人一致的追求。" name="description">

<!-- CSS Styles  -->
<link href="../index/css/bootstrap.css" rel="stylesheet">
<link href="../index/css/bootstrap-responsive.css" rel="stylesheet">
<link href="../index/css/font-awesome.min.css" rel="stylesheet">
<link href="../index/css/colors.css" rel="stylesheet">
<link href="../index/css/style.css" rel="stylesheet">
<style>
	a{ text-decoration:none;}
	a:hover{ text-decoration:none;}
</style>
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
 <script src="../index/js/custom.js"></script>
 

 <script type="text/javascript">
 function submit() {
		var name = $("#name");
		var sex = $("#sex");
		var age = $("#age");
		var phone = $("#phone");
		var email = $("#email");
		var phone_reg = /^(13[0-9]|15[0|3|6|7|8|9]|18[8|9])\d{8}$/;
		var name_reg = /^[\u0391-\uFFE5]{2,6}$/;
		var mail_reg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if(!name_reg.test(name.val())){
			alert('请输入有效的姓名！');
			name.focus();
			return;
		}
		if(!phone_reg.test(phone.val())){ //手机框输入的值符合要求，才可以提交
			alert('请输入有效的手机号码！');
			phone.focus();
			return;
		}
		if (!mail_reg.test(email.val())) {
			alert('请输入有效的E_mail！');
			email.focus();
			return;
		}

		$.ajax({
			url : "rightSubmit.htm",
			type : "post",
			data : {
				"name" : name.val(),
				"phone" : phone.val(),
				"email" : email.val(),
				"sex" : sex.val(),
				"age" : age.val()
			},
			dataType : "text",
			success : function(data) {
				$("#name").val("");
				$("#email").val("");
				$("#phone").val("");
				$("#age").attr("value", "1");
				$("#sex").attr("value", "1");
				alert('您好,我们已收到您的预约申请,请等候工作人员与您联系!');
			}
		});
	}
</script>
</head>
<body>

	<!-- begin header -->
	<header>
	<div id="logo-container">
		<div class="container">
			<div class="row">
				<div class="span8">
					<a href="/"><img alt="全唐贵金属" src="${base}/index/images/logo-1.png" style="width:507px ; height:49px;"></a>
				</div>
				<div class="span4" style="position:relative;" >
					<div class="phone-number pull-right"  style="position:absolute; top:-7px; right:5px;">
						<img src="${base}/index/images/phone.png" style="width:177px; height:57px;">
						<!-- <i class="fa -fa-phone icon"></i>联系我们:<strong>400-6940669</strong> -->
					</div>
			   </div>
		   </div>
		</div>
	</div>
		<div id="nav_bar">
		<ul class="nav_list" id="nav_list">
				<li class=""><a href="/"  title="首页"><i class="fa fa-home pic  -selected "  style="font-size:25px; padding-left:26px; width:50px; line-height:40px;  margin-left:-8px;"></i></a></li>
				<li class=""><a href="../aboutus.htm" title="关于我们">关于我们 </a></li>
				<li class=""><a href="../product.htm">产品介绍</a></li>
				<li class="${industry}"><a href="../industry.htm" title="行业资讯">行业资讯</a></li>
				<li class="${dailyreview}"><a href="../dailyreview.htm" title="每日评论">每日评论</a></li>
				<li class="${analysis}"><a href="../analysis.htm" title="分析研究">分析研究</a></li>
				<li class=""><a href="../download.htm" title="软件下载">软件下载</a></li>
				<li class=""><a href="../question.htm" title="常见问题">常见问题</a></li>
				<li class=""><a href="../contact.htm" title="联系我们">联系我们</a></li>
		</ul>
	</div>
	</header>
 
        <!-- end header -->
        <div class="container page-content blog">
            <div class="row">
                <div class="span8">
                    <div class="row">
                        <div class="span8 box-container post">
                            <div class="padding30">
                                <h2 align="center">${article.title}</h2>
                                <div class="clearfix meta">
                                    <p class="serif italic pull-left">日期:
                                        <a>${article.timing}</a></p>
                                         <p class="serif italic pull-right">来源:
                                        <a>${article.author}</a></p>
                                </div>
                                <p style="padding: 10px;background-color: #E7E7E7;">摘要：${article.summary}</p>
                                <div>${article.content}</div>
                            </div>
                        </div>
                        <!-- .post -->
                    </div>
                    <!-- .row -->
                </div>
                <!-- .span8 -->
            <div class="span4">
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
			</div><br> <span style="padding-right: 16px; font-size:16px; -position:relative;">手机号码</span><input name="phone" id="phone" size="22" tabindex="1" aria-required="true" class="span8 btn_frame" type="text" style="width:223px;"><b style="color: red;">&nbsp;*</b><span
				for="phone" generated="true" style="display: none;"></span><br>
			<span style="padding-right: 16px; font-size:16px; -position:relative;"">您的邮箱</span><input name="email" id="email" size="22" tabindex="2" class="span8 btn_frame" aria-required="true" type="text" style=" width:223px;">
			<div class="clearfix" style="position:relative; width:346px; height:79px;">
				<button class="btnx-form btn-large " type="button" onclick="submit()" style="position:absolute; -left:0;">提交</button>
				<img src="${base}/index/images/clock.gif" style="position:absolute; right:6px; bottom:8px;">
			</div>
		</div>
		<!-- </form> -->
	</div>
	<div class="info-box -widget search-form  right_bar_down" style="position:relative;">
		<div class="clearfix" style="position:absolute; left:17px; bottom:16px;">
			<a href="${base}/download/jyd.exe"  style="line-height:26px;  display:inline-block;  color:#fff; padding-bottom:6px;">交易客户端（版本号：V2.6.130306.1）</a><a href="${base}/download/jyd.exe" ><img  src="${base}/index/images/down_btn.png"></a>
			<a href="${base}/download/hqfx.exe"  style="line-height:26px;  display:inline-block;  color:#fff; ">行情分析系统（版本号：V96.6.047）</a>&nbsp;&nbsp;&nbsp;<a href="${base}/download/hqfx.exe" ><img  src="${base}/index/images/down_btn.png"></a>
		</div>
	</div>
	<!-- .clearfix -->
	<div class="info-box widget search-form right_bar_server" >
		<div class="server_title">
			<img  src="${base}/index/images/sever_title.png">
		</div>
		<div class="-clearfix  server_article" >
				<p>我们强调“尊重客户，礼待客户”，让客户满意是服务的根本原则。在对待客户的方式上，“客户就是上帝”，以客户为导向，不断满足客户的需求并持续超越客户的期望，是我们全唐人一致的追求。</p>
		</div>
		<!-- .clearfix -->
	</div>
    </div>
    <!-- .span4 -->
<!-- .row -->
        </div>
        <!-- .container -->
	      <div class="container" style="padding-bottom: 20px;">
			<div class="row">
				<div class="down_tab ">
					<div id="down1" class="-row adv-message clearfix">
						<a href="${base}/download/jyd.exe" title="交易端下载"  style="display:block; width:1170px;"><img src="${base}/index/images/Transaction.png"></a>
					</div>
					<div id="down2" class="-row adv-message clearfix" style="display: none;">
						<a href="${base}/download/hqfx.exe" title="行情分析下载" style="display:block; width:1170px;"><img src="${base}/index/images/Quotation.png"></a> 
					</div>
					<!-- .adv-message  -->
				</div>
			</div>
		</div>
		</div>
        <!-- begin footer -->
        <footer>
	  <div class="container">
		<div class="row">
			<div class="span3">
				<div class="footer-widget">
					<h3 class="widget-title">全唐贵金属</h3>
					<div class="clearfix">
						<ul>
							<li class="clearfix">
								<p class="pull-left">
									全唐贵金属始终坚持“以客户为核心，为客户创财富”的发展战略，全心全意为客户服务，为投资者提供专业、公平、公开的服务平台及安全、便捷、优越的交易通道。
								</p>
						  </li>
						</ul>
					</div>
					<!-- <h2 class="brand widget-title">全唐贵金属</h2>
					<br>
					<p class="footer-tag-line">
					</p>
					<p>全唐贵金属始终坚持“以客户为核心，为客户创财富”的发展战略，全心全意为客户服务，为投资者提供专业、公平、公开的服务平台及安全、便捷、优越的交易通道。
					</p> -->
				</div>
			</div>
			<!-- .span3 -->
			<div class="span3">
				<div class="footer-widget">
					<h3 class="widget-title">地址</h3>
					<div class="clearfix">
						<ul>
							<li class="clearfix"><img src="${base}/index/images/icon_dress.png"  style="width:8px; height:12px; float:left; margin:5px 10px 0 0;">
								<p class="pull-left">
									北京市东城区东二环朝阳门银河SOHO<br>C座30519 (朝阳门地铁站G口)
								</p></li>
							<li class="clearfix"><i class="fa fa-phone pull-left"></i>
								<p class="pull-left">010-52420857</p></li>
							<li class="clearfix"><i class="fa fa-envelope-o pull-left"></i>
								<p class="pull-left">
									<a href="Mailto:tanggold@foxmail.com">tanggold@foxmail.com</a>
								</p></li>
						</ul>
					</div>
					<!-- .clearfix -->
				</div>
				<!-- .footer-widget -->
			</div>
			<!-- .span3 -->
			<div class="span3">
				<div class="footer-widget">
					<h3 class="widget-title">公司</h3>
					<ul>
						<li><a title="关于我们" href="aboutus.htm" target="_blank">关于我们</a></li>
						<li><a title="法律声明" href="law.htm" target="_blank">法律声明</a></li>
						<li><a title="联系我们" href="contact.htm" target="_blank">联系我们</a></li>
						<li><a title="站点地图" href="sitemap.htm" target="_blank">站点地图</a></li>
						 <li><script src="http://s19.cnzz.com/z_stat.php?id=1253075202&web_id=1253075202" language="JavaScript"></script></li>
					</ul>
				</div>
				<!-- .footer-widget -->
			</div>
			<!-- .span3 -->
			<div class="span3">
				<div class="footer-widget">
					<h3 class="widget-title">友情链接</h3>
					<ul>
						<li><a title="凤凰财经" href="http://finance.ifeng.com/" target="_blank">凤凰财经</a></li>
						<li><a title="第一金融网" href="http://www.afinance.cn/gold/Index.html" target="_blank">第一金融</a></li>
						<li><a title="和讯白银" href="http://gold.hexun.com/silver/" target="_blank">和讯白银</a></li>
						<!-- <li><a title="龙讯财经" href="http://www.longau.com/" target="_blank">龙讯财经</a></li> -->
						<li><a title="凤凰黄金" href="http://finance.ifeng.com/gold/" target="_blank">凤凰黄金</a></li>
					</ul>
					<!-- .flickr-widget -->
				</div>
				<!-- .footer-widget -->
			</div>
			<!-- .span3 -->
		</div>
	</div>
        </footer>
         
        <!-- end footer -->
        <!-- Javascript  -->
		<script src="../index/js/respond.js"></script>
		<script src="../index/js/jquery.min.js"></script>
		<script src="../index/js/bootstrap.min.js"></script>
		<script src="../index/js/jquery.placeholder.js"></script>
		<script src="../index/js/index.js""></script>
    </body>
</html>