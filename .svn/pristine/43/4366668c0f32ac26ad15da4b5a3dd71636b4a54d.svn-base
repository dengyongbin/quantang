$(function() {

	$.getJSON('dailydata.htm?cclass=CAD', function(result) {
		
		// Create the chart
		$('#container').highcharts('StockChart', {
			
			rangeSelector : {
				selected : 1
			},

			title : {
				text : 'AAPL Stock Price'
			},
			
			series : [{
				name : 'AAPL',
				data : result.data,
				tooltip: {
					valueDecimals: 2
				}
			}]
		});
	});

});