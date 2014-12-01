package com.quantang.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quantang.dao.AccountDao;
import com.quantang.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountDao accountdao;

	@Override
	public List<Map<String, Object>> findAccount() {
		// TODO Auto-generated method stub
		return accountdao.findAccount();
	}

	@Override
	public void addAccount(String name, String phone, String email, String sex, String age) {
		accountdao.addAccount(name, phone, email, sex, age);
	}

}
