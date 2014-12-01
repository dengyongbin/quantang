package com.quantang.service;

import java.util.List;
import java.util.Map;

import com.quantang.domain.Article;
import com.quantang.domain.Page;

public interface ArticleService {
	Integer addArticle(Article article);

	List<Map<String, Object>> findAllArticle();

	Map<String, Object> findArticleById(String Id);
	
	Map<String, Object> findArticleById2(String Id);

	List<Map<String, Object>> findArticle(String infoType, String infoStauts, String pubTime, String pubTime2);

	Integer delArticle(String ids);

	Integer pubArticle(String id);

	Page queryArticleforPage(String infoType, int pageSize, int currentPage);

	List<Map<String, Object>> articleTopLine();

	List<Map<String, Object>> artcleNewList(String infoType);

	/**
	 * 根据主键更新新闻实体属�?
	 * 
	 * @param id
	 *            主键
	 * @param staticPage
	 *            静�?文件参数
	 * @return
	 */
	Integer uptArticle(int id, String staticPage);

	/**
	 * 查询咨询表最大记录数
	 * 
	 * @return
	 */
	Integer findMaxCount();
}
