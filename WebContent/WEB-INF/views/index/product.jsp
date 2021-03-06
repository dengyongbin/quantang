<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>产品介绍 | 全唐贵金属</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="keywords" content="贵金属,全唐贵金属,钯金、铂金、镍投资,贵金属投资,投资理财" />
<meta name="description" content="我们强调“尊重客户，礼待客户”，让客户满意是服务的根本原则。全唐贵金属的每一位客户、每一份开户合约、每一个咨询电话，都将是规范、专业和客户利益至上原则的体现。 在对待客户的方式上，“客户就是上帝”，以客户为导向，不断满足客户的需求并持续超越客户的期望，是我们全唐人一致的追求。">

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
<style type="text/css">
#optiontab{
	bottom: -0px;
	z-index: 12;
	position: relative;
	background: #cbab4f;
	border:1px solid #937303; 
	height:42px;
	}
#optiontab li {
	width:76px;
	line-height:42px;
	float:left;
	text-align: center;
}
#optiontab li  a{
	width:76px;
	line-height:42px;
	float:left;
	text-align: center;
	color:#fff;
}
#optiontab  .active{
	background:#937303;
}
.nav-tabs {
	font-size: 14px;
	margin-bottom: 0px;
    /*background: #BB3826; */
    background:#f2f0de;
 }
