package com.quantang.web.index.notice;

import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quantang.common.Constant;
import com.quantang.domain.Page;
import com.quantang.service.NoticeService;

@Controller
public class NoticesController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/notices.htm")
	private String internal(HttpServletRequest request, ModelMap mm) {
		String currentPage = request.getParameter("p");
		if (currentPage == null) {
			currentPage = "1";
		}
		String regex = "^[1-9]d*$";
		Pattern pat = Pattern.compile(regex);
		Matcher matcher = pat.matcher(currentPage);
		if (!matcher.matches()) {
			return "";
		}
		Page page = noticeService.queryNoticeforPage( Page.pageSize,
				Integer.valueOf(currentPage));
		List<Map<String, Object>> noticelt = page.getList();
		mm.addAttribute("noticelt", noticelt);
		if (page.getAllRow() > Page.pageSize) {
			mm.addAttribute("paging", pagingSet(Constant.ARTICLE_TYPE[2], page));
		}
		mm.addAttribute("notice", "active");
		return "index/notice";
	}
	
	private String pagingSet(String articletype, Page page) {

		String url = "notice.htm";
		// 第一页
		String firstHTM = "";
		// 上一页
		String prevHTM = "";
		// 最后页
		String lastHTM = "";
		// 下一页
		String nextHTM = "";
		if (page.getCurrentPage() != 1) {
			firstHTM = "<span class=\"first\"><a href=\""
					+ url + "?p=1\">|&lt;</a></span>";
			prevHTM = "<span class=\"prev\"><a href=\"" + url + "?p=" + (page.getCurrentPage() - 1)
					+ "\">&lt;</a></span>";
		}
		if (page.getCurrentPage() != page.getTotalPage()) {
			lastHTM = "<span class=\"end\"><a href=\"" + url + "?p=" + page.getTotalPage()
					+ "\">&gt;|</a></span>";
			nextHTM = "<span class=\"next\"><a href=\""
					+ url
					+ "?p="
					+ (page.getCurrentPage() + 1 > page.getTotalPage() ? page.getCurrentPage()
							: page.getCurrentPage() + 1) + "\">&gt;</a></span>";
		}

		String pageNOHTM = "";

		int left = 0;
		int right = 0;

		// 判断分页轴能否保证平衡(1|2|（3）|4|5)
		int tmpleft = page.getCurrentPage() - Constant.PAGE_AROUND;
		int tmpright = page.getTotalPage() - page.getCurrentPage();

		if (tmpleft >= 1) {
			left = tmpleft;
		} else {
			left = 1;
		}
		if (tmpright <= Constant.PAGE_AROUND) {
			right = page.getTotalPage();
		} else {
			right = page.getCurrentPage() + Constant.PAGE_AROUND;
		}

		// 不平衡时左右处理
		if (page.getCurrentPage() - left != Constant.PAGE_AROUND) {
			int leftdiff = 0;
			leftdiff = page.getCurrentPage() - left;
			if (leftdiff == 0) {
				right = right + Constant.PAGE_AROUND > page.getTotalPage() ? page.getTotalPage() : right
						+ Constant.PAGE_AROUND;
			} else {
				right = right + leftdiff > page.getTotalPage() ? page.getTotalPage() : right + leftdiff;
			}
		}
		if (right - page.getCurrentPage() != Constant.PAGE_AROUND) {
			int rightdiff = 0;
			rightdiff = right - page.getCurrentPage();
			if (rightdiff == 0) {
				left = left - Constant.PAGE_AROUND < 1 ? 1 : left - Constant.PAGE_AROUND;
			} else {
				left = left - rightdiff < 1 ? 1 : left - rightdiff;
			}
		}

		while (left <= right) {
			if (left == page.getCurrentPage()) {
				pageNOHTM += "<b>" + left + "</b>";
			} else {
				pageNOHTM += "<a href=\"" + url + "?p=" + left + "\">" + left + "</a>";
			}
			left++;
		}
		return "<div class=\"clearfix pages\"><div class=\"pull-right pgs\">"+firstHTM + prevHTM + pageNOHTM + nextHTM + lastHTM+"</div></div>";
	}
}
