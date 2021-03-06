package com.quantang.web.index.marketdata;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quantang.service.ChartDataService;
import com.quantang.service.NoticeService;

@Controller
public class MarketDataController {
	@Autowired
	private ChartDataService cdservice;

	@Autowired
	private NoticeService noticeService;

	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	/*@RequestMapping("/position.htm")*/
	/*public String showNYMEX(String date, ModelMap mm) {
		// ======持仓明细数据
		if (date == null || "".equals(date)) {
			date = sdf.format(new Date());
		}
		// 取得持仓数据
		List<Map<String, Object>> ltcc = cdservice.getNYMEXCCData(date);
		List<Map<String, Object>> lt1 = new ArrayList<Map<String, Object>>();
		List<Map<String, Object>> lt2 = new ArrayList<Map<String, Object>>();
		List<Map<String, Object>> lt3 = new ArrayList<Map<String, Object>>();
		List<Map<String, Object>> lt4 = new ArrayList<Map<String, Object>>();
		for (int i = 0; i < ltcc.size(); i++) {
			if (i >= 0 && i <= 2) {
				lt1.add(ltcc.get(i));
			}
			if (i == 3) {
				lt2.add(ltcc.get(i));
			}
			if (i >= 4 && i <= 6) {
				lt3.add(ltcc.get(i));
			}
			if (i >= 7 && i <= 9) {
				lt4.add(ltcc.get(i));
			}
		}
		// 取得比重说数据
		List<Map<String, Object>> ltbz = cdservice.getNYMEXBZData(date);
		mm.addAttribute("lt1", lt1);
		mm.addAttribute("lt2", lt2);
		mm.addAttribute("lt3", lt3);
		mm.addAttribute("lt4", lt4);
		mm.addAttribute("ltbz", ltbz);

		Date ccdate = (Date) ltcc.get(0).get("cc_date");
		mm.addAttribute("ccdate", ccdate.toString());
		Calendar rightNow = Calendar.getInstance();
		rightNow.setTime(ccdate);
		rightNow.add(Calendar.DAY_OF_YEAR, -7);
		mm.addAttribute("ccdatelast", sdf.format(rightNow.getTime()).toString());

		List<Map<String, Object>> noticelt = noticeService.getNoticeLast();
		mm.addAttribute("noticelt", noticelt);
		// =========图标数据
		String nowDate = sdf.format(new Date());
		String startDate = "2012-01-01";
		String datapro[] = new String[5];
		String axestll = valueAxesSet();
		String graphstll = graphsSet();
		for (int i = 1; i <= 5; i++) {
			List<Map<String, Object>> lt = cdservice.getNYMEXBHData(i, startDate, nowDate);
			// 数据集
			String dataProvider = JSONArray.toJSONString(lt);
			// 近10周数据列表
			List<Map<String, Object>> datalt = new ArrayList<Map<String, Object>>();
			for (int s = lt.size() - 1; s > lt.size() - 11; s--) {
				datalt.add(lt.get(s));
			}
			datapro[i - 1] = dataProvider;
			mm.addAttribute("datalt" + i, datalt);
		}
		mm.addAttribute("datapro", datapro);
		mm.addAttribute("axestll", axestll);
		mm.addAttribute("graphstll", graphstll);
		mm.addAttribute("position","active");
		return "index/position";
	}

	@RequestMapping("/getWTI.htm")
	public void getWTI(PrintWriter printWriter) {
		String data = "";
		List<Map<String, Object>> ltwti = cdservice.getWTIData();
		Map<String, Object> map = ltwti.get(0);
		Set<Entry<String, Object>> set = map.entrySet();// 取得键值对的对象set集合
		for (Entry<String, Object> en : set) {// 遍历键值对的集合
			data += en.getValue().toString().concat(",");// 通过键值对对象，取得里面的值
		}
		printWriter.write(data);
		printWriter.flush();
		printWriter.close();
	}

	@RequestMapping("/market.htm")
	public String getWTI( int i, ModelMap mm) {
		// List<Map<String, Object>> ltwti = cdservice.getWTIData();
		// mm.addAttribute("ltwti", ltwti);
		List<Map<String, Object>> lt = cdservice.getWTIDataTime(1);
		// 数据集
		String dataProvider = JSONArray.toJSONString(lt);
		mm.addAttribute("datapro", dataProvider);
		List<Map<String, Object>> noticelt = noticeService.getNoticeLast();
		mm.addAttribute("noticelt", noticelt);
		return "index/market";
	}

	@RequestMapping("/show.htm")
	public String showWTI(Integer i, ModelMap mm) {
		String nowDate = sdf.format(new Date());
		String startDate = "2012-01-01";
		List<Map<String, Object>> lt = cdservice.getNYMEXBHData(i, startDate, nowDate);

		// 数据集
		String dataProvider = JSONArray.toJSONString(lt);
		// 近10周数据列表
		List<Map<String, Object>> datalt = new ArrayList<Map<String, Object>>();
		for (int s = lt.size() - 1; s > lt.size() - 11; s--) {
			datalt.add(lt.get(s));
		}
		mm.addAttribute("datapro", dataProvider);
		mm.addAttribute("datalt", datalt);
		// if (i != 1 && i != 5) {
		mm.addAttribute("axestll", valueAxesSet());
		mm.addAttribute("graphstll", graphsSet());
		// }
		mm.addAttribute("i", i);
		mm.addAttribute("startdate", startDate);
		mm.addAttribute("enddate", nowDate);
		return "index/showchart";
	}

	@RequestMapping("/showchart.htm")
	public String showWTI(Integer i, String startdate, String enddate, ModelMap mm) {
		List<Map<String, Object>> lt = cdservice.getNYMEXBHData(i, startdate, enddate);
		String dataProvider = JSONArray.toJSONString(lt);
		List<Map<String, Object>> datalt = new ArrayList<Map<String, Object>>();
		for (int s = lt.size() - 1; s > lt.size() - 11; s--) {
			datalt.add(lt.get(s));
		}
		mm.addAttribute("datapro", dataProvider);
		mm.addAttribute("datalt", datalt);
		if (i != 1 && i != 5) {
			mm.addAttribute("axestll", valueAxesSet());
			mm.addAttribute("graphstll", graphsSet());
		}
		mm.addAttribute("i", i);
		mm.addAttribute("startdate", startdate);
		mm.addAttribute("enddate", enddate);
		return "index/showchart";
	}

	@SuppressWarnings("unchecked")
	private String graphsSet() {
		JSONObject json = new JSONObject();
		json.put("balloonText", "[[date]] [[value]]");
		json.put("bullet", "none");
		json.put("bulletBorderAlpha", 1);
		json.put("bulletSize", 0.01);
		json.put("useLineColorForBulletBorder", true);
		json.put("labelPosition", "left");
		json.put("title", "套利量");
		json.put("fillAlphas", 0);
		json.put("valueField", "tll");
		json.put("valueAxis", "dtlAxis");
		return json.toJSONString().length() > 0 ? json.toJSONString() : "";
	}

	@SuppressWarnings("unchecked")
	private String valueAxesSet() {
		JSONObject json = new JSONObject();
		json.put("id", "tllAxis");
		json.put("axisAlpha", 0);
		json.put("gridAlpha", 0);
		json.put("position", "left");// 依赖位置
		return json.toJSONString().length() > 0 ? json.toJSONString() : "";
	}*/
}
