/*eval(function(p,a,c,k,e,d){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--){d[e(c)]=k[c]||e(c)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('!4(a){a.n.P=4(b){4 c(b){6 c,d=a(b),e="Y",f=a("m",d);d.o(4(){a(5).Z(e),f.F(!0,!0).10()}),c=4(){d.Q(e),f.F(!0,!0).U()},a("T").o(4(d){a(d.S).R(b+" *")||c()})}6 d,e={C:["#V","#W","#X"],D:["请选择省份","请选择城市","请选择地区"],y:"i",K:\'11[O^="L"]\',A:!0},f=a.w(e,b),g=f.C,h=f.D,i=f.y,j=f.K,k=g.z;I(a.n.8=4(b){6 c={G:!1,7:0},d=a.w(c,b),e=a(5),f=a("m 3",e),g=(a("m 3:N",e),a("m 3:M(0)",e)),k=a(i,e),l=a(j,e);9 d.G?f.E():g.E(),k.q(h[d.7]),l.r(h[d.7]),5},a.n.t=4(b){6 c,d={p:"0"},e=a.w(d,b),f=a(5),g=a("m",f),h=18.1a[e.p],i="";I("1b"==19 h)9!1;J(c=0;c<h.z;c++)i+=\'<3><a 16="13:14(0)" s="\'+h[c]+\'">\'+h[c]+"</a></3>";g.12(i),i=""},a.n.H=4(){6 b,c,d;a("3",g[0]),a("3",g[1]),a("3",g[2]),a("3",g[0]).u("o",4(){b=a("3",g[0]).v(5)-1;6 c=a("a",5).x("s"),d=a(i,g[0]),e=a(j,g[0]);9 d.q(c),e.r(c),a(g[1]).8({7:1}),a(g[1]).t({p:"B"+b}),a(g[2]).8({7:2}),b}),a("3",g[1]).u("o",4(){c=a("3",g[1]).v(5)-1;6 d=a("a",5).x("s"),e=a(i,g[1]),f=a(j,g[1]);9 e.q(d),f.r(d),a(g[2]).8({7:2}),a(g[2]).t({p:"B"+b+"17"+c}),c}),a("3",g[2]).u("o",4(){d=a("3",g[2]).v(5);6 b=a("a",5).x("s"),c=a(i,g[2]),e=a(j,g[2]);9 c.q(b),e.r(b),d})},f.A)J(d=0;k>d;d++)a(g[d]).8({7:d}),c(g[d]);a(g[0]).t({p:"0"}),a.n.H()}}(15);',62,74,'|||li|function|this|var|thisindex|removelist|return|||||||||||||ul|fn|click|theindex|text|val|alt|appendlist|live|index|extend|attr|czemt|length|intva|0_|setId|stval|remove|stop|removeAll|liClick|if|for|inpvt|cho|gt|first|name|citySelect|removeClass|is|target|body|slideUp|Province|City|Area|active|toggleClass|slideToggle|input|append|javascript|void|jQuery|href|_|dsy|typeof|Items|undefined'.split('|'),0,{}))*/

!
function(a) {
	a.fn.citySelect = function(b) {
		function c(b) {
			var c, d = a(b),
				e = "active",
				f = a("ul", d);
			d.click(function() {
				a(this).toggleClass(e), f.stop(!0, !0).slideToggle()
			}), c = function() {
				d.removeClass(e), f.stop(!0, !0).slideUp()
			}, a("body").click(function(d) {
				a(d.target).is(b + " *") || c()
			})
		}
		var d, e = {
			setId: ["#Province", "#City", "#Area"],
			stval: ["请选择省份", "请选择城市", "请选择地区"],
			czemt: "i",
			inpvt: 'input[name^="cmb"]',
			intva: !0
		},
			f = a.extend(e, b),
			g = f.setId,
			h = f.stval,
			i = f.czemt,
			j = f.inpvt,
			k = g.length;
		if (a.fn.removelist = function(b) {
			var c = {
				removeAll: !1,
				thisindex: 0
			},
				d = a.extend(c, b),
				e = a(this),
				f = a("ul li", e),
				g = (a("ul li:first", e), a("ul li:gt(0)", e)),
				k = a(i, e),
				l = a(j, e);
			return d.removeAll ? f.remove() : g.remove(), k.text(h[d.thisindex]), l.val(h[d.thisindex]), this
		}, a.fn.appendlist = function(b) {
			var c, d = {
				theindex: "0"
			},
				e = a.extend(d, b),
				f = a(this),
				g = a("ul", f),
				h = dsy.Items[e.theindex],
				i = "";
			if ("undefined" == typeof h) return !1;
			for (c = 0; c < h.length; c++) i += '<li><a href="javascript:void(0)" alt="' + h[c] + '">' + h[c] + "</a></li>";
			g.append(i), i = ""
		}, a.fn.liClick = function() {
			var b, c, d;
			a("li", g[0]), a("li", g[1]), a("li", g[2]), a("li", g[0]).live("click", function() {
				b = a("li", g[0]).index(this) - 1;
				var c = a("a", this).attr("alt"),
					d = a(i, g[0]),
					e = a(j, g[0]);
				return d.text(c), e.val(c), a(g[1]).removelist({
					thisindex: 1
				}), a(g[1]).appendlist({
					theindex: "0_" + b
				}), a(g[2]).removelist({
					thisindex: 2
				}), b
			}), a("li", g[1]).live("click", function() {
				c = a("li", g[1]).index(this) - 1;
				var d = a("a", this).attr("alt"),
					e = a(i, g[1]),
					f = a(j, g[1]);
				return e.text(d), f.val(d), a(g[2]).removelist({
					thisindex: 2
				}), a(g[2]).appendlist({
					theindex: "0_" + b + "_" + c
				}), c
			}), a("li", g[2]).live("click", function() {
				d = a("li", g[2]).index(this);
				var b = a("a", this).attr("alt"),
					c = a(i, g[2]),
					e = a(j, g[2]);
				return c.text(b), e.val(b), d
			})
		}, f.intva) for (d = 0; k > d; d++) a(g[d]).removelist({
			thisindex: d
		}), c(g[d]);
		a(g[0]).appendlist({
			theindex: "0"
		}), a.fn.liClick()
	}
}(jQuery);
