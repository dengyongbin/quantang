package com.quantang.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class SubscribeDaoImpl {
	
	@Autowired
	private JdbcTemplate jdbc;
	
	public Integer addSubscribe(String email) {
		String addSql = "insert into subscribe(email,time) values(?,NOW())";
		return jdbc.update(addSql, 
				email);
	}
}
