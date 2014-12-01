package com.quantang.web.notice;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import com.quantang.dao.impl.SystemDaoImpl;
import com.quantang.domain.Notice;
import com.quantang.service.NoticeService;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	@Autowired
	private FreeMarkerConfigurer freeMarkerConfigurer;

	@Autowired
	private SystemDaoImpl system;
	
	/**
	 * @param mm
	 * @return String
	 * @todo 公告列表�?
	 */
	@RequestMapping("/noticeidx.htm")
	public String noticelist(ModelMap mm) {
		List<Map<String, Object>> noticeList = noticeService.findAllnotice();
		mm.addAttribute("noticeList", noticeList);
		return "notice/noticelist";
	}

	/**
	 * @return String
	 * @todo 跳转到新增公告页
	 */
	@RequestMapping("/addnotice.htm")
	public String addnotice(ModelMap mm) {
		return "notice/notice";
	}

	/**
	 * @return String
	 * @todo 跳转到公告页
	 */
	@RequestMapping("/notice.htm")
	public String notice(String id, ModelMap mm) {
		Map<String, Object> noticeMap = noticeService.getNoticeById(id);
		mm.addAllAttributes(noticeMap);
		return "notice/notice";
	}

	/**
	 * @param notice
	 * @return
	 * @todo 保存公告
	 */
	@RequestMapping("/savenotice.htm")
	public String saveNotice(Notice notice) {
		noticeService.addNotice(notice);
		return "redirect:/noticeidx.htm";
	}

	@RequestMapping("/noticeDelete.htm")
	public String noticeDelete(@RequestParam String ids) {
		noticeService.delArticle(ids);
		return "redirect:/noticeidx.htm";
	}

	/**
	 * 发布通知
	 * 
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/pushNotice.htm")
	public String pushArticle(HttpServletRequest request, @RequestParam String id) {
		Map<String, Object> noticeMap = noticeService.getNoticeById(id);
		// 文件前缀�?
		//int maxCount = noticeService.findMaxCount();
		int maxCount = system.getNewsCount();
		// 静�?文件存放路径
		String newsPath = request.getSession().getServletContext().getRealPath("/") + "notices/";
		File dlr = new File(newsPath);
		if (!dlr.exists()) {
			dlr.mkdirs();
		}
		String fileName = maxCount + ".html";
		Configuration configuration = freeMarkerConfigurer.getConfiguration();
		Template template;
		try {
			// 文件模版
			template = configuration.getTemplate("notice.ftl", "UTF-8");
			File file = new File(newsPath + fileName);
			// 动�?实体设置属�?�?

			Notice notice = new Notice();

			notice.setTitle(String.valueOf(noticeMap.get("title")));
			notice.setContent(String.valueOf(noticeMap.get("content")));
			notice.setCrdate(String.valueOf(noticeMap.get("crdate")));

			Map<String, Object> paramMap = new HashMap<String, Object>();
			Map<String, Notice> rootMap = new HashMap<String, Notice>();
			rootMap.put("notice", notice);
			template.setCustomAttribute("base", request.getSession().getServletContext().getAttribute("base"));
			paramMap.put("base", request.getSession().getServletContext().getAttribute("base"));
			paramMap.put("notice", notice);
			// 输出模版内容
			Writer out = new OutputStreamWriter(new FileOutputStream(file), "UTF-8");
			template.process(paramMap, out);
			IOUtils.closeQuietly(out);
			// 更新新闻实体状�?和静态页属�?�?
			noticeService.pubNotice(id, "/notices/" + maxCount + ".html");
			system.updateNewsCount(maxCount+1);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		}
		return "redirect:/noticeidx.htm";
	}

}
