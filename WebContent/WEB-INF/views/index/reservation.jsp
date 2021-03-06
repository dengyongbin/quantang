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

<script type="text/javascript"  src="${base}/index/js/jquery.min.js"></script>
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
<script  type="text/javascript">
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
<form name="name1"  action="step2.htm"  method="post">
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
						<div id="tab1" class="tab-pane active">
							<h3>第一步：风险揭示书</h3>
							<p>
								风险提示及免责条款<br>
								1、投资有风险，入市需谨慎。<br>
								2、严禁会员单位或其工作人员向投资者进行代客理财业务。<br>
								3、不向投资者承诺获利保证。<br>
								4、通讯或网络故障导致中断或延时，可能会对投资产生影响。<br>
								5、理解一切风险，具有承受能力。<br>
							</p>
							<strong>风险揭示书</strong>
							<!-- <iframe src="iframe.htm" width="695" height="606"  scrolling="yes" style="border:1px solid #947301; "></iframe> -->
							<div id="content">
								<div class="iframe_1">
									<span>尊敬的投资者：</span><br><br>
									<p>天津贵金属交易所（以下简称交易所）的现货延期交收交易业务是一种潜在收益和潜在风险较高的投资业务,<u>天津全唐贵金属经营有限公司</u>是具有交易所会员资格的企业法人，客户签署本协议，代表其与<u>天津全唐贵金属经营有限公司</u>未来进行现货延期交收交易业务的风险已有了充分的认知与了解。为了向您充分揭示投资风险,并且帮助您评估和确定自身的风险承受能力。根据有关法律、法规、规章、制度、规则等的规定，特为您提供这份风险揭示书，请认真阅读并亲笔签署。</p>
									<h3> 一、重要提示</h3>
									  <p>1、交易所作为天津滨海新区金融创新、先行先试项目，与现有的国内其他交易市场相比，在交易模式、交易规则等方面存在着一定的差别，请您在参与投资之前务必详尽的了解本市场投资的基本知识和相关风险及交易所有关的业务规则等，依法合规地从事该项投资业务；</p>
									    <p>2、交易所为了确保市场“公开、公平、公正”和健康稳定地发展，将采取更加严格的措施，强化市场的监管。请您务必密切地关注有关于该市场的公告、风险提醒等信息，及时了解市场风险状况，做到理性投资，切忌盲目跟风；</p>
										<p>3、交易所的现货延期交收交易业务不适合利用养老基金、债务资金（如银行贷款）等进行投资的投资者。只适合于满足以下全部条件的投资者：</p>
										<p style="line-height:20px; font-size:13px;">	A、年满18周岁并具有完全民事行为能力的中国公民或依法在中华人民共和国境内注册成立的企业法人或其他经济组织；</p>
										<p style="line-height:20px; font-size:13px;">	B、能够充分理解有关于此交易的一切风险，并且具有风险承受能力；</p>
										<p style="line-height:20px; font-size:13px;">	C、因投资失误而造成账户资金部分或全部损失、仍不会改变其正常的生活方式或影响其正常生产经营状况的；</p>
										<p style="line-height:20px; font-size:13px;">	D、不具有交易所开户管制相关制度规定的禁止开户情形。</p>
										<p>4、您在开通交易之前，请配合会员开展投资者的适当性管理工作，完整、如实地提供开户所需要的信息，不得采取弄虚作假等手段规避有关的要求，否则，交易所有权拒绝为您开通交易服务；</p>
										<p>5、本风险揭示书风险揭示事项仅为列举性质，未能详尽的列明有关该市场的所有风险因素，您在参与该市场投资之前，还应认真的对其他可能存在的风险因素有所了解和掌握。</p>
									<h3>二、相关的风险揭示</h3>
									<span>（一）政策风险</span>
									<p>国家法律、法规、政策以及规章的变化，紧急措施的出台，相关监管部门监管措施的实施，交易所交易规则的修改等原因，均可能会对您的投资产生影响，您必须承担由此导致的损失。</p>
									<span>（二）价格波动风险</span>
									<p>本市场的交易品种的价格受多种因素的影响，并且影响机制非常复杂，您在实际操作中存在出现投资失误的可能性，如果不能有效控制风险，则可能遭受较大的损失，您必须独自承担由此导致的一切损失。</p>
									<span>（三）技术风险</span>
									<p>1、此业务通过电子通讯技术和互联网技术来实现。由通讯或网络故障导致的某些服务中断或延时可能会对您的投资产生影响。</p>
									<p>2、您的电脑、操作系统等软硬件环境有可能由于自身原因和/或被病毒、网络黑客攻击等原因，从而导致您的交易系统连接受到影响，使您的投资决策无法正确和/或及时执行。</p>
									<p>对于上述不确定因素带来的风险，有可能会对您的投资产生影响，您应该充分了解并承担由此造成的全部损失。</p>
									<span>（四）交易风险</span>
									<p>1、您需要了解交易所的现货延期交收交易业务具有低保证金和高杠杆比例的投资特点，可能导致快速的盈利或亏损。若建仓的方向与行情的波动相反，会造成较大的亏损，根据亏损的程度，您必须有条件满足随时追加保证金的要求，否则其持仓将会被强行平仓，您必须承担由此造成的全部损失。</p>
									<p>2、本交易市场的价格可能会与其他途径的报价存在微弱的差距，并不能保证上述交易价格与其他市场保持完全的一致性。</p>
									<p>3、您在交易系统内，通过网上终端或通过会员以电话的方式所提交的市价单一经成交，即不可撤销，您必须接受这种方式可能带来的风险。</p>
									<p>4、交易所提供的交易系统中的指价建仓和指价平仓功能可能由于各种原因导致交易无法在达到触发条件时成交，如果您无法理解或承受上述风险，我们建议您不要使用该功能进行交易；如果您坚持使用该功能，我们将认为您已经完全理解并愿意承担使用该功能的全部风险，并愿意承担使用该功能所带来的一切后果。 </p>
									<p>5、交易所禁止会员（及其分支机构）、会员居间人及前述主体的工作人员与您分享收益或共担风险，或利用您的资金从事任何代客理财业务。</p>
									<p>6、您的成交单据必须建立在自主决定的基础之上。交易所、会员（及其分支机构）、会员居间人及前述主体的工作人员提供的任何关于市场的分析和信息，仅供投资者参考，不构成任何要约或承诺。由此而造成的交易风险由您自行承担。</p><br>
									<span>（五）不可抗力风险</span>
									<p>任何因交易所不能够控制的原因，包括但不限于地震、水灾、火灾、暴动、罢工、战争、政府管制、国际或国内的禁止或限制以及停电、技术故障、电子故障等其他无法预测或防范的不可抗力事件，都有可能会对您的交易产生影响，您应该充分了解并承担由此造成的全部损失。</p>
									<p>最后，我们诚挚地希望和建议您，从风险承受能力等自身实际情况出发，审慎地决定是否参与此市场的投资，合理的配置自己的金融资产。</p>
									<p style="color:red; font-weight:bold;">本人（本机构）已认真阅读以上风险说明并完全理解和同意，自愿承担由此造成的风险，以及由此带来的一切可能的损失。</p>
									<p style="padding-bottom:80px;"></p>
								</div>
							</div>	 
							<div class="read_agree">
								<input type="checkbox"  id="checked" /><span>阅读并同意“风险揭示书”</span>
							</div>	
							<div class="back_submit"">
								<!-- <a href="#" class="back_submit_a"></a> -->
								<a id="before" class="hover"></a>
								<a id="after"  href="step2.htm?v=1"  class="hover1" >同意并继续</a>
							</div>
						</div>
					</div>	
				</div>
				</div>
				<div class ="span4 ">
					<div class=" reser_right">
						<h2>实盘开户流程</h2>
						<div class="reser_right_content">
							<ul>
								<li class="bg  active">第一步：风险揭示书</li>
								<li class="bg">第二步：客户协议书</li>
								<li class="bg">第三步：权责告知函</li>
								<li class="bg">第四步：填写开户信息和银行信息</li>
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
	<script type="text/javascript"  src="${base}/index/js/respond.js"></script>
	<script type="text/javascript"  src="${base}/index/js/bootstrap.min.js"></script>
	<script type="text/javascript"  src="${base}/index/js/jquery.placeholder.js"></script>
	<script type="text/javascript"  src="${base}/index/js/custom.js"></script>
	<script type="text/javascript"  src="${base}/index/js/common.js"></script>
</form>	
</body>
</html>