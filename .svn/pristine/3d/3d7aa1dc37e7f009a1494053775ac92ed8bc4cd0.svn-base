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
<link href="${base}/index/css/style.css" rel="stylesheet">
<link href="${base}/index/css/font-awesome.min.css" rel="stylesheet">
<!-- <link href="${base}/index/css/colors.css" rel="stylesheet"> -->

<script src="${base}/index/js/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
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
		$("#name").blur(function() {
			var name_reg = /^[\u0391-\uFFE5]{2,6}$/;
			if ($(this).val() != '' && !name_reg.test($(this).val())) {
				alert('请输入有效的姓名！');
				$(this).focus();
				return;
			}
		});
		$("#phone").blur(function() {
			var phone_reg = /^(13[0-9]|15[0-9]|18[0-9])\d{8}$/;
			if ($(this).val() != '' && !phone_reg.test($(this).val())) { //手机框输入的值符合要求，才可以提交
				alert('请输入有效的手机号码！');
				$(this).focus();
				return;
			}
		});
	});
	function subcheck() {
		var name = $("#name");
		var address = $("#address");
		var phone = $("#phone");
		var error = $("#error");
		if (name.val() == '' || address.val() == '' || phone.val() == '') {
			error.show();
			return;
		}
		$("#formstep2").submit();
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
	<form id="formstep2" name="formstep2" action="step2Submit.htm?v=1"
		method="post">
		<!-- begin header -->
		<header>
			<%@include file="header.jsp"%>
		</header>
		<!-- end header -->
		<div class="container page-content">
			<div class="row">
				<div class="span8 ">
					<div class="reser_left">
						<h2>实盘开户正规平台 资金三方存管安全可靠</h2>
						<div class="tab-content">
							<div id="tab2" class="tab-pane active">
								<h3>第二步：客户协议书</h3>
								<strong style="margin-top: 33px;">客户协议书</strong>
								<!-- <iframe src="iframe1.htm" width="695" height="606"  scrolling="yes" style="border:1px solid #947301; "></iframe> -->
								<div id="content">
									<div class="iframe_1">
										<p style="padding-top: 10px; text-indent: 0px;">
											<span>甲方：天津全唐贵金属经营有限公司</span><span
												style="width: 20px; display: inline-block;"></span><span>乙方：<input
												id="name" name="name" type="text"></span>
										</p>
										<p style="position: relative; text-indent: 0px;">
											<span>地址：北京市朝阳区东三环北路19号中青大厦901室</span><span
												style="width: 20px; display: inline-block;"></span><span
												style="position: absolute; top: 0;">地址：<input
												id="address" name="address" type="text"></span>
										</p>
										<p style="text-indent: 0;">
											<span>电话：010-52420870</span><span
												style="width: 20px; display: inline-block;"></span><span>电话：<input
												id="phone" name="phone" type="text"></span>
										</p>
										<p style="text-indent: 0;">
											<span>传真：010-58850658</span><span
												style="width: 20px; display: inline-block;"></span><span>传真：<input
												id="fax" name="fax" type="text"></span>
										</p>
										<br> <span>鉴于：</span><br>
										<br>
										<p style="text-indent: 20px;">1、天津贵金属交易所有限公司经天津市人民政府同意已正式运营。</p>
										<p style="text-indent: 20px;">2、甲方为天津贵金属交易所有限公司（以下简称“交易所”）的注册会员。</p>
										<p>根据中华人民共和国有关的法律、法规、《天津贵金属交易所交易规则（白银篇）》、《天津贵金属交易所交易规则（钯金篇）》、《天津贵金属交易所交易规则（铂金篇）》及交易所就相关交易品种制定的交易规则（以下合称为“交易所交易规则”）以及其他相关规定，甲、乙双方就交易所贵金属现货及现货延期交收交易业务事项达成如下协议，以资共同遵守。</p>
										<h3>一、交易标的物</h3>
										<p>在交易所提供的交易平台上根据交易所相关交易规则有权进行交易的交易品种。</p>
										<h3>二、交易数量</h3>
										<p>具体细则参照交易所交易规则及业务开展过程中颁布的通知等文件执行。</p>
										<h3>三、报价</h3>
										<p>具体细则参照交易所交易规则等相关规定执行</p>
										<p style="font-weight: bold;">交易报价应以交易系统显示为准，行情分析软件显示的价格仅供参考分析使用，不得被视为交易报价。</p>
										<h3>四、交易时间及结算休市时间</h3>
										<p>1、交易时间：具体细则参照交易所交易规则执行；</p>
										<p>2、结算休市时间：具体细则参照交易所交易规则执行；</p>
										<p>3、开休市时间如果有变动以交易所的通知为准。</p>
										<h3>五、交易方式</h3>
										<p>乙方可自行选择通过电话或网络系统与甲方进行贵金属现货及现货延期交收交易业务。甲方的电话录音、电脑记录等在交易过程中形成的记录均具有法律效力，双方同意将其作为证明双方交易的凭证。</p>
										<h3>六、保证金</h3>
										<p>甲、乙双方的贵金属现货及现货延期交收交易采用保证金的形式进行，并委托与交易所有合作关系的商业银行对乙方缴纳的交易保证金进行资金存管。乙方交易保证金必须通过交易所与保证金存管银行转账系统缴纳，不得以任何现金形式缴纳。乙方的交易保证金不得低于交易所规定的最低保证金比例或数额。甲方有权根据交易所规定对交易保证金的比例进行调整。乙方对缴存的交易保证金不享有任何利息。</p>
										<p>乙方在出入金过程中如发生资金差异等异常情况，交易所有权依照《交易所结算与存管银行间资金差异管理办法》进行处理，且乙方有义务配合交易所处理资金差异情况</p>
										<h3>七、费用</h3>
										<p>乙方在参与交易所贵金属现货及现货延期交收交易过程中，需支付如下费用：手续费、延期费、提货费、交货费及其他在交易过程中所产生的各项费用。其中，</p>
										<p>1、手续费: 由交易所根据实际情况确定并公告全体会员及投资者；</p>
										<p>2、延期费: 由交易所根据实际情况确定并公告全体会员及投资者；</p>
										<p>3、提货费/交货费: 收取标准及细则参照届时有效的交易所交易规则及相关细则执行；</p>
										<p>4、甲方有权根据交易所交易规则和要求对以上费用进行调整。</p>
										<h3>八、结算</h3>
										<p>具体结算办法及细则参照届时有效的《天津贵金属交易所结算管理办法》等规定执行。</p>
										<h3>九、风险管理</h3>
										<p>1、甲方以持仓风险率来计算乙方的持仓风险，持仓风险率的计算方法为：持仓风险率=客户交易账户当前权益÷持仓占用交易保证金×100%；</p>
										<p>2、当乙方的持仓风险率小于
											100％时，乙方交易保证金不足，乙方必须追加交易保证金或者减少持有的头寸，直至乙方交易账户风险率等于或者大于100%。当乙方交易账户风险率等于或低于50％时，甲方将对乙方的全部未平仓合约进行强行平仓。</p>
										<p>3、双方同意，若遇到紧急情况、乙方违规以及甲方发生交易风险或非交易风险等交易所认为紧急或必要的情况，甲方或交易所可以对乙方的未平仓合约进行强行平仓。</p>
										<p>4、由于国家法律、法规、政策的变化、交易所相关规定的修改、紧急措施的出台等原因，甲方及交易所有权根据交易所的规定和要求对乙方的未平仓合约进行全部强行平仓。</p>
										<p>5、甲方及交易所有权依法协助并配合公安机关、人民法院等司法机关对乙方采取的财产保全、强制执行等司法措施，因甲方及交易所协助司法机关对乙方采取财产保全、强制执行等措施导致乙方交易保证金冻结或减少的，乙方应自行承担风控责任；甲方及交易所有权依法协助配合公安机关针对乙方的调查取证工作。</p>
										<h3>十、实物交割</h3>
										<p>具体交割办法和细则参照届时有效的《天津贵金属交易所现货交收管理办法》和《天津贵金属交易所铂金、钯金现货交收管理办法》以及相关细则执行。</p>
										<h3>十一、开户及交易</h3>
										<p>1、乙方在甲方开设一个交易账户，此账户由交易所统一进行监管，并且必须经过交易所的审核，然后进行激活才可进行交易。交易账户实行一户一码制。</p>
										<p>2、乙方开户时，须提供本人有效的身份证件（自然人投资者）或机构代码证、营业执照（机构投资者）等有效证件，并保证所提供开户资料的真实性、完整性、准确性、有效性，同时需要在交易所指定的银行开立结算账户，用以实现与交易所保证金专用账户之间的资金划转。如乙方提供的开户资料有虚假，乙方须承担因此而引起的一切责任后果；当有关资料及信息发生变化时，乙方承诺及时以有效方式通知甲方，如因资料或信息发生变化，乙方未及时通知甲方而造成的损失由乙方承担。</p>
										<p>3、所有的协议和电子化的通讯都须以乙方亲笔签名和电子记录进行确认。</p>
										<p>4、乙方必须对交易账户和所有密码进行妥善保管，并独自承担因保管不善而造成的一切后果。如若确实丢失，乙方须提供其本人有效的身份证件（自然人投资者）或机构代码证、营业执照（机构投资者），填写客户密码重置申请以及其它相关信息，并予以签字确认（机构投资者需加盖公章确认），经甲方和交易所核对无误后，方可将密码恢复至初始状态。具体流程和操作依照《天津贵金属交易所会员单位客户密码重置操作规范》等规定进行。</p>
										<p>5、乙方必须确保其本人（或本机构）有足够的软件和硬件系统与甲方进行交易所现货及现货延期交收交易业务。</p>
										<p>6、乙方的交易账户只限本人（或本机构）使用，不得转借他人，如转借他人所引起的一切纠纷和损失均由乙方承担。</p>
										<p>7、甲方仅通过交易账号和密码以及电话密码核实乙方身份，乙方应妥善保存其本人（或本机构）的交易账号和相关的密码。凡通过客户交易账号及密码登陆进行的交易操作，无论是否确属本人（或本机构）进行的交易，均被视为乙方本人（或本机构）操作。所有因乙方密码遗失及被盗导致的损失，均与甲方及交易所无关，由乙方自行承担。</p>
										<p>8、所有乙方通过网络或电话发出的交易指令，一经发出成交后，均不得撤销或撤回。所有乙方通过网上交易系统发出的交易指令及交易结果，以交易所交易系统记录数据为准。</p>
										<p>9、乙方对当日的交易结算结果有异议时，须在一个工作日内向甲方提出。如果乙方未在前述时限之内提出异议，视为乙方对交易结算单所记载事项的认可。</p>
										<p>10、乙方必须遵守和接受交易所及甲方规定的有关贵金属交易事项的一切规则，包括交易所现行和不时制定或修订的相关制度、规则、办法等。</p>
										<p>11、甲方不接受乙方的任何质押或抵押，乙方也不得将本协议书中的任何权益全部或部分转让。</p>
										<p>12、乙方在提取账户资金时，其最大的取款金额不能超过其交易账户内的可提取金额。</p>
										<p>13、当甲方出现会员资格暂停、终止（或被取消）等情形或因涉嫌存在非交易风险或违规行为等情形被交易所采取限制性措施时，交易所有权依据相关制度规定安排客户安置事宜并有权将客户资料移交给托管会员（或接管会员），乙方应接受并予以配合。交易所的通知、公告自发出之日生效。</p>
										<p>14、为妥善保障交易数据安全、维护交易各方合法权益，甲方委托第三方数据托管机构托管双方的交易数据，双方均同意由交易所将交易数据信息提供给托管数据的第三方机构。</p>
										<h3>十二、违约条款</h3>
										<p>任何一方违反本协议书给对方造成损失的，违约方应承担相应的经济赔偿责任。</p>
										<h3>十三、免责条款</h3>
										<p>1、甲方及甲方工作人员对市场的判断和操作建议仅供参考，甲方及其工作人员向乙方作出获利或不遭受损失的担保或承诺均不具有法律约束力，乙方据此进行交易产生的亏损由乙方自行承担。</p>
										<p>2、由于市场情况或其他的特殊原因，甲方可能无法在乙方指定的价位建仓或平仓，甲方不负有任何责任。</p>
										<p>3、甲方并不能控制电讯信号的中断和连接以及互联网的畅通，也不能保证乙方自身网络设备及电讯设备的稳定性，由此原因而使乙方遭受的损失，由乙方自行承担，甲方不负有任何责任。</p>
										<p>4、乙方电话下单，因电话线路遭受干扰、失灵等所造成的乙方损失，甲方不负有任何责任。</p>
										<p>5、由于价格剧烈波动而出现裂口性的不连续报价引起乙方单据以直接跳空高开或跳空低开的价格成交，以致乙方的亏损超过其权益，此种情况属于系统性不可抗拒的风险，甲方保留其向乙方追索的权利，乙方必须履行其追加保证金的义务，不得提出任何异议。</p>
										<p>6、双方认可，地震、水灾、火灾、暴动、罢工、战争、政府管制、国际或国内的禁止或限制以及停电、技术故障、电子故障等均为不可抗力因素，因不可抗力因素（包括但不仅限于上述因素）导致的交易中断、延误等风险，甲方不承担责任，但应在条件允许的范围内采取必要的补救措施以减少因不可抗力造成的损失。</p>
										<p>7、由于发生不可抗力及国家有关法律、法规、规章、政策的改变、紧急措施的出台等导致交易系统临时或永久性关闭及其他风险，甲方不承担责任。</p>
										<h3>十四、保证条款</h3>
										<p>1、甲方保证，甲方及甲方工作人员均不得与乙方私下达成交易，以利益共享、风险共担为承诺，利用客户资金从事代客理财业务。</p>
										<p>2、乙方保证，乙方不得与甲方或甲方工作人员私下达成交易，以利益共享、风险共担为承诺，委托甲方及甲方工作人员从事代客理财业务。</p>
										<h3>十五、其他</h3>
										<p>1、本协议经甲、乙双方适当签署后生效，本协议一式两份，甲、乙双方各持一份，具有同等法律效力。</p>
										<p>2、本协议的所有条款，对于甲方和乙方均具有法律约束力，任何一方均不得违反。本协议的修订或补充须以书面方式进行，并由双方签署确认。</p>
										<p>3、《天津贵金属交易所交易规则（白银篇）》、《天津贵金属交易所交易规则（钯金篇）》、《天津贵金属交易所交易规则（铂金篇）》及交易所就相关交易品种制定的交易规则、《天津贵金属交易所风险控制管理办法》、《天津贵金属交易所现货交收管理办法》、《天津贵金属交易所铂金、钯金现货交收管理办法》、《天津贵金属交易所结算管理办法》、《交易所结算与存管银行间资金差异管理办法》、《天津贵金属交易所投资者开销户管理办法》、《天津贵金属交易所非交易风险处置办法》等交易所现行和未来制定、修改的制度、规则、办法等将作为本协议书的附件，本协议书的附件为本协议书不可分割的部分，与本协议书具有同等的法律效力，双方均应遵照执行。乙方承诺已充分阅读本协议书及交易所现行的制度、规则、办法等规定，包括其中有关甲方的免责条款。</p>
										<p>4、本协议书各项条款的解释权在甲方。如甲、乙双方就本协议书发生争议，应以友好协商的原则商议解决。经协商不能达成一致意见的可向交易所申请调解或提交中国国际经济贸易仲裁委员会天津国际经济金融仲裁中心，按照申请仲裁时该会届时有效的仲裁规则进行仲裁。仲裁裁决是终局的，对双方均有约束力。</p>
										<p>5、乙方可以依据届时有效的《天津贵金属交易所投资者开销户管理办法》等相关规定，通过销户或依据交易所制度规定的其他方式终止本协议。终止本协议时，乙方必须结清与交易所和甲方的所有费用和欠款，且在终止协议当天无任何成交记录。</p>
										<p>6、除非本协议另有约定或交易所另有规定，本协议有效期至甲方被交易所终止会员资格之日或甲乙双方解除本协议之日。</p>
										<p>7、本协议书为依据现行有效的法律、法规、政策、规章及交易所规则所订。如因有关法律、法规、政策、规章、交易所规则等发生变动，导致本协议书相关条款与其规定相抵触的，应以该等规定为准；需要依据该等变动对本协议书相关条款进行调整的，甲、乙双方同意通过签订补充协议等书面方式进行约定。</p>
										<p style="padding-bottom: 60px;"></p>
									</div>
								</div>
							</div>
							<div class="read_agree">
								<span id="error"
									style="float: left; display: none; color: red; font-size: 16px;">请填写完整协议信息</span><input
									type="checkbox" id="checked" /><span>阅读并同意“客户协议书”</span>
							</div>
							<div class="back_submit">
								<a href="reservation.htm" class="back_submit_a"></a> <a
									id="before" class="hover"></a> <a id="after"
									onclick="subcheck()" href="javascript:void(0)" class="hover1">同意并继续</a>
							</div>
						</div>
					</div>
				</div>
				<div class="span4 ">
					<div class="reser_right">
						<h2>实盘开户流程</h2>
						<div class="reser_right_content">
							<ul>
								<li class="bg">第一步：风险揭示书</li>
								<li class="bg active">第二步：客户协议书</li>
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
		</div>
		<!-- begin footer -->
		<footer>
			<%@include file="footer.jsp"%>
		</footer>
		<!-- end footer -->
		<script type="text/javascript" src="${base}/index/js/respond.js"></script>
		<script type="text/javascript" src="${base}/index/js/bootstrap.min.js"></script>
		<script type="text/javascript"
			src="${base}/index/js/jquery.placeholder.js"></script>
		<script type="text/javascript" src="${base}/index/js/custom.js"></script>
		<script type="text/javascript" src="${base}/index/js/common.js"></script>
	</form>
</body>
</html>