package com.quantang.service;

import java.util.List;
import java.util.Map;

public interface UserService {
	
	List<Map<String, Object>> findAllUser();
	
	/**
	 * 根据用户名查�?
	 * @param userName
	 * @return 用户记录
	 */
	List<Map<String, Object>> getUserByUserName(String userName);
}
