package com.quantang.web.analyse;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.quantang.domain.Analyse;
import com.quantang.service.AnalyseService;

/**
 * 分析师view控制类
 * 
 * @author dengyb
 * 
 */
@Controller
public class AnalyseController {

	@Autowired
	private AnalyseService analyseService;

	@RequestMapping("/analyseidx.htm")
	public String search(ModelMap mm) {
		List<Map<String, Object>> analyseList = analyseService.findAllAnalyse();
		mm.addAttribute("analyseList", analyseList);
		return "/analyse/analyseList";
	}

	@RequestMapping("/analyseNew.htm")
	public String analyseNew() {
		return "/analyse/analyseNew";
	}

	@RequestMapping("/analyseSave.htm")
	public String save(HttpServletRequest request, @RequestParam("fileUpload") CommonsMultipartFile file,
			Analyse analyse) {
		if (!file.isEmpty()) {
			String path = request.getSession().getServletContext().getRealPath("/") + "photo/"
					+ file.getOriginalFilename();
			File localFile = new File(path);
			try {
				file.transferTo(localFile);
				analyse.setPhoto("/photo/" + file.getOriginalFilename());
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		analyseService.addAnalyse(analyse);
		return "redirect:/analyseidx.htm";
	}

	@RequestMapping("/articleUpdate.htm")
	public String update(@RequestParam int id, ModelMap mm) {
		Map<String, Object> analyseMap = analyseService.findAnalyseById(id);
		mm.addAllAttributes(analyseMap);
		return "/analyse/analyseNew";
	}

	@RequestMapping("analyseDelete.htm")
	public String analyseDelete(@RequestParam String ids) {
		analyseService.delAnalyse(ids);
		return "redirect:/analyseidx.htm";
	}
}
