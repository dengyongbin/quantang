package com.quantang.web.index;

import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.quantang.domain.Opinion;
import com.quantang.service.OpinionService;

@Controller
public class DynamicController {
	
	
	@Autowired
	private OpinionService opinionService;

	@RequestMapping("/aboutus.htm")
	public String aboutus(ModelMap mm) {
		mm.addAttribute("aboutus", "active");
		return "index/aboutus";
	}

	@RequestMapping("/contact.htm")
	public String contactus(ModelMap mm) {
		mm.addAttribute("contact", "active");
		return "index/contact";
	}

	@RequestMapping("/product.htm")
	public String product(ModelMap mm) {
		mm.addAttribute("product", "active");
		return "index/product";
	}

	@RequestMapping("/feature.htm")
	public String feature() {
		return "index/feature";
	}

	@RequestMapping("/jyxz.htm")
	public String jyxz() {
		return "index/jyxz";
	}

	@RequestMapping("/qybz.htm")
	public String qybz() {
		return "index/qybz";
	}

	@RequestMapping("/rjxz.htm")
	public String rjxz() {
		return "index/rjxz";
	}

	@RequestMapping("/question.htm")
	public String question(ModelMap mm) {
		mm.addAttribute("question", "active");
		return "index/question";
	}

	@RequestMapping("/download.htm")
	public String download(ModelMap mm) {
		mm.addAttribute("download", "active");
		return "index/download";
	}

	@RequestMapping("/law.htm")
	public String law() {
		return "index/law";
	}

	@RequestMapping("/sitemap.htm")
	public String sitemap() {
		return "index/sitemap";
	}


	@RequestMapping(value = "/opinionSubmit.htm", method = RequestMethod.POST)
	public void opinionSubmit(PrintWriter printWriter, String name, String email, String content) {
		Opinion opinion = new Opinion();
		opinion.setName(name);
		opinion.setEmail(email);
		opinion.setContent(content);
		opinionService.addOpinion(opinion);
		printWriter.flush();
		printWriter.close();
	}
}
