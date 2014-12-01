package com.quantang.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class SystemDaoImpl {
	
	@Autowired
	private JdbcTemplate jdbc;
	
	public Integer getNewsCount() {
		String countSql = "select system_value from system";
		return (Integer) this.jdbc.queryForObject(countSql, Integer.class);
	}
	
	public Integer updateNewsCount(int count) {
		StringBuffer uptSql = new StringBuffer("update system set system_value =").append(count).append(" where system_id = 1");
		return jdbc.update(uptSql.toString());
	}
}
