package com.quantang.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.quantang.dao.AccountOpenDao;

@Repository
public class AccountOpenDaoImpl implements AccountOpenDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public String getAccountOpenCode() {
		String sql = "select min(account_code) as account_code from accountopen where account_status=0";
		return jdbcTemplate.queryForObject(sql, String.class);
	}

	@Override
	public int updateAcccountOpenCode(String openCode) {
		String sql = "update accountopen set account_status = '1' where account_code =?";
		return jdbcTemplate.update(sql, new Object[] { openCode });
	}

	@Override
	public String getAccountName(String protocolId) {
		String sql = "select name from protocol where protocolId = " + protocolId;
		if (jdbcTemplate.queryForInt("select count(1) from protocol where protocolId = " + protocolId) > 0) {
			return jdbcTemplate.queryForObject(sql, String.class);
		}
		return "";
	}

	@Override
	public String getFirmAccount(String protocolId) {
		String sql = "select firmAccounts from protocol where protocolId = " + protocolId;
		if (jdbcTemplate.queryForInt("select count(1) from protocol where protocolId = " + protocolId) > 0) {
			return jdbcTemplate.queryForObject(sql, String.class);
		}
		return "";
	}

	@Override
	public int getCountById(String protocolId) {
		return jdbcTemplate.queryForInt("select count(1) from protocol where protocolId = " + protocolId);
	}

}
