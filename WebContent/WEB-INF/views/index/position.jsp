<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>持仓数据 | 全唐贵金属</title>
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
<style type="text/css">
table {
	width: 100%;
	font-size: 12px;
}

/* th {
	border: 1px solid #c1dad7;
	letter-spacing: 2px;
	text-transform: uppercase;
	text-align: left;
	padding: 6px 6px 6px 12px;
} */

td {
	border: 1px solid #c1dad7;
	padding: 6px 6px 6px 12px;
	color: #4f6b72;
}
</style>
<script type="text/javascript">
function load(){
	document.getElementById('tb1').click();   
	document.getElementById('tb0').click(); 
}
</script>
<style type="text/css">
body#red a{
	color: #FFFFFF;
}
</style>
</head>
<body onload="load();" id="red">

	<!-- begin header -->
	<header>
		<%@include file="header.jsp"%>
	</header>
	<!-- end header -->
	<div class="container page-content">
		<h2 class="page-title">NYMEX轻质低硫原油</h2>
		<ul class="nav nav-tabs">
					<li class="active" style="width:170px;text-align: center;"><a id="tb0" href="#tab0" data-toggle="tab">最新持仓明细</a></li>
					<li style="width:210px;text-align: center;"><a id="tb1" href="#tab1" data-toggle="tab">生产/贸易/加工/用户持仓图表</a></li>
					<li style="width:170px;text-align: center;"><a id="tb2" href="#tab2" data-toggle="tab">互换交易商持仓图表</a></li>
					<li style="width:170px;text-align: center;"><a id="tb3" href="#tab3" data-toggle="tab">资产管理机构持仓图表</a></li>
					<li style="width:210px;text-align: center;"><a id="tb4" href="#tab4" data-toggle="tab">其他可报告头寸持仓图表</a></li>
					<li style="width:170px;text-align: center;"><a id="tb5" href="#tab5" data-toggle="tab">非报告头寸总持仓图表</a></li>
				</ul> 
		<div class="row-fluid padding30 box-container">
			<div class="tabbable" id="myTab">

				<!-- Only required for left/right tabs -->
				<div class="tab-content">
					<div id="tab0" class="tab-pane active">
						<table>
							<tbody>
								<tr>
									<td>&nbsp;</td>
									<td rowspan="2">持仓分类</td>
									<td colspan="11">报告头寸</td>
									<td colspan="2">非报告头寸</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td colspan="2">生产商/贸易商/<br>加工企业/用户
									</td>
									<td colspan="3">互换交易商</td>
									<td colspan="3">资产管理机构</td>
									<td colspan="3">其他</td>
									<td colspan="2">&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>总计</td>
									<td>多头</td>
									<td>空头</td>
									<td>多头</td>
									<td>空头</td>
									<td>套利</td>
									<td>多头</td>
									<td>空头</td>
									<td>套利</td>
									<td>多头</td>
									<td>空头</td>
									<td>套利</td>
									<td>多头</td>
									<td>空头</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td colspan="11" style="text-align: left;"></td>
									<td colspan="2">&nbsp;</td>
								</tr>
								<c:forEach items="${lt1}" var="map" varStatus="status">
									<tr>
										<c:if test="${map.cc_class == 1}">
											<td>所有</td>
										</c:if>
										<c:if test="${map.cc_class == 2}">
											<td>原有持仓</td>
										</c:if>
										<c:if test="${map.cc_class == 3}">
											<td>其他</td>
										</c:if>
										<td><span>${map.total}</span></td>
										<td><span>${map.bgtc_sgjqy_dt}</span></td>
										<td><span>${map.bgtc_sgjqy_kt}</span></td>
										<td><span>${map.bgtc_hj_dt}</span></td>
										<td><span>${map.bgtc_hj_kt}</span></td>
										<td><span>${map.bgtc_hj_tl}</span></td>
										<td><span>${map.bgtc_zcgljg_dt}</span></td>
										<td><span>${map.bgtc_zcgljg_kt}</span></td>
										<td><span>${map.bgtc_zcgljg_tl}</span></td>
										<td><span>${map.bgtc_qt_dt}</span></td>
										<td><span>${map.bgtc_qt_kt}</span></td>
										<td><span>${map.bgtc_qt_tl}</span></td>
										<td><span>${map.fbgtc_dt}</span></td>
										<td><span>${map.fbgtc_kt}</span></td>
									</tr>
								</c:forEach>
								<c:forEach items="${lt2}" var="map" varStatus="status">
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td colspan="11" style="text-align: left">自上周二以来的变化量：<span
											id="ts_lastTues">${ccdatelast}</span></td>
										<td colspan="2">&nbsp;</td>
									</tr>

									<tr>
										<td></td>
										<td><span>${map.total}</span></td>
										<td><span>${map.bgtc_sgjqy_dt}</span></td>
										<td><span>${map.bgtc_sgjqy_kt}</span></td>
										<td><span>${map.bgtc_hj_dt}</span></td>
										<td><span>${map.bgtc_hj_kt}</span></td>
										<td><span>${map.bgtc_hj_tl}</span></td>
										<td><span>${map.bgtc_zcgljg_dt}</span></td>
										<td><span>${map.bgtc_zcgljg_kt}</span></td>
										<td><span>${map.bgtc_zcgljg_tl}</span></td>
										<td><span>${map.bgtc_qt_dt}</span></td>
										<td><span>${map.bgtc_qt_kt}</span></td>
										<td><span>${map.bgtc_qt_tl}</span></td>
										<td><span>${map.fbgtc_dt}</span></td>
										<td><span>${map.fbgtc_kt}</span></td>
									</tr>
								</c:forEach>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td colspan="11" style="text-align: left">各类别持仓占总持仓量的比重</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<c:forEach items="${lt3}" var="map" varStatus="status">
									<tr>
										<c:if test="${map.cc_class == 1}">
											<td>所有</td>
										</c:if>
										<c:if test="${map.cc_class == 2}">
											<td>原有持仓*2</td>
										</c:if>
										<c:if test="${map.cc_class == 3}">
											<td>其他</td>
										</c:if>
										<td><span>${map.total}</span></td>
										<td><span>${map.bgtc_sgjqy_dt}</span></td>
										<td><span>${map.bgtc_sgjqy_kt}</span></td>
										<td><span>${map.bgtc_hj_dt}</span></td>
										<td><span>${map.bgtc_hj_kt}</span></td>
										<td><span>${map.bgtc_hj_tl}</span></td>
										<td><span>${map.bgtc_zcgljg_dt}</span></td>
										<td><span>${map.bgtc_zcgljg_kt}</span></td>
										<td><span>${map.bgtc_zcgljg_tl}</span></td>
										<td><span>${map.bgtc_qt_dt}</span></td>
										<td><span>${map.bgtc_qt_kt}</span></td>
										<td><span>${map.bgtc_qt_tl}</span></td>
										<td><span>${map.fbgtc_dt}</span></td>
										<td><span>${map.fbgtc_kt}</span></td>
									</tr>
								</c:forEach>
								<tr>
									<td>&nbsp;</td>
									<td>交易商总数</td>
									<td colspan="11" style="text-align: left">各类别中交易商数量</td>
									<td colspan="2">&nbsp;</td>
								</tr>
								<c:forEach items="${lt4}" var="map" varStatus="status">
									<tr>
										<c:if test="${map.cc_class == 1}">
											<td>所有</td>
										</c:if>
										<c:if test="${map.cc_class == 2}">
											<td>原有持仓</td>
										</c:if>
										<c:if test="${map.cc_class == 3}">
											<td>其他</td>
										</c:if>
										<td><span>${map.total}</span></td>
										<td><span>${map.bgtc_sgjqy_dt}</span></td>
										<td><span>${map.bgtc_sgjqy_kt}</span></td>
										<td><span>${map.bgtc_hj_dt}</span></td>
										<td><span>${map.bgtc_hj_kt}</span></td>
										<td><span>${map.bgtc_hj_tl}</span></td>
										<td><span>${map.bgtc_zcgljg_dt}</span></td>
										<td><span>${map.bgtc_zcgljg_kt}</span></td>
										<td><span>${map.bgtc_zcgljg_tl}</span></td>
										<td><span>${map.bgtc_qt_dt}</span></td>
										<td><span>${map.bgtc_qt_kt}</span></td>
										<td><span>${map.bgtc_qt_tl}</span></td>
										<td><span>${map.fbgtc_dt}</span></td>
										<td><span>${map.fbgtc_kt}</span></td>
									</tr>
								</c:forEach>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td colspan="10">最大的前N个交易商持仓占全部持仓的比重%</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td colspan="4">按总头寸统计</td>
									<td>&nbsp;</td>
									<td colspan="4">按净头寸统计</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td colspan="2">头四个最大的交易商</td>
									<td colspan="2">头八个最大的交易商</td>
									<td>&nbsp;</td>
									<td colspan="2">头四个最大的交易商</td>
									<td colspan="2">头八个最大的交易商</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>多头</td>
									<td>空头</td>
									<td>多头</td>
									<td>空头</td>
									<td>&nbsp;</td>
									<td>多头</td>
									<td>空头</td>
									<td>多头</td>
									<td>空头</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>

								<c:forEach items="${ltbz}" var="map" varStatus="status">
									<tr>
										<c:if test="${map.cc_class == 1}">
											<td>所有</td>
										</c:if>
										<c:if test="${map.cc_class == 2}">
											<td>原有持仓</td>
										</c:if>
										<c:if test="${map.cc_class == 3}">
											<td>其他</td>
										</c:if>
										<td></td>
										<td></td>
										<td>${map.ztc_top4_dt}</td>
										<td>${map.ztc_top4_kt}</td>
										<td>${map.ztc_top8_dt}</td>
										<td>${map.ztc_top8_kt}</td>
										<td>&nbsp;</td>
										<td>${map.jtc_top4_dt}</td>
										<td>${map.jtc_top4_kt}</td>
										<td>${map.jtc_top8_dt}</td>
										<td>${map.jtc_top8_kt}</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div id="tab1" class="tab-pane active">
						<div id="chartdiv1" style="width: 100%; height: 600px;"></div>
						<div>
							<table>
								<tr>
									<td>日期</td>
									<c:forEach items="${datalt1}" var="map" varStatus="status">
										<td>${map.date}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>多单量</td>
									<c:forEach items="${datalt1}" var="map" varStatus="status">
										<td>${map.dtl}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>空单量</td>
									<c:forEach items="${datalt1}" var="map" varStatus="status">
										<td>${map.ktl}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>净持仓</td>
									<c:forEach items="${datalt1}" var="map" varStatus="status">
										<td>${map.jcc}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>净持仓变化量</td>
									<c:forEach items="${datalt1}" var="map" varStatus="status">
										<td>${map.bhl}</td>
									</c:forEach>
								<tr>
							</table>
						</div>
					</div>
					<div id="tab2" class="tab-pane active">
						<div id="chartdiv2" style="width: 100%; height: 600px;"></div>
						<div>
							<table>
								<tr>
									<td>日期</td>
									<c:forEach items="${datalt2}" var="map" varStatus="status">
										<td>${map.date}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>多单量</td>
									<c:forEach items="${datalt2}" var="map" varStatus="status">
										<td>${map.dtl}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>空单量</td>
									<c:forEach items="${datalt2}" var="map" varStatus="status">
										<td>${map.ktl}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>净持仓</td>
									<c:forEach items="${datalt2}" var="map" varStatus="status">
										<td>${map.jcc}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>套利量</td>
									<c:forEach items="${datalt2}" var="map" varStatus="status">
										<td>${map.tll}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>净持仓变化量</td>
									<c:forEach items="${datalt2}" var="map" varStatus="status">
										<td>${map.bhl}</td>
									</c:forEach>
								<tr>
							</table>
						</div>
					</div>
					<div id="tab3" class="tab-pane active">
						<div id="chartdiv3" style="width: 100%; height: 600px;"></div>
						<div>
							<table>
								<tr>
									<td>日期</td>
									<c:forEach items="${datalt3}" var="map" varStatus="status">
										<td>${map.date}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>多单量</td>
									<c:forEach items="${datalt3}" var="map" varStatus="status">
										<td>${map.dtl}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>空单量</td>
									<c:forEach items="${datalt3}" var="map" varStatus="status">
										<td>${map.ktl}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>净持仓</td>
									<c:forEach items="${datalt3}" var="map" varStatus="status">
										<td>${map.jcc}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>套利量</td>
									<c:forEach items="${datalt3}" var="map" varStatus="status">
										<td>${map.tll}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>净持仓变化量</td>
									<c:forEach items="${datalt3}" var="map" varStatus="status">
										<td>${map.bhl}</td>
									</c:forEach>
								<tr>
							</table>
						</div>
					</div>
					<div id="tab4" class="tab-pane active">
						<div id="chartdiv4" style="width: 100%; height: 600px;"></div>
						<div>
							<table>
								<tr>
									<td>日期</td>
									<c:forEach items="${datalt4}" var="map" varStatus="status">
										<td>${map.date}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>多单量</td>
									<c:forEach items="${datalt4}" var="map" varStatus="status">
										<td>${map.dtl}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>空单量</td>
									<c:forEach items="${datalt4}" var="map" varStatus="status">
										<td>${map.ktl}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>净持仓</td>
									<c:forEach items="${datalt4}" var="map" varStatus="status">
										<td>${map.jcc}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>套利量</td>
									<c:forEach items="${datalt4}" var="map" varStatus="status">
										<td>${map.tll}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>净持仓变化量</td>
									<c:forEach items="${datalt4}" var="map" varStatus="status">
										<td>${map.bhl}</td>
									</c:forEach>
								<tr>
							</table>
						</div>
					</div>
					<div id="tab5" class="tab-pane active">
						<div id="chartdiv5" style="width: 100%; height: 600px;"></div>
						<div>
							<table>
								<tr>
									<td>日期</td>
									<c:forEach items="${datalt5}" var="map" varStatus="status">
										<td>${map.date}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>多单量</td>
									<c:forEach items="${datalt5}" var="map" varStatus="status">
										<td>${map.dtl}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>空单量</td>
									<c:forEach items="${datalt5}" var="map" varStatus="status">
										<td>${map.ktl}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>净持仓</td>
									<c:forEach items="${datalt5}" var="map" varStatus="status">
										<td>${map.jcc}</td>
									</c:forEach>
								<tr>
								<tr>
									<td>净持仓变化量</td>
									<c:forEach items="${datalt5}" var="map" varStatus="status">
										<td>${map.bhl}</td>
									</c:forEach>
								<tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- .tabbable -->
		</div>
	</div>
	<!-- .container -->

	<!-- begin footer -->
	<footer>
		<%@include file="footer.jsp"%>
	</footer>
	<!-- end footer -->
	<script type="text/javascript">
	var chartData;
	var axes = '';
	var grphs = '';
	var divname='';
	var chartData = ''; 
	var divnames=['chartdiv1','chartdiv2','chartdiv3','chartdiv4','chartdiv5'];
	var chartDatas = [ ${datapro[0]}, ${datapro[1]}, ${datapro[2]}, ${datapro[3]}, ${datapro[4]}];
	axes = ${axestll};
	grphs = ${graphstll};
	for(var i=0;i<5;i++){
		divname=divnames[i];
		chartData=chartDatas[i];
		chartmake2();
	}
	</script>
	<script src="${base}/index/js/respond.js"></script>
	<script src="${base}/index/js/jquery.min.js"></script>
	<script src="${base}/index/js/bootstrap.min.js"></script>
	<script src="${base}/index/js/jquery.placeholder.js"></script>
	<script src="${base}/index/js/common.js"></script>
	<script type="text/javascript" src="${base}/index/js/jquery.min.js"></script>
	<script type="text/javascript" src="${base}/index/amcharts/amcharts.js"></script>
	<script type="text/javascript" src="${base}/index/amcharts/serial.js"></script>
	<script type="text/javascript" src="${base}/index/amcharts/amstock.js"></script>
	<script type="text/javascript" src="${base}/index/js/chartset.js"></script>
</body>
</html>