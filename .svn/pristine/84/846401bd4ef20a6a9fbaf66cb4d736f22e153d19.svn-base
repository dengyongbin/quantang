package com.quantang.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.quantang.dao.AccountDao;

@Repository
public class AccountDaoImpl implements AccountDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Map<String, Object>> findAccount() {
		StringBuffer querySQL = new StringBuffer("select * from account where 1=1 order by ask_time");
		return jdbcTemplate.queryForList(querySQL.toString());
	}

	@SuppressWarnings("deprecation")
	@Override
	public void addAccount(String name, String phone, String email, String sex, String age) {
		StringBuffer querySQL = new StringBuffer("select ifnull(max(account_id),0)+1 from account;");
		StringBuffer insertSQL = new StringBuffer("insert into account values(?,?,?,?,now(),?,?);");
		jdbcTemplate.update(insertSQL.toString(), new Object[] { jdbcTemplate.queryForInt(querySQL.toString()), name,
				phone, email, sex, age });
	}

	public Integer saveAccount(String name, String phone, String email, String sex, String age) {
		String addSql = "insert into account(name,phone,email,ask_time) values(?,?,?,NOW(),?,?)";
		return jdbcTemplate.update(addSql, name, phone, email, sex, age);
	}
}
