package com.quantang.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quantang.dao.AnalyseDao;
import com.quantang.domain.Analyse;
import com.quantang.service.AnalyseService;

@Service
public class AnalyseServiceImpl implements AnalyseService {

	@Autowired
	private AnalyseDao analyseDao;

	@Override
	public Integer addAnalyse(Analyse analyse) {
		return analyseDao.addAnalyse(analyse);
	}

	@Override
	public Integer delAnalyse(int id) {
		return analyseDao.delAnalyse(id);
	}

	/**
	 * 批量删除分析�?
	 * 
	 * @param ids
	 * @return
	 */
	@Override
	public Integer delAnalyse(String ids) {
		return analyseDao.delAnalyse(ids);
	}

	@Override
	public List<Map<String, Object>> findAllAnalyse() {
		return analyseDao.findAllAnalyse();
	}

	@Override
	public Map<String, Object> findAnalyseById(int id) {
		return analyseDao.findAnalyseById(id);
	}

	@Override
	public List<Map<String, Object>> findAnalyseByType(String type) {
		return analyseDao.findAnalyseByType(type);
	}

	@Override
	public List<Map<String, Object>> findAnalyseTop() {
		return analyseDao.findAnalyseTop();
	}

}
