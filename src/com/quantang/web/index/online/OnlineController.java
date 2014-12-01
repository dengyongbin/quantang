package com.quantang.web.index.online;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quantang.service.AnalyseService;
import com.quantang.service.NoticeService;

@Controller
public class OnlineController {

	@Autowired
	private AnalyseService analyseService;

	@Autowired
	private NoticeService noticeService;

	@RequestMapping("/online.htm")
	public String online(ModelMap mm) {
		// List<Map<String, Object>> analyselt =
		// analyseService.findAllAnalyse();
		// 技术
		mm.addAttribute("analyselt", analyseService.findAnalyseByType("0"));
		// 售前
		mm.addAttribute("analyselt1", analyseService.findAnalyseByType("1"));
		// 售后
		mm.addAttribute("analyselt2", analyseService.findAnalyseByType("2"));

		List<Map<String, Object>> noticelt = noticeService.getNoticeLast();
		mm.addAttribute("noticelt", noticelt);
		mm.addAttribute("online","active");
		return "/index/online";
	}
}
