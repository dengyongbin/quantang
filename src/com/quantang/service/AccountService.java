package com.quantang.service;

import java.util.List;
import java.util.Map;

public interface AccountService {
	List<Map<String, Object>> findAccount();

	void addAccount(String name, String phone, String email,String sex,String age);
}
