function dailyLine(obj) {
	$.getJSON('dailydata.htm?cclass=' + obj, function(result) {
		Highcharts.setOptions({
			global: {
				useUTC: false
			}
		});
		$('#chartdiv').highcharts({
			chart: {
				events: {
					load: function() {
						var series = this.series[0];
						setInterval(function() {
							$.ajax({
								url: "currentdata.htm?cclass=" + $("#nowclass").val(),
								type: "post",
								dataType: "json",
								success: function(data) {
									series.addPoint([parseInt(data[0].tradedate), parseFloat(data[0].price)], true, true);
									currentSet(data);
								}
							});
						}, 20000);
					}
				}
			},
			title: {
				text: false
			},
			exporting: {
				enabled: false
			},
			series: [{
				lineWidth: 1,
				marker: {
					enabled: false
				},
				states: {
					hover: {
						enabled: false
					}
				},
				data: (function() {
					var datas = [],
						i;
					for (i = 0; i < result.length; i++) {
						datas.push([parseInt(result[i].tradedate), parseFloat(result[i].price)]);
					}
					return datas;
				})()
			}],
			xAxis: {
				type: 'datetime',
				dateTimeLabelFormats: {
					hour: '%H:%M',
				},

			},
			yAxis: {
				title: {
					text: false
				},
			},
			legend: {
				enabled: false
			},
			tooltip: {
				crosshairs: [{
					width: 1,
					color: 'red'
				}, {
					width: 1,
					color: 'red'
				}],
				formatter: function() {
					return '<b>日期：</b>' + Highcharts.dateFormat('%H:%M:%S', this.x) + '<br/>' + '<b>价位：</b>' + this.y;
				},
				borderColor: '#000000'
			},
			scrollbar: {
				enabled: false
			}
		});
	});
}

function currentSet(data) {
	if (data != '') {
		var objs = data;
		$(".tab-pane.active span[name='price']").html(
		objs[0].price);
		$(".tab-pane.active span[name='changerate']").html(
		objs[0].changerate);
		$(".tab-pane.active span[name='openprice']").html(
		objs[0].openprice);
		$(".tab-pane.active span[name='buy']").html(
		objs[0].buy);
		$(".tab-pane.active span[name='sell']").html(
		objs[0].sell);
		$(".tab-pane.active span[name='maxprice']").html(
		objs[0].maxprice);
		$(".tab-pane.active span[name='minprice']").html(
		objs[0].minprice);
		$(".tab-pane.active span[name='yestodayprice']").html(objs[0].yestodayprice);

		$(".tab-pane.active i[name='rate']").removeClass();
		$(".tab-pane.active span[name='price']").removeClass();
		$(".tab-pane.active i[name='rate']").parent().removeClass();
		$(".tab-pane.active i[name='count']").parent().removeClass();

		if (objs[0].changerate.split("%")[0] > 0) {
			$(".tab-pane.active span[name='price']").addClass(" rate-up");
			$(".tab-pane.active i[name='rate']").parent().addClass(" rate-up");
			/*$(".tab-pane.active i[name='rate']").addClass("fa rate  fa-long-arrow-up");*/
			$(".tab-pane.active i[name='rate']").addClass("arrow-up");
			$(".tab-pane.active span[name='count']").addClass("count-up");
		} else {
			$(".tab-pane.active span[name='price']").addClass(" rate-down");
			$(".tab-pane.active i[name='rate']").parent().addClass("rate-down");
			/*$(".tab-pane.active i[name='rate']").addClass("fa rate  fa-long-arrow-down");*/
			$(".tab-pane.active i[name='rate']").addClass("arrow-down");
			$(".tab-pane.active span[name='count']").addClass("count-down");
		}
	}
}