</style>
</head>
<body>

	<header>
		<%@include file="header.jsp"%>
	</header>
	<!-- end header -->

	<div class="container page-content">
		<div class="row">
			<div class="span8" >
				<!-- <div class="jybigktitle6 hd jysyhqtitle02">
					<ul>
						<li class="on"><span class="first">现货白银</span></li>
						<li class=""><span>黄金T+D</span></li>
						<li class=""><span>纸黄金</span></li>
					</ul>
				</div> -->
				<ul id="pro-optionul" >
					<li class="active"><a href="#tab1" data-toggle="tab">产品概况</a></li>
					<li class=""><a href="#tab2" data-toggle="tab">产品特点</a></li>
					<li id="select_list"><a href="#tab3" data-toggle="tab">产品细则</a>
					<li class=""><a href="#tab4" data-toggle="tab">盈亏计算</a></li>
					<li class=""><a href="#tab5" data-toggle="tab">权益保障</a></li>
				</ul>
				<!-- <img src="${base}/index/images/about_us_bar.png"  style="width:2px; height:509px; position:absolute: top:34px; left:-2px; z-index:2;"> --> 
				<div class="box-container  padding30"  style=" width:772px; border:1px solid #906f00;">
					<div class="tab-content" >
						<div id="tab1" class="tab-pane active"  >
							<!-- <h2 class="page-title">产品概括</h2><hr> -->
							<p style="border-bottom:1px solid #7d6600; padding-bottom:35px;">我们的产品交易平台是国内唯一与国际贵金属市场合法接轨的贵金属投资平台。贵金属在人类数千年的文明史中一直是货币和财富的代名词，商品贸易的媒介，以及衡量价格的尺度。随着贵金属资源的大量开采与存世量的急剧减少，贵金属已经超越了传统保值品的范畴，也已经成为全球各国战略储备的资源。纵观全球各大主权资金，无不将贵金属列为投资组合中必要的配置。当下，在维护国际金融秩序稳定与和谐发展的过程中，贵金属履行“最后卫兵”这一重要职责。</p>
							<div class="product-text">
									<img  src="${base}/index/images/product_list.jpg" style="float:left; padding-top:23px;" >
									<div  class="product-list">
										<!--<div class="product-content" style="padding: 0 0 15px 60px;"> </div>  -->
											<p>（简称Ag）是一种应用历史悠久的贵金属，至今已有4000多年的历史。由于银独有的优良特性，人们曾赋予它货币和装饰双重价值。银与金一样，也是金属中的"贵族"，被称为"贵金属"，过去只被用作货币与制作装饰品。现在，银在工业上有了三项重要的用途：电镀、制镜与摄影。</p>
											<p>（简称Pt）是一种天然的白色贵金属。在国际和国内的金融市场，铂金的金融属性越来越显现其巨大的潜力，国务院下发规范黄金交易市场的相关文件后，许多交易平台纷纷放弃黄金转战铂金市场。在自然界铂金的储量比黄金稀少，全世界铂金的年产量，只有黄金年产量的5%。</p>
											<p>（简称Pd）是世界上稀有的贵金属之一，与铂金、黄金、银同为国际贵金属现货、期货的交易品种。它是一种不可再生的稀缺资源，随着不断的开采和市场需求的提高，其未来价值还将逐渐体现出来。</p>
											<p>（简称Ni）近似银白色、硬而有延展性并具有铁磁性的金属元素，它能够高度磨光和抗腐蚀。镍属于亲铁元素。在地核中含镍最高，是天然的镍铁合金。在地壳中铁镁质岩石含镍高于硅铝质岩石，例如橄榄岩含镍为花岗岩的1000倍，辉长岩含镍为花岗岩的80倍。</p>
											<p>（简称Cu）一种化学元素，它的原子序数是29，是一种过渡金属。铜是人类发现最早的金属之一，也是人类广泛使用的第一种金属。铜和它的一些合金有较好的耐腐蚀能力，又因为有光泽，容易加工，因此被用于制造货币。铜也被用于制造武器、器皿以及电缆。</p>
											<p>（简称Al）银白色轻金属。有延展性。商品常制成棒状、片状、箔状、粉状、带状和丝状。在潮湿空气中能形成一层防止金属腐蚀的氧化膜。铝粉和铝箔在空气中加热能猛烈燃烧，并发出眩目的白色火焰。易溶于稀硫酸、硝酸、盐酸、氢氧化钠和氢氧化钾溶液，难溶于水。铝元素在地壳中的含量仅次于氧和硅，居第三位，是地壳中含量最丰富的金属元素。</p>
									</div>
							</div>
						</div>
						<!-- .row -->
						<div id="tab2" class="tab-pane"  style="padding-right:10px;">
							<p style=" padding-bottom:33px;  border-bottom:1px solid #7d6600;">天津贵金属交易所黄金现货（简称天通金）、白银现货交易方式灵活，价格全球联动，24小时交易，市场公平，信息透明，与国际上黄金、白银投资的主流模式一致，让您充分把握黄金、白银的投资良机。</p>
							<span class="t1"></span>
							<div class="pro-feture-content">
								<h2 class="pro-features ">T+0双向交易机制</h2>
								<p>无论价格怎样变化，可以先买入再卖出（做多），也可以先卖出再买入（做空），当日即可以数次进出，增加了盈利的机会。</p>
							</div>
							<span class="t2"></span>
							<div class="pro-feture-content">
								<h2 class="pro-features"  style="color:#939393;">银行三方存管，资金充分安全</h2>
								<p>投资者投资账户的资金由工商银行、建设银行、交通银行、光大银行、中心银行、农业银行等进行第三方存管，充分保证了资金的安全，存取款自有、方便。</p>
							</div>
							<span class="t3"></span>
							<div class="pro-feture-content">	
								<h2 class="pro-features">交易迅速 即时成交</h2>
								<p>在通常的市况下，所有订单无需等待，都可以在指定的价位或者指定的方位内即时成交。</p>
							</div>
							<span class="t4"></span>
							<div class="pro-feture-content">
								<h2 class="pro-features"  style="color:#939393;">接轨国际投资</h2>
								<p>国际先进的交易机制，24小时连续交易，价格与国际市场同步；影响贵金属价格的因素透明；投资者的每一笔委托都是经由交易所交易系统执行。</p>
							</div>	
							<span class="t5"></span>
							<div class="pro-feture-content">
								<h2 class="pro-features">无印花税 手续费低</h2>
								<p>贵金属交易无印花税，每次交易仅收取成交金额万分之八的手续费，有效降低了投资者的交易成本。</p>
							</div>
							<span class="t6"></span>
							<div class="pro-feture-content">
								<h2 class="pro-features"  style="color:#939393;">20倍，全国杠杆比率最高的投资品种</h2>
								<p>最低只需5%的交易保证金，杠杆比率为20倍，若白银价格同方向变化1%，即可获利10%以上，让投资者可以充分提升资金利用效率。</p>
							</div>	
							<!-- .row -->
						</div>

						<div id="tab3" class="tab-pane" style="position:relative; height:688px; ">
							<div class="tab_list" style="width:458px;">
								<ul class="nav nav-tabv" id="optiontab" >
									<li class="active"><a href="#tab3_1_content" data-toggle="tab">现货白银</a></li>
									<li><a href="#tab3_2_content" data-toggle="tab">现货铂金</a></li>
									<li><a href="#tab3_3_content" data-toggle="tab">现货钯金</a></li>
									<li><a href="#tab3_4_content" data-toggle="tab">现货镍</a></li>
									<li><a href="#tab3_5_content" data-toggle="tab">现货铜</a></li>
									<li><a href="#tab3_6_content" data-toggle="tab">现货铝</a></li>
								</ul>
							</div>
							<div class="tab-content" style="position:absolute; top:43px;">
								<div id="tab3_1_content" class="tab-pane active">
									<table class="data_table" style="clear: both" width="708px;">
										<tbody>
											<tr>
												<th width="20%">交易品种</th>
												<th width="25%">现货白银30kg</th>
												<th width="26%">现货白银</th>
												<th width="30%">现货白银1000</th>
											</tr>
											<tr>
												<td><strong>交易单位</strong></td>
												<td>30千克/手</td>
												<td>15千克/手</td>
												<td>1千克/手</td>
											</tr>
											<tr>
												<td><strong>最大持仓限额</strong></td>
												<td>300手</td>
												<td>300手</td>
												<td>3000手</td>
											</tr>
											<tr>
												<td><b>当前延期费率</b></td>
												<td>成交金额的0.02%/日</td>
												<td>成交金额的0.02%/日</td>
												<td>成交金额的0.02%/日</td>
											</tr>
											<tr>
												<td><strong>强行平仓</strong></td>
												<td colspan="5">风险率=帐户净值/持仓占用交易保证金,当风险率达到50%时,剩余持仓全部强行平仓</td>
											</tr>
											<tr>
												<td><b>报价基准</b></td>
												<td colspan="5">天津贵金属交易所以伦敦贵金属现货市场价格为基础，综合国内贵金属市场价格及中国人民银行人民币兑美元基准汇率，连续报出人民币现货价格</td>
											</tr>
											<tr>
												<td><b>报价单位</b></td>
												<td>元(RMB)/千克</td>
												<td>元(RMB)/千克</td>
												<td>元(RMB)/千克</td>
											</tr>
											<tr>
												<td><b>最小变动价位</b></td>
												<td>1元/千克</td>
												<td>1元/千克</td>
												<td>1元/千克</td>
											</tr>
											<tr>
												<td><b>买卖价差</b></td>
												<td>8元/千克</td>
												<td>8元/千克</td>
												<td>8元/千克</td>
											</tr>
											<tr>
												<td><b>每日价格波动限制</b></td>
												<td>无</td>
												<td>无</td>
												<td>无</td>
											</tr>
											<tr>
												<td><b>交易时间</b></td>
												<td colspan="5">周一早8:00至周六早4:00</td>
											</tr>
											<tr>
												<td><b>结算休市时间</b></td>
												<td colspan="5">交易日内，凌晨4:00至6:00(夏令时）  4:00至7:00（冬令时）</td>
											</tr>
											<tr>
												<td><b>最低交易保证金</b></td>
												<td colspan="5">成交金额的5%</td>
											</tr>
											<tr>
												<td><b>交易手续费</b></td>
												<td colspan="5">成交金额的0.08%</td>
											</tr>
											<tr>
												<td><b>单笔最大交易限额</b></td>
												<td>50手</td>
												<td>50手</td>
												<td>300手</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div id="tab3_2_content" class="tab-pane">
									<table class="data_table" style="clear: both" width="100%">
										<tbody>
											<tr>
												<th width="20%">交易品种</th>
												<th width="40%">现货铂金</th>
												<th width="40%">现货铂金100</th>
											</tr>
											<tr>
												<td><strong>交易单位</strong></td>
												<td>1千克/手</td>
												<td>100克/手</td>
											</tr>
											<tr>
												<td><strong>最大持仓限额</strong></td>
												<td>20手</td>
												<td>200手</td>
											</tr>
											<tr>
												<td><b>当前延期费率</b></td>
												<td>成交金额的0.02%/日</td>
												<td>成交金额的0.02%/日</td>
											</tr>
											<tr>
												<td><strong>强行平仓</strong></td>
												<td colspan="5">风险率=帐户净值/持仓占用交易保证金,当风险率达到50%时,剩余持仓全部强行平仓</td>
											</tr>
											<tr>
												<td><b>报价基准</b></td>
												<td colspan="5">天津贵金属交易所以伦敦贵金属现货市场价格为基础，综合国内贵金属市场价格及中国人民银行人民币兑美元基准汇率，连续报出人民币现货价格</td>
											</tr>
											<tr>
												<td><b>报价单位</b></td>
												<td>元(RMB)/克</td>
												<td>元(RMB)/克</td>
											</tr>
											<tr>
												<td><b>最小变动价位</b></td>
												<td>0.01元/克</td>
												<td>0.01元/克</td>
											</tr>
											<tr>
												<td><b>买卖价差</b></td>
												<td>上一交易日结算价0.2%</td>
												<td>上一交易日结算价0.2%</td>
											</tr>
											<tr>
												<td><b>每日价格波动限制</b></td>
												<td>无</td>
												<td>无</td>
											</tr>
											<tr>
												<td><b>交易时间</b></td>
												<td colspan="5">周一早8:00至周六早4:00</td>
											</tr>
											<tr>
												<td><b>结算休市时间</b></td>
												<td colspan="5">交易日内，凌晨4:00至6:00(夏令时）  4:00至7:00（冬令时）</td>
											</tr>
											<tr>
												<td><b>最低交易保证金</b></td>
												<td colspan="5">成交金额的5%</td>
											</tr>
											<tr>
												<td><b>交易手续费</b></td>
												<td colspan="5">成交金额的0.08%</td>
											</tr>
											<tr>
												<td><b>单笔最大交易限额</b></td>
												<td>5手</td>
												<td>50手</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div id="tab3_3_content" class="tab-pane">
									<table class="data_table" style="clear: both" width="100%">
										<tbody>
											<tr>
												<th width="20%">交易品种</th>
												<th width="40%">现货钯金</th>
												<th width="40%">现货钯金100</th>
											</tr>
											<tr>
												<td><strong>交易单位</strong></td>
												<td>1千克/手</td>
												<td>100克/手</td>
											</tr>
											<tr>
												<td><strong>最大持仓限额</strong></td>
												<td>20手</td>
												<td>200手</td>
											</tr>
											<tr>
												<td><b>当前延期费率</b></td>
												<td>成交金额的0.02%/日</td>
												<td>成交金额的0.02%/日</td>
											</tr>
											<tr>
												<td><strong>强行平仓</strong></td>
												<td colspan="5">风险率=帐户净值/持仓占用交易保证金,当风险率达到50%时,剩余持仓全部强行平仓</td>
											</tr>
											<tr>
												<td><b>报价基准</b></td>
												<td colspan="5">天津贵金属交易所以伦敦贵金属现货市场价格为基础，综合国内贵金属市场价格及中国人民银行人民币兑美元基准汇率，连续报出人民币现货价格</td>
											</tr>
											<tr>
												<td><b>报价单位</b></td>
												<td>元(RMB)/克</td>
												<td>元(RMB)/克</td>
											</tr>
											<tr>
												<td><b>最小变动价位</b></td>
												<td>0.01元/克</td>
												<td>0.01元/克</td>
											</tr>
											<tr>
												<td><b>买卖价差</b></td>
												<td>上一交易日结算价0.4%</td>
												<td>上一交易日结算价0.4%</td>
											</tr>
											<tr>
												<td><b>每日价格波动限制</b></td>
												<td>无</td>
												<td>无</td>
											</tr>
											<tr>
												<td><b>交易时间</b></td>
												<td colspan="5">周一早8:00至周六早4:00</td>
											</tr>
											<tr>
												<td><b>结算休市时间</b></td>
												<td colspan="5">交易日内，凌晨4:00至6:00(夏令时）  4:00至7:00（冬令时）</td>
											</tr>
											<tr>
												<td><b>最低交易保证金</b></td>
												<td colspan="5">成交金额的5%</td>
											</tr>
											<tr>
												<td><b>交易手续费</b></td>
												<td colspan="5">成交金额的0.08%</td>
											</tr>
											<tr>
												<td><b>单笔最大交易限额</b></td>
												<td>5手</td>
												<td>50手</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div id="tab3_4_content" class="tab-pane">
									<table class="data_table" style="clear: both" width="100%">
										<tbody>
											<tr>
												<th width="20%">交易品种</th>
												<th width="40%">现货镍</th>
												<th width="40%">现货镍100</th>
											</tr>
											<tr>
												<td><strong>交易单位</strong></td>
												<td>1000KG/手</td>
												<td>100KG/手</td>
											</tr>
											<tr>
												<td><strong>最大持仓限额</strong></td>
												<td>60手</td>
												<td>600手</td>
											</tr>
											<tr>
												<td><b>当前延期费率</b></td>
												<td>成交金额的0.02%/日</td>
												<td>成交金额的0.02%/日</td>
											</tr>
											<tr>
												<td><strong>强行平仓</strong></td>
												<td colspan="5">风险率=帐户净值/持仓占用交易保证金,当风险率达到50%时,剩余持仓全部强行平仓</td>
											</tr>
											<tr>
												<td><b>报价基准</b></td>
												<td colspan="5">天津贵金属交易所以伦敦贵金属现货市场价格为基础，综合国内贵金属市场价格及中国人民银行人民币兑美元基准汇率，连续报出人民币现货价格</td>
											</tr>
											<tr>
												<td><b>报价单位</b></td>
												<td>元(RMB)/千克</td>
												<td>元(RMB)/千克</td>
											</tr>
											<tr>
												<td><b>最小变动价位</b></td>
												<td>0.01元/克</td>
												<td>0.01元/克</td>
											</tr>
											<tr>
												<td><b>买卖价差</b></td>
												<td>上一交易日结算价0.2%</td>
												<td>上一交易日结算价0.2%</td>
											</tr>
											<tr>
												<td><b>每日价格波动限制</b></td>
												<td>无</td>
												<td>无</td>
											</tr>
											<tr>
												<td><b>交易时间</b></td>
												<td colspan="5">周一早8:00至周六早2:00</td>
											</tr>
											<tr>
												<td><b>结算休市时间</b></td>
												<td colspan="5">交易日内，凌晨4:00至6:00(夏令时）  4:00至7:00（冬令时）</td>
											</tr>
											<tr>
												<td><b>最低交易保证金</b></td>
												<td colspan="5">成交金额的8%</td>
											</tr>
											<tr>
												<td><b>交易手续费</b></td>
												<td colspan="5">成交金额的0.08%</td>
											</tr>
											<tr>
												<td><b>单笔最大交易限额</b></td>
												<td>6手</td>
												<td>60手</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div id="tab3_5_content" class="tab-pane">
									<table class="data_table" style="clear: both" width="100%">
										<tbody>
											<tr>
												<th width="20%">交易品种</th>
												<th width="40%">现货铜</th>
												<th width="40%">现货铜1T</th>
											</tr>
											<tr>
												<td><strong>交易单位</strong></td>
												<td>5吨/手</td>
												<td>1吨/手</td>
											</tr>
											<tr>
												<td><strong>最大持仓限额</strong></td>
												<td>30手</td>
												<td>150手</td>
											</tr>
											<tr>
												<td><b>当前延期费率</b></td>
												<td>成交金额的0.02%/日</td>
												<td>成交金额的0.02%/日</td>
											</tr>
											<tr>
												<td><strong>强行平仓</strong></td>
												<td colspan="5">风险率=帐户净值/持仓占用交易保证金,当风险率达到50%时,剩余持仓全部强行平仓</td>
											</tr>
											<tr>
												<td><b>报价基准</b></td>
												<td colspan="5">天津贵金属交易所以伦敦贵金属现货市场价格为基础，综合国内贵金属市场价格及中国人民银行人民币兑美元基准汇率，连续报出人民币现货价格</td>
											</tr>
											<tr>
												<td><b>报价单位</b></td>
												<td>元(RMB)/吨</td>
												<td>元(RMB)/吨</td>
											</tr>
											<tr>
												<td><b>最小变动价位</b></td>
												<td>1元/吨</td>
												<td>1元/吨</td>
											</tr>
											<tr>
												<td><b>买卖价差</b></td>
												<td>上一交易日结算价0.1%</td>
												<td>上一交易日结算价0.1%</td>
											</tr>
											<tr>
												<td><b>每日价格波动限制</b></td>
												<td>无</td>
												<td>无</td>
											</tr>
											<tr>
												<td><b>交易时间</b></td>
												<td colspan="5">周一早8:00至周六早2:00</td>
											</tr>
											<tr>
												<td><b>结算休市时间</b></td>
												<td colspan="5">交易日内，凌晨4:00至6:00(夏令时）  4:00至7:00（冬令时）</td>
											</tr>
											<tr>
												<td><b>最低交易保证金</b></td>
												<td colspan="5">成交金额的5%</td>
											</tr>
											<tr>
												<td><b>交易手续费</b></td>
												<td colspan="5">成交金额的0.08%</td>
											</tr>
											<tr>
												<td><b>单笔最大交易限额</b></td>
												<td>5手</td>
												<td>25手</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div id="tab3_6_content" class="tab-pane">
									<table class="data_table" style="clear: both" width="100%">
										<tbody>
											<tr>
												<th width="20%">交易品种</th>
												<th width="40%">现货铝</th>
												<th width="40%">现货铝1T</th>
											</tr>
											<tr>
												<td><strong>交易单位</strong></td>
												<td>5吨/手</td>
												<td>1吨/手</td>
											</tr>
											<tr>
												<td><strong>最大持仓限额</strong></td>
												<td>100手</td>
												<td>500手</td>
											</tr>
											<tr>
												<td><b>当前延期费率</b></td>
												<td>成交金额的0.02%/日</td>
												<td>成交金额的0.02%/日</td>
											</tr>
											<tr>
												<td><strong>强行平仓</strong></td>
												<td colspan="5">风险率=帐户净值/持仓占用交易保证金,当风险率达到50%时,剩余持仓全部强行平仓</td>
											</tr>
											<tr>
												<td><b>报价基准</b></td>
												<td colspan="5">天津贵金属交易所以伦敦贵金属现货市场价格为基础，综合国内贵金属市场价格及中国人民银行人民币兑美元基准汇率，连续报出人民币现货价格</td>
											</tr>
											<tr>
												<td><b>报价单位</b></td>
												<td>元(RMB)/吨</td>
												<td>元(RMB)/吨</td>
											</tr>
											<tr>
												<td><b>最小变动价位</b></td>
												<td>1元/吨</td>
												<td>1元/吨</td>
											</tr>
											<tr>
												<td><b>买卖价差</b></td>
												<td>上一交易日结算价0.1%</td>
												<td>上一交易日结算价0.1%</td>
											</tr>
											<tr>
												<td><b>每日价格波动限制</b></td>
												<td>无</td>
												<td>无</td>
											</tr>
											<tr>
												<td><b>交易时间</b></td>
												<td colspan="5">周一早8:00至周六早2:00</td>
											</tr>
											<tr>
												<td><b>结算休市时间</b></td>
												<td colspan="5">交易日内，凌晨4:00至6:00(夏令时）  4:00至7:00（冬令时）</td>
											</tr>
											<tr>
												<td><b>最低交易保证金</b></td>
												<td colspan="5">成交金额的5%</td>
											</tr>
											<tr>
												<td><b>交易手续费</b></td>
												<td colspan="5">成交金额的0.08%</td>
											</tr>
											<tr>
												<td><b>单笔最大交易限额</b></td>
												<td>20手</td>
												<td>100手</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- .row -->
							</div>
						</div>

						<div id="tab4" class="tab-pane"  style="width:688px;">
							<b class="mt cor fs16"><img  src="${base}/index/images/formula_icon.gif"  style="width:31px; height:31px; padding-right:8px; padding-bottom:10px;" >盈亏计算公式：</b>
							<p class="fs12" style="border-bottom:1px solid #7d6600; padding-top: 10px; padding-bottom:20px;">盈亏值=（卖出价－买入价）×买入数量－延期费－手续费</p>
							<div class="clb">
								<p class="mt fs12 padding100">例1：李某在10月15日买入2手（15千克×2=30千克）白银，并于当日卖出！买入价格4100元，卖出价格4200元。</p>
								<p class="mt fs12">保证金占用：4100×30×5%=6150</p>
								<p class="mt fs12">当日卖出没有延期费用</p>
								<p class="mt fs12">盈利值：（4200-4100）×30-4100×30×0.0008-4200×30×0.0008=2800.80</p>
								<p class="mt fs12" style="border-bottom:1px solid #7d6600; padding-bottom:32px;">盈利率：2800.80÷6150×100%=45.54%</p>
								<p class="mt fs12 padding100">例2：张某在2013年10月15日买入5手现货白银（15千克×5=75千克），并于第二天卖出，买入价格4230，卖出价格4180。</p>
								<p class="mt fs12">投入保证金：75×4230×8%=25380</p>
								<p class="mt fs12">延期费 = 4230×75×0.0002=63.45</p>
								<p class="mt fs12">盈亏值：（4180-4230）×75-63.45-4230×75×0.0008-4180×75×0.0008=-4318.05</p>
								<p class="mt fs12">盈利率：4318.05÷25380=-0.1701×100%=-17.01%</p>
							</div>
						</div>
						<div id="tab5" class="tab-pane" >
							<b class="mt cor fs16"><img  src="${base}/index/images/pro_icon1.png"  style="width:31px; height:31px; padding-right:8px; padding-bottom:10px;" >交易数据由第三方托管</b>
							<p style="border-bottom:1px solid #7d6600; padding-bottom:18px;">由天津国际经济金融仲裁中心发起设立的天津鼎信交易数据托管中心，以独立第三方身份在每个交易日结束后，抓取托管会员与客户的每日结算数据并自动生成账单，加密后发送至托管中心客户专用账户，投资者可以从专用邮箱或账户中查询交易信息。一旦投资者在交易过程中产生纠纷，可调取相关信息并出具证明，作为仲裁的证据，以保护投资者的合法权益。</p>
							<b class="mt cor fs16" style="display:block; margin-top:37px;"><img  src="${base}/index/images/pro_icon2.png"  style="width:31px; height:31px; padding-right:8px; padding-bottom:10px;" >交易所合规稽核</b>
							<p>天津贵金属交易所设立专门的合规稽核部，由天津市监管部门监管，以国家法规、交易所规章制度为依据，对会员单位的经营活动进行监督,规范经营行为,防范经营风险,保证交易市场健康发展。</p>
							<%-- <div class="invest_box">
								<ul>
									<li><b class="b2">交易数据由第三方托管</b> <span><img alt=""
											src="${base}/index/images/invest_29.jpg" height="59"
											width="129"></span>
										<p>
											由天津国际经济金融仲裁中心发起设立的天津鼎信交易数据托管中心，以独立第三方身份在每个交易日结束后，抓取托管会员与客户的每日结算数据并自动生成账单
											，加密后发送至托管中心客户专用账户，投资者可以从专用邮箱或账户中查询交易信息。一旦投资者在交易过程中产生纠纷，可调取相关信息并出具证明，作为仲裁的证据，以保护投资者的合法权益。<br>
											<a target="_blank" href="http://www.dxdmc.com/#userconsent#"><span
												style="color: #999933"><strong>天津鼎信交易数据托管中心</strong></span></a>
										</p></li>
									<li><b class="b3">交易所合规稽核</b> <span><img alt=""
											src="${base}/index/images/invest_30.jpg" height="57"
											width="129"></span>
										<p>
											天津贵金属交易所设立专门的合规稽核部，由天津市监管部门监管，以国家法规、交易所规章制度为依据，对会员单位的经营活动进行监督,规范经营行为,防范经营风险,保证交易市场健康发展。<br>
											<span
												style="border-bottom: medium none; border-left: medium none; background: none transparent scroll repeat 0% 0%; border-top: medium none; border-right: medium none">天津贵金属交易所<br>
												合规稽核部联系电话<br> （86）22—58678164
											</span>
										</p></li>
								</ul>
							</div> --%>
						</div>
					</div>
				</div>
			</div>
			<div class="span4">
				<%@include file="right.jsp"%>
			</div>
		</div>
		<!-- .span8 -->

		<!-- .span4 -->
	</div>
	<!-- .row -->
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
</body>
</html>