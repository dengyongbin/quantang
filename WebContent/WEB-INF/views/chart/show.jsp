<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>amStock Example</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/amcharts/style.css"
	type="text/css">

<script src="${pageContext.request.contextPath}/admin/amcharts/amcharts.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/admin/amcharts/serial.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/admin/amcharts/amstock.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/admin/amcharts/themes/patterns.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/admin/amcharts/themes/light.js"></script>
<script type="text/javascript">
	var chartData = [];
	AmCharts.makeChart("chartdiv", {
		"type" : "serial",
		"theme" : "light",
		//"theme": "dark",
		 //"theme": "chalk",
		 //"theme": "patterns",
		 //"theme": "none",
		 "legend" : {
			"equalWidths" : false,
			"useGraphSettings" : true,
			"valueAlign" : "left",
			"valueWidth" : 120
		},
		"dataProvider" :${datapro}	,
		"valueAxes" : [{
			"id" : "dtlAxis",
			"axisAlpha" : 0,
			"gridAlpha" : 0,
			"position" : "left"//依赖位置
			//"title" : "dtl"//标题
		}, {
			"id" : "ktlAxis",
			"axisAlpha" : 0,
			"gridAlpha" : 0,
			"position" : "left"//依赖位置
			//"title" : "ktl"//标题
		}, {
			"id" : "jccAxis",
			"axisAlpha" : 0,
			"gridAlpha" : 0,
			"position" : "left"//依赖位置
			//"title" : "jcc"//标题
		}, {
			"id" : "bhlAxis",
			"axisAlpha" : 0,
			"gridAlpha" : 0,
			"position" : "left"//依赖位置
			//"title" : "bhl"//标题
		},${axestll}],
		"graphs" : [ {
			"balloonText" : "[[date]] [[value]]",
			"dashLengthField" : "dashLength",
			"fillAlphas" :1.27, //填充
			"legendValueText" : "[[value]]",
			"title" : "净持仓变化量",
			"type" : "column",//柱状图
			"valueField" : "bhl",
			"valueAxis" : "dtlAxis",
			"columnWidth" :0.9
		}, {
			"balloonText" : "[[date]] [[value]]",
			"bullet" : "round",
			"bulletBorderAlpha" : 1,
			"bulletSize":0.1,
			"useLineColorForBulletBorder" : true,
			"labelPosition" : "right",
			"title" : "空头量",
			"fillAlphas" : 0,
			"valueField" : "ktl",
			"valueAxis" : "dtlAxis"
		}, {
			"balloonText" : "[[date]] [[value]]",
			"bullet" : "round",
			"bulletBorderAlpha" : 1,
			"bulletSize":0.1,
			"useLineColorForBulletBorder" : true,
			"labelPosition" : "right",
			"title" : "净持仓",
			"fillAlphas" : 0,
			"valueField" : "jcc",
			"valueAxis" : "dtlAxis"
		}, {
			"balloonText" : "[[date]] [[value]]",
			"bullet" : "round",
			"bulletBorderAlpha" : 1,
			"bulletSize":0.1,
			"useLineColorForBulletBorder" : true,
			"labelPosition" : "right",
			"title" : "多单量",
			"fillAlphas" : 0,
			"valueField" : "dtl",
			"valueAxis" : "dtlAxis"
		} ,${graphstll}],
		"dataDateFormat" : "YYYY-MM-DD",
		"categoryField" : "date",
		"categoryAxis" : {
			 "dateFormats" : [ {
				"period" : "DD",
				"format" : "DD"
			} , {
				"period" : "WW",
				"format" : "MMM DD"
			}, {
				"period" : "MM",
				"format" : "MMM"
			}, {
				"period" : "YYYY",
				"format" : "YYYY"
			}  ], 
			"parseDates" : true,
			"autoGridCount" : false,
			"axisColor" : "#555555",
			"gridAlpha" : 0.1,
			"gridColor" : "#FFFFFF",
			"gridCount" : 50
		},
		"chartScrollbar": {"position":"bottom"},
		"exportConfig" : {
			"menuBottom" : "20px",
			"menuRight" : "22px",
			"menuItems" : [ {
				"icon" : 'http://www.amcharts.com/lib/3/images/export.png',
				"format" : 'png'
			} ]
		}

	});
</script>
</head>
<body style="background-color: #FFFFFF">
	<form action="showchart.htm" method="post">
		<input type="hidden" name="i" id="i" value="${i}"> <input
			type="text" name="startdate" id="startdate" value="${startdate}">
		<input type="text" name="enddate" id="enddate" value="${enddate}">
		<button type="submit">查询</button>
	</form>
	<div id="chartdiv" style="width: 70%; height: 600px;"></div>
	<table bordercolor="#123123" border="1px">
		<tr>
			<td>日期</td>
			<c:forEach items="${datalt}" var="map" varStatus="status">
				<td>${map.date}</td>
			</c:forEach>
		<tr>
		<tr>
			<td>多单量</td>
			<c:forEach items="${datalt}" var="map" varStatus="status">
				<td>${map.dtl}</td>
			</c:forEach>
		<tr>
		<tr>
			<td>空单量</td>
			<c:forEach items="${datalt}" var="map" varStatus="status">
				<td>${map.ktl}</td>
			</c:forEach>
		<tr>
		<tr>
			<td>净持仓</td>
			<c:forEach items="${datalt}" var="map" varStatus="status">
				<td>${map.jcc}</td>
			</c:forEach>
		<tr>
			<c:if test="${i!=1 and i!=5}">
				<tr>
					<td>套利量</td>
					<c:forEach items="${datalt}" var="map" varStatus="status">
						<td>${map.tll}</td>
					</c:forEach>
				<tr>
			</c:if>
		<tr>
			<td>净持仓变化量</td>
			<c:forEach items="${datalt}" var="map" varStatus="status">
				<td>${map.bhl}</td>
			</c:forEach>
		<tr>
	</table>
</body>
</html>