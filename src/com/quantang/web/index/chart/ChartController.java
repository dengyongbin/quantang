package com.quantang.web.index.chart;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quantang.service.ChartDataService;

@Controller
public class ChartController {
	@Autowired
	private ChartDataService cdservice;

	@RequestMapping("/currentdata.htm")
	public void getcurrent(String cclass, PrintWriter printWriter) {
		List<Map<String, Object>> lt = cdservice.getCurrentData(cclass);
		printWriter.print(JSONArray.toJSONString(lt));
		printWriter.flush();
		printWriter.close();
	}

	@RequestMapping("/dailydata.htm")
	public void getdaily(String cclass, PrintWriter printWriter) {
		List<Map<String, Object>> lt = cdservice.getDailyData(cclass, 0);
		/* String[][] ltarr = new String[lt.size()][2]; */
		/*
		 * String str = "", str2 = ""; for (int i = 0; i < lt.size(); i++) { str
		 * += String.valueOf(lt.get(i).get("tradedate")) + ","; str2 +=
		 * String.valueOf(lt.get(i).get("price")) + ","; }
		 */
		/* printWriter.write(str + "|" + str2); */
		printWriter.print(JSONArray.toJSONString(lt));
		printWriter.flush();
		printWriter.close();
	}
}
