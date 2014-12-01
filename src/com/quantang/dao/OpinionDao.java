package com.quantang.dao;

import java.util.List;
import java.util.Map;

import com.quantang.domain.Opinion;

/**
 * @author Jian
 *
 */
public interface OpinionDao {

	//
	/**
	 * @param type
	 * @return
	 * @todo 新增（反馈建�?在线留言/渠道合作�?
	 */
	List<Map<String, Object>> findOpinion(String type);

	/**
	 * @param opinion
	 * @return
	 * @todo 新增（反馈建�?在线留言/渠道合作�?
	 */
	Integer addOpinion(Opinion opinion);
}
