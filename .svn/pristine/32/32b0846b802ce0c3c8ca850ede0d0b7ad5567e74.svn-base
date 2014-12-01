// JavaScript Document

	var chartData = [];
	var t;
	$(document).ready(function() {
		$("#article1").mouseover(function() {
			$("#info1").show();
		});
		$("#article2").mouseover(function() {
			$("#info2").show();
		});
		$("#article3").mouseover(function() {
			$("#info3").show();
		});
		$("#article1").mouseout(function() {
			$("#info1").hide();
		});
		$("#article2").mouseout(function() {
			$("#info2").hide();
		});
		$("#article3").mouseout(function() {
			$("#info3").hide();
		});
		$("#editerform").submit(function() {
			var options = {
				dataType : 'json',
				resetForm : false,
				success : showSuccess,
				error : showError,
				timeout : 10000
			}
			$(this).ajaxSubmit(options);
			return false;
		});
		document.getElementById('tb1').click();
	});
	
	function dataSet(obj) {
		dailyLine(obj);
		$.ajax({
			url : "currentdata.htm?cclass=" + obj,
			type : "post",
			dataType : "json",
			success : function(data) {
				currentSet(data);
			}
		});
		$("#nowclass").val(obj);
	}
	
	//预约开户表单验证
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

	//6.23 行情走势  自动获取时间 
	$(function(){
			var oEm = document.getElementsByTagName('em');
			//var oEm = $("em");
			//alert(oEm.length);
			
			var myTime = new Date();
			var iYear = myTime.getFullYear();
			var iMonth = myTime.getMonth()+1;
			var iDate = myTime.getDate();
			var str = iYear + '年' + toTwo(iMonth) + '月' + toTwo(iDate)+'日';
			
			for(var i=0; i<oEm.length; i++){
				oEm[i].innerHTML = str;
			}

			function toTwo(n){
				return n<10?'0'+n:''+n;
			}
	});
	function dailyLine(obj) {
		$.getJSON('dailydata.htm?cclass=' + obj, function(result) {
			var datas = [],i;
			for (i = 0; i < result.length; i++) {
				datas.push([parseInt(result[i].tradedate), parseFloat(result[i].price)]);
			}
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
					data: datas
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
				/*$(".tab-pane.active i[name='rate']").addClass(
						"fa rate  fa-long-arrow-up");*/
				$(".tab-pane.active i[name='rate']").addClass("arrow-up");
				$(".tab-pane.active span[name='count']").addClass("count-up");
			} else {
				$(".tab-pane.active span[name='price']").addClass(" rate-down");
				$(".tab-pane.active i[name='rate']").parent().addClass("rate-down");
				/*$(".tab-pane.active i[name='rate']").addClass(
						"fa rate  fa-long-arrow-down");*/
				$(".tab-pane.active i[name='rate']").addClass("arrow-down");
				$(".tab-pane.active span[name='count']").addClass("count-down");
			}
		}
	}
	
//首页推荐图片文章特效
	$(document).ready(function() {
		$("#article").mouseover(function() {
			$("#articlesum").slideDown()
		});
		$("#article").mouseout(function() {
			$("#articlesum").slideUp("slow");
		});
		$("#articlesum").mouseover(function() {
			$("#articlesum").stop()
		});
		$("#prevview").click(function() {
			$(".item active").slideToggle(2000)
		});
		downChange(1)
	});
	/*图片切换*/
	function downChange(index) {
		if (index > 1) {
			if ($(".down2").css('display') == 'none') {
				$(".down1").hide();
				$(".down2").show();
			} else {
				$(".down1").show();
				$(".down2").hide();
			}
		}
		setTimeout("downChange(2)", 5000);
	};

