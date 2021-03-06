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
<!-- <link href="${base}/index/css/colors.css" rel="stylesheet">-->

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
<form name="name1"  action="step4.htm?v=1"  method="post">
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
						<div id="tab3" class="tab-pane active" >
							<h3>第三步：开户协议—投资者权责告知函</h3>
							<strong style="margin-top:33px;">投资者权责告知函</strong>
							<!-- <iframe src="iframe1.htm" width="695" height="606"  scrolling="yes" style="border:1px solid #947301; "></iframe> -->
							<div id="content">
								<div class="iframe_1">
									<p style="text-align:center; font-weight:bold;">交易数据托管投资者权责告知函</p>
									<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;尊敬的投资者：</span>
									<p>为防控和减少在交易运营中各类争议的发生,维护您的合法权益，我公司委托天津市鼎信交易数据托管中心有限公司（以下简称“托管中心”）为我公司和您提供交易数据托管和鉴证服务，特将相关业务及您的权利、义务、责任告知如下：</p>
									<p>一、托管中心为您设立托管中心专用账户并开设专用邮箱，在每个交易日结束后，将您当日交易数据相关信息通过向您专用账户和专用邮箱发送邮件的方式提供每日数据发送服务，每日发送的内容为：1、每日交易结算帐单发送；2、各类业务通知发送。每日数据发送服务为免费服务，您不需要向托管中心或我公司交纳任何费用。</p>
									<p>二、托管中心为您提供历史交易信息的查询服务，历史交易信息暨托管中心专用账户和专用邮箱中存续时间超过30天的信息，包括但不限于交易结算账单、各类业务通知等。您可以向托管中心申请查询历史交易信息。历史交易信息查询服务为收费服务，您需要向托管中心交纳一定的费用，收费标准为50元/次。</p>
									<p>三、托管中心下设鉴证委员会，为您提供鉴证服务。对于交易过程中发生的纠纷，您可向鉴证委员会申请调取相关交易信息并由鉴证委员会出具证明，做为仲裁的证据。鉴证服务为收费服务，您需要向托管中心交纳一定的费用，收费标准为200元/次。</p>
									<p>四、托管中心托管数据和交易信息的取得</p>
									<p>为保障托管数据的客观真实性，托管中心以其与天津贵金属交易所有限公司约定的方式向天津贵金属交易所有限公司取得我公司与您的交易数据。</p>
									<p>五、注意事项：</p>
									<p>1.您的专用账户和专用邮箱密码是唯一的，为保障信息安全，建议您首次登陆后修改相关密码。登陆网址为<a href="http：//mail.dxdmc.com">http：//mail.dxdmc.com。</a></p>
									<p>2.此专用邮箱仅作为接收相关交易数据信息使用，不能接收来自非托管中心的邮件，且不能发送邮件。</p>
									<p>3.为保证您的邮箱能正常接收每日交易数据信息，邮箱管理系统定期清理邮箱帐户，超过30天的邮件系统自动删除。如有需要请及时备份邮箱信息。</p>
									<p>4.您应该妥善保管自己的专用账户和专用邮箱的密码，任何使用该密码登陆的行为视为您的行为。</p>
									<p>5.如果发生密码遗失，应通过我公司向托管中心提出挂失和密码重置；期间造成的损失由您自行承担。</p>
									<p>6.您应该妥善使用专用账户和邮箱，做好交易信息保密工作。因使用不当及未做好保密工作造成的相应后果由您自行承担。</p>
									<p>六、其他</p>
									<p>1.托管中心所提供服务的相关系统和软件的知识产权为托管中心和相关权利人所有。</p>
									<p>2.托管中心由于不可抗力风险，包括地震、水灾、火灾、暴动、罢工、战争、政府管制、国际或国内的禁止或限制以及停电、技术故障、电子故障及其它无法预测和防范的事件不能及时提供相关服务的，托管中心不承担任何责任。</p>
									<p><u>天津全唐贵金属经营有限公司</u></p>
   									<p> 本人（本单位）已认真阅读以上全部条款及附件并完全理解，本人（本单位）认可以上全部条款及附件的内容。</p>
									<p style="padding-bottom:100px;"></p>
								</div>
							</div>	
							</div>	
							<div class="read_agree">
								<input type="checkbox"  id="checked" /><span>阅读并同意“客户协议书”</span>
							</div>	 
							<div class="back_submit">
								<a href="step2.htm?v=-1" class="back_submit_a"></a>
								<a id="before" class="hover" ></a>
								<a id="after"  href="step4.htm?v=1&protocolid=${protocolid}"  class="hover1" >同意并继续</a>
							</div>
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
								<li class="bg active">第三步：权责告知函</li>
								<li class="bg">第四步：填写开户信息和银行信息</li>
								<li class="bg">第五步：开户成功</li>
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
	<script type="text/javascript"  src="${base}/index/js/respond.js"></script>
	<script type="text/javascript"  src="${base}/index/js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="${base}/index/js/jquery.placeholder.js"></script>
	<script type="text/javascript"  src="${base}/index/js/custom.js"></script>
	<script type="text/javascript"  src="${base}/index/js/common.js"></script>
</form>	
</body>
</html>