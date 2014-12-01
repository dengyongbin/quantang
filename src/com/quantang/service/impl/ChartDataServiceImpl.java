package com.quantang.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quantang.dao.ChartDataDao;
import com.quantang.service.ChartDataService;

@Service
public class ChartDataServiceImpl implements ChartDataService {
	@Autowired
	private ChartDataDao cddao;

	@Override
	public List<Map<String, Object>> getCurrentData(String cclass) {
		// TODO Auto-generated method stub
		return cddao.getCurrentData(cclass);
	}

	@Override
	public List<Map<String, Object>> getDailyData(String cclass, Integer days) {
		// TODO Auto-generated method stub
		return cddao.getDailyData(cclass, days);
	}

}
