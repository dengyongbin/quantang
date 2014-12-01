package com.quantang.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quantang.dao.NoticeDao;
import com.quantang.domain.Notice;
import com.quantang.domain.Page;
import com.quantang.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao noticedao;

	@Override
	public void addNotice(Notice notice) {
		// TODO Auto-generated method stub
		noticedao.addNotice(notice);
	}

	@Override
	public List<Map<String, Object>> findAllnotice() {
		// TODO Auto-generated method stub
		return noticedao.findAllnotice();
	}

	@Override
	public Map<String, Object> getNoticeById(String noticeid) {
		// TODO Auto-generated method stub
		return noticedao.getNoticeById(noticeid);
	}

	@Override
	public Integer delArticle(String ids) {
		// TODO Auto-generated method stub
		return noticedao.delArticle(ids);
	}

	@Override
	public Integer findMaxCount() {
		// TODO Auto-generated method stub
		return noticedao.findMaxCount();
	}

	@Override
	public Integer pubNotice(String id, String staticPage) {
		// TODO Auto-generated method stub
		return noticedao.pubNotice(id, staticPage);
	}

	@Override
	public List<Map<String, Object>> getNoticeLast() {
		// TODO Auto-generated method stub
		return noticedao.getNoticeLast();
	}

	@Override
	public Page queryNoticeforPage(int pageSize, int currentPage) {
		// TODO Auto-generated method stub
		return noticedao.queryNoticeforPage(pageSize, currentPage);
	}

}
