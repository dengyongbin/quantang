package com.quantang.service;

import java.util.List;
import java.util.Map;

import com.quantang.domain.Analyse;

/**
 * 分析师service接口�?
 * 
 * @author dengyb
 * 
 */
public interface AnalyseService {

	/**
	 * 新增分析�?
	 * 
	 * @param analyse
	 * @return
	 */
	Integer addAnalyse(Analyse analyse);

	/**
	 * 删除分析�?
	 * 
	 * @param id
	 * @return
	 */
	Integer delAnalyse(int id);

	/**
	 * 批量删除分析�?
	 * 
	 * @param ids
	 * @return
	 */
	Integer delAnalyse(String ids);

	/**
	 * 查询�?��分析�?
	 * 
	 * @return
	 */
	List<Map<String, Object>> findAllAnalyse();

	/**
	 * 根据id查询分析�?
	 * 
	 * @param id
	 * @return
	 */
	Map<String, Object> findAnalyseById(int id);

	/**
	 * 查询�?��分析�?
	 * 
	 * @return
	 */
	List<Map<String, Object>> findAnalyseByType(String type);

	/**
	 * @return
	 * @todo 推荐客服
	 */
	List<Map<String, Object>> findAnalyseTop();

}
