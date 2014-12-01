package com.quantang.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quantang.dao.UserDao;
import com.quantang.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public List<Map<String, Object>> findAllUser() {
		return userDao.findAllUser();
	}

	@Override
	public List<Map<String, Object>> getUserByUserName(String userName) {
		return userDao.findUserByUserName(userName);
	}

}
