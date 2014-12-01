package com.quantang.dao;

import java.util.List;
import java.util.Map;

import com.quantang.domain.Notice;
import com.quantang.domain.Page;

public interface NoticeDao {

	void addNotice(Notice notice);

	List<Map<String, Object>> findAllnotice();

	Map<String, Object> getNoticeById(String noticeid);

	Integer delArticle(String ids);

	Integer findMaxCount();

	Integer pubNotice(String id, String staticPage);

	List<Map<String, Object>> getNoticeLast();
	
	Page queryNoticeforPage(int pageSize, int currentPage);
}
