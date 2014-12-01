package com.quantang.dao;

import java.util.List;
import java.util.Map;

/**
 * @author Jian
 * 
 */
public interface ChartDataDao {

	List<Map<String, Object>> getCurrentData(String cclass);

	List<Map<String, Object>> getDailyData(String cclass, Integer days);
}
