package com.quantang.web.index;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quantang.domain.Weather;
import com.quantang.service.AnalyseService;
import com.quantang.service.ArticleService;
import com.quantang.service.ChartDataService;
import com.quantang.service.NoticeService;

@Controller
public class IndexController {

	@Autowired
	private ArticleService articleService;

	@Autowired
	private AnalyseService analyseService;

	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private ChartDataService cdservice;

	@RequestMapping("/index.htm")
	public String index(ModelMap mm) {
		List<Map<String, Object>> topline = articleService.articleTopLine();
		List<Map<String, Object>> newlt = articleService.artcleNewList("0");
		List<Map<String, Object>> newlt1 = articleService.artcleNewList("1");
		List<Map<String, Object>> newlt2 = articleService.artcleNewList("2");
		mm.addAttribute("topline",topline);
		mm.addAttribute("newlt", newlt);
		mm.addAttribute("newlt1", newlt1);
		mm.addAttribute("newlt2", newlt2);

		List<Map<String, Object>> analyselt = analyseService.findAnalyseTop();
		mm.addAttribute("analyselt", analyselt);
		List<Map<String, Object>> noticelt = noticeService.getNoticeLast();
		mm.addAttribute("noticelt", noticelt);
		
		//折线图
//		List<Map<String, Object>> lt = cdservice.getWTIDataTime(0);
//		String dataProvider = JSONArray.toJSONString(lt);
//		mm.addAttribute("datapro", dataProvider);
		mm.addAttribute("index","active");
		return "index/index";
	}

	@RequestMapping("/getWeather.htm")
	public void getWeather(PrintWriter printWriter, String id) {
		Weather weather = new Weather();
		StringBuffer sb = new StringBuffer();
		try {
			URL url = new URL("http://www.weather.com.cn/data/cityinfo/" + id + ".html");
			URLConnection conn = url.openConnection();
			conn.setUseCaches(false);
			conn.setDoInput(true);
			conn.setDoOutput(true);

			BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			String line = null;
			while ((line = reader.readLine()) != null) {
				sb.append(line + "");
			}
			reader.close();
			String json = sb.toString();
			ObjectMapper objectMapper = new ObjectMapper();

			JsonNode jsonNode = objectMapper.readTree(json);
			JsonNode weatherinfo = jsonNode.findValue("weatherinfo");
			String city = weatherinfo.findValue("city").getValueAsText();
			String temp1 = weatherinfo.findValue("temp1").getValueAsText();
			String temp2 = weatherinfo.findValue("temp2").getValueAsText();
			String img1 = weatherinfo.findValue("img1").getValueAsText();
			String weather1 = weatherinfo.findValue("weather").getValueAsText();
			weather.setCurrentCity(city);
			weather.setTemperature(temp2 + "~" + temp1);
			weather.setDayPictureUrl(img1);
			weather.setWeather(weather1);
			String data = "";
			data = city + "," + temp2 + "~" + temp1 + "," + img1 + "," + weather1;
			printWriter.write(data);
			printWriter.flush();
			printWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
