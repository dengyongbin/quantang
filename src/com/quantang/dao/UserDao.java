package com.quantang.dao;

import java.util.List;
import java.util.Map;

public interface UserDao {
	
	List<Map<String,Object>> findAllUser();
	
	/**
	 * 根据用户名称查询
	 * @param userName
	 * @return 返回用户记录list
	 */
	List<Map<String,Object>> findUserByUserName(String userName);
}
