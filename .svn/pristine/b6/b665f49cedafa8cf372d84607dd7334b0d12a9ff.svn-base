package com.quantang.dao;

import java.util.List;
import java.util.Map;

import com.quantang.domain.Article;
import com.quantang.domain.Page;

/**
 * @author Jian
 * 
 */
public interface ArticleDao {

	/**
	 * @param article
	 * @return
	 * @todo 新增文章
	 */
	Integer addArticle(Article article);

	/**
	 * @return
	 * @todo 查询�?��文章
	 */
	List<Map<String, Object>> findAllArticle();

	/**
	 * @param Id
	 * @return
	 * @todo 按ID查询文章
	 */
	Map<String, Object> findArticleById(String Id);
	
	/**
	 * @param Id
	 * @return
	 * @todo 按ID查询文章
	 */
	Map<String, Object> findArticleById2(String Id);

	/**
	 * @param infoType
	 * @param infoStauts
	 * @param pubTime
	 * @param pubTime2
	 * @return
	 * @todo 多条件查找文�?
	 */
	List<Map<String, Object>> findArticle(String infoType, String infoStauts, String pubTime, String pubTime2);

	/**
	 * @param ids
	 * @return
	 * @todo 批量删除文章
	 */
	Integer delArticle(String ids);

	/**
	 * @param id
	 * @return
	 * @todo 发布文章
	 */
	Integer pubArticle(String id);

	/**
	 * @param id
	 * @param staticPage
	 * @return
	 * @todo 更新文章
	 */
	Integer uptArticle(int id, String staticPage);

	/**
	 * @return
	 * @todo 取得�?��文章�?
	 */
	Integer findMaxCount();

	/**
	 * @param infoType
	 * @param pageSize
	 * @param currentPage
	 * @return
	 * @todo 分页查询文章
	 */
	Page queryArticleforPage(String infoType, int pageSize, int currentPage);

	/**
	 * @return
	 * @todo 首页展示文章头条
	 */
	List<Map<String, Object>> articleTopLine();

	/**
	 * @param infoType
	 * @return
	 * @todo 首页展示文章列表
	 */
	List<Map<String, Object>> artcleNewList(String infoType);
}
