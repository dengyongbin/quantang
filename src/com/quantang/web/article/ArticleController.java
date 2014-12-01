package com.quantang.web.article;

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
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import com.quantang.dao.impl.SystemDaoImpl;
import com.quantang.domain.Article;
import com.quantang.service.ArticleService;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

/**
 * 咨询view控制�?
 * 
 * @author yangjian
 * 
 */
@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;

	@Autowired
	private FreeMarkerConfigurer freeMarkerConfigurer;

	@Autowired
	private SystemDaoImpl system;

	/**
	 * @return String
	 * @todo 跳转到新增文章页
	 */
	@RequestMapping("/addarticle.htm")
	public String addacticle() {
		return "/article/article";
	}

	/**
	 * @param article
	 * @return String
	 * @todo 保存文章
	 */
	@RequestMapping("/savearticle.htm")
	public String savearticle(HttpServletRequest request, @RequestParam("fileUpload") CommonsMultipartFile file,
			Article article) {
		if (!file.isEmpty()) {
			String path = request.getSession().getServletContext().getRealPath("/") + "photo/"
					+ file.getOriginalFilename();
			File localFile = new File(path);
			try {
				file.transferTo(localFile);
				article.setImage("/photo/" + file.getOriginalFilename());
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		articleService.addArticle(article);
		return "redirect:/articleidx.htm";
	}

	/**
	 * @param mm
	 * @return String
	 * @todo 文章列表�?
	 */
	@RequestMapping("/articleidx.htm")
	public String articlelist(ModelMap mm) {
		List<Map<String, Object>> articleList = articleService.findAllArticle();
		mm.addAttribute("articleList", articleList);
		return "article/articlelist";
	}

	/**
	 * @param id
	 * @param mm
	 * @return String
	 * @todo 取得文章�?
	 */
	@RequestMapping("/article.htm")
	public String article(@RequestParam String id, ModelMap mm) {
		Map<String, Object> articleMap = articleService.findArticleById2(id);
		mm.addAllAttributes(articleMap);
		return "article/article";
	}

	/**
	 * @param infomationType
	 * @param infomationStatus
	 * @param timing
	 * @param timing1
	 * @param ids
	 * @return String
	 * @todo 删除文章
	 */
	@RequestMapping("/articleDelete.htm")
	public String articleDelete(@RequestParam String ids) {
		articleService.delArticle(ids);
		return "redirect:/articleidx.htm";
	}

	/**
	 * @param infomationType
	 * @param infomationStatus
	 * @param timing
	 * @param timing1
	 * @param id
	 * @return String
	 * @todo�?��章发�?
	 */
	@RequestMapping("/articlePublish.htm")
	public String articlePublish(@RequestParam String infomationType, @RequestParam String infomationStatus,
			@RequestParam String timing, @RequestParam String timing1, @RequestParam String id) {
		articleService.pubArticle(id);
		return "redirect:/articleidx.htm";
	}

	/**
	 * 发布新闻
	 * 
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/push.htm")
	public String pushArticle(HttpServletRequest request, @RequestParam int id) {
		Map<String, Object> articleMap = articleService.findArticleById(id + "");
		// 文件前缀�?
		// int maxCount = articleService.findMaxCount();
		int maxCount = system.getNewsCount();
		String dirPath = request.getSession().getServletContext().getRealPath("/") + "news/";
		// 静�?文件存放路径
		String newsPath = dirPath + maxCount + ".html";
		Configuration configuration = freeMarkerConfigurer.getConfiguration();
		Template template;
		try {
			// 文件模版
			template = configuration.getTemplate("news.ftl", "UTF-8");
			if (!new File(dirPath).exists()) {
				new File(dirPath).mkdirs();
			}
			File file = new File(newsPath);
			// 动�?实体设置属�?�?
			Article article = new Article();
			article.setTitle(String.valueOf(articleMap.get("title")));
			article.setContent(String.valueOf(articleMap.get("content")));
			article.setAuthor(String.valueOf(articleMap.get("author")));
			article.setTiming(String.valueOf(articleMap.get("timing")));
			article.setKeyWord(String.valueOf(articleMap.get("keyword")));
			article.setSummary(String.valueOf(articleMap.get("summary")));
			Map<String, Object> paramMap = new HashMap<String, Object>();
			Map<String, Article> rootMap = new HashMap<String, Article>();
			rootMap.put("article", article);
			template.setCustomAttribute("base", request.getSession().getServletContext().getAttribute("base"));
			paramMap.put("base", request.getSession().getServletContext().getAttribute("base"));
			paramMap.put("article", article);
			switch (String.valueOf(articleMap.get("infomation_type"))) {
			case "0":
				paramMap.put("industry", "active");
				paramMap.put("dailyreview", "");
				paramMap.put("analysis", "");
				break;
			case "1":
				paramMap.put("industry", "");
				paramMap.put("dailyreview", "active");
				paramMap.put("analysis", "");
				break;
			case "2":
				paramMap.put("industry", "");
				paramMap.put("dailyreview", "");
				paramMap.put("analysis", "active");
				break;
			default:
				break;
			}
			// 输出模版内容
			Writer out = new OutputStreamWriter(new FileOutputStream(file), "UTF-8");
			template.process(paramMap, out);
			IOUtils.closeQuietly(out);
			// 更新新闻实体状�?和静态页属�?�?
			articleService.uptArticle(id, "/news/" + maxCount + ".html");
			system.updateNewsCount(maxCount + 1);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		}
		return "redirect:/articleidx.htm";
	}
}
