package com.quantang.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quantang.dao.ArticleDao;
import com.quantang.domain.Article;
import com.quantang.domain.Page;
import com.quantang.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleDao articledao;

	@Override
	public Integer addArticle(Article article) {
		return articledao.addArticle(article);
	}

	@Override
	public List<Map<String, Object>> findAllArticle() {
		return articledao.findAllArticle();
	}

	@Override
	public Map<String, Object> findArticleById(String Id) {
		return articledao.findArticleById(Id);
	}

	@Override
	public List<Map<String, Object>> findArticle(String infoType, String infoStauts, String pubTime, String pubTime2) {
		return articledao.findArticle(infoType, infoStauts, pubTime, pubTime2);
	}

	@Override
	public Integer delArticle(String ids) {
		return articledao.delArticle(ids);
	}

	@Override
	public Integer pubArticle(String id) {
		return articledao.pubArticle(id);
	}

	@Override
	public Integer findMaxCount() {
		return articledao.findMaxCount();
	}

	@Override
	public Integer uptArticle(int id, String staticPage) {
		return articledao.uptArticle(id, staticPage);
	}

	public Page queryArticleforPage(String infoType, int pageSize, int currentPage) {
		// TODO Auto-generated method stub
		return articledao.queryArticleforPage(infoType, pageSize, currentPage);
	}

	@Override
	public List<Map<String, Object>> articleTopLine() {
		// TODO Auto-generated method stub
		return articledao.articleTopLine();
	}

	@Override
	public List<Map<String, Object>> artcleNewList(String infoType) {
		// TODO Auto-generated method stub
		return articledao.artcleNewList(infoType);
	}

	@Override
	public Map<String, Object> findArticleById2(String Id) {
		// TODO Auto-generated method stub
		return articledao.findArticleById2(Id);
	}
}
