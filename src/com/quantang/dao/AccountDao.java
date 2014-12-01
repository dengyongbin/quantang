package com.quantang.dao;

import java.util.List;
import java.util.Map;

/**
 * @author Jian
 * 
 */
public interface AccountDao {

	/**
	 * @return
	 * @todo 查询�?��预约信息
	 */
	List<Map<String, Object>> findAccount();

	void addAccount(String name, String phone, String email,String sex,String age);
}