/*预约开户 模拟select*/
	imitate_select("#myselect",".select_ul");
	imitate_select("#myselect1",".select_ul1");
	imitate_select("#select0",".select0_id");
	imitate_select("#bank",".select0_id1");
	imitate_select("#select",".selec_area_1");
	imitate_select("#sex",".select_sex");
	
	function imitate_select(obj,obj1){
		$(obj).click(function(){
			var thisinput=$(this);
			var oUl = $(obj1);
			if(oUl.css("display")=="none"){
				oUl.fadeIn('100');
				oUl.hover(function(){},function(){oUl.fadeOut("100");})
				oUl.find("li").click(function(){thisinput.val($(this).text());
				oUl.fadeOut("100");}).hover(function(){$(this).addClass("hover");},function(){$(this).removeClass("hover");});
			}else{
				oUl.fadeOut("fast");
			}
		});
	}
	
	$.cookie = function(name, value, options) {
	    if (typeof value != 'undefined') {
	        options = options || {};
	        if (value === null) {
	            value = '';
	            options.expires = -1;
	        }
	        var expires = '';
	        if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
	            var date;
	            if (typeof options.expires == 'number') {
	                date = new Date();
	                date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
	            } else {
	                date = options.expires;
	            }
	            expires = '; expires=' + date.toUTCString();
	        }
	        var path = options.path ? '; path=' + (options.path) : '';
	        var domain = options.domain ? '; domain=' + (options.domain) : '';
	        var secure = options.secure ? '; secure' : '';
	        document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
	    } else {
	        var cookieValue = null;
	        if (document.cookie && document.cookie != '') {
	            var cookies = document.cookie.split(';');
	            for (var i = 0; i < cookies.length; i++) {
	                var cookie = jQuery.trim(cookies[i]);
	                if (cookie.substring(0, name.length + 1) == (name + '=')) {
	                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
	                    break;
	                }
	            }
	        }
	        return cookieValue;
	    }
	};

	function on_change_color(color){
		jQuery('#color').attr('value', color);	
		$.cookie('bgcolor',color,{ expires: 0, path: '/'});
	}

	jQuery(function(){
		
		/* Fix for reset button color
		----------------------------------------------------------*/
		jQuery(".reset_btn").css('color', '#555');
			
		/* Minor fix for IE9 */
		/*-----------------------------------------------------------------------*/
		if ($.browser.msie && $.browser.version.substr(0,1)==9) {
			jQuery("#color").css('padding','3px 1px 2px 1px');
		}
		
		/* Show or hide themes panel
		----------------------------------------------------------*/
		themes_panel_width = jQuery('#themes_menu').outerWidth();
		ofset = 0;
		
		  jQuery('#themes_panel').animate({right: -themes_panel_width + ofset}, 400);
		  jQuery('#toggle_button').click(function() {
				
				/* On hide turn off colorpicker wheel */
				if ($.browser.msie && $.browser.version.substr(0,1)<=8)
					jQuery('#colorpicker').hide();
				else
					jQuery('#colorpicker').fadeOut('fast');
				
				  var themes_panel = jQuery(this).parent();
				  themes_panel.animate({
					right: parseInt(themes_panel.css('right'),10) == 0 ? -themes_panel_width + ofset : 0
				}, 400);
				
				return false;
			});
		
		/* If cookie exists, apply classes from cookie
		----------------------------------------------------------*/
		if ($.cookie('theme') != null)	{
			$.cookie('theme',$.cookie('theme'),{ expires: 0, path: '/'});
			jQuery('body').removeAttr('id').attr('id',$.cookie('theme'));
		}
		
		if ($.cookie('pattern') != null)	{
			$.cookie('pattern',$.cookie('pattern'),{ expires: 0, path: '/'});
			jQuery('body').removeClass('').addClass($.cookie('pattern'));
		}
		
		if ($.cookie('bgcolor') != null)	{
			$.cookie('bgcolor',$.cookie('bgcolor'),{ expires: 0, path: '/'});
			jQuery('body, #color').css('background-color', $.cookie('bgcolor'));
			jQuery('#color').attr('value', $.cookie('bgcolor'));
		}

		/* Change theme colors on click and set cookie
		----------------------------------------------------------*/
		jQuery('#themes_panel ul.theme.buttons li a').click(function(){
			var theme_name = jQuery(this).attr('title');
			
			$.cookie('theme', theme_name, { expires: 0, path: '/'});
			jQuery('body').removeAttr('id').attr('id',theme_name);
			
		  	return false;
	    });
		
		
		/* Change pattern on click and set cookie
		----------------------------------------------------------*/
		jQuery('#themes_panel ul.pattern.buttons li a').click(function(){
			var pattern_name = jQuery(this).attr('title');
			
			$.cookie('pattern', pattern_name, { expires: 0, path: '/'});
			jQuery('body').removeClass().addClass(pattern_name);
			
		  	return false;
	    });
		
		/* Reset to Default
		----------------------------------------------------------*/
		jQuery('.reset_btn').click(function(){
			$.cookie('theme', null, { expires: 0, path: '/'});
			$.cookie('pattern', null, { expires: 0, path: '/'});
			$.cookie('bgcolor', '#f7f7f7', { expires: 0, path: '/'});
			location.reload();
		});
		
	});