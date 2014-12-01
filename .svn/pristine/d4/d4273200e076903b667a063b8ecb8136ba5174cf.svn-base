package com.quantang.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.quantang.dao.UserDao;

@Repository
public class UserDaoImpl implements UserDao {

	private final String QUERY_ALL_USER_SQL = "SELECT * FROM user";
	
	private final String QUERY_USER_BY_USERNAME = "SELECT * FROM user u where u.user_name = ?";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Map<String, Object>> findAllUser() {
		return jdbcTemplate.queryForList(QUERY_ALL_USER_SQL);
		//return null;
	}

	@Override
	public List<Map<String, Object>> findUserByUserName(String userName) {
		return jdbcTemplate.queryForList(QUERY_USER_BY_USERNAME, new Object[]{userName});
	}

}
