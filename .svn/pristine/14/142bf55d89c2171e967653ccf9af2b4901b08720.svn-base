package com.quantang.web.opinion;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quantang.common.Constant;
import com.quantang.service.OpinionService;

@Controller
public class OpinionController {

	@Autowired
	private OpinionService opinionService;

	@RequestMapping("/opinionidx.htm")
	public String opinion(ModelMap mm) {
		List<Map<String, Object>> opinionList = opinionService.findOpinion(Constant.OPINION);
		mm.addAttribute("opinionList", opinionList);
		return "opinion/opinionlist";
	}

	@RequestMapping("/messageidx.htm")
	public String message(String type, ModelMap mm) {
		List<Map<String, Object>> opinionList = opinionService.findOpinion(Constant.MESSAGE);
		mm.addAttribute("opinionList", opinionList);
		return "opinion/messagelist";
	}
	
	@RequestMapping("/channelidx.htm")
	public String channel(String type, ModelMap mm) {
		List<Map<String, Object>> opinionList = opinionService.findOpinion(Constant.CHANNEL);
		mm.addAttribute("opinionList", opinionList);
		return "opinion/channellist";
	}
}
