package com.quantang.service;

import java.util.List;
import java.util.Map;

public interface ChartDataService {

	List<Map<String, Object>> getCurrentData(String cclass);

	List<Map<String, Object>> getDailyData(String cclass, Integer days);
}
