package com.quantang.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.quantang.dao.ChartDataDao;

@Repository
public class ChartDataDaoImpl implements ChartDataDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Map<String, Object>> getCurrentData(String cclass) {
		StringBuffer querySQL = new StringBuffer("");
		querySQL.append("select price,UNIX_TIMESTAMP(tradedate)*1000 tradedate,CONCAT(cast(changerate as decimal(4,2)),'%') changerate,buy,sell,maxprice,minprice,yestodayprice,openprice from noblemetal where 1=1");
		if (!"".equals(cclass)) {
			querySQL.append(" and class = '" + cclass + "'");
		}
		querySQL.append(" order by  tradedate desc LIMIT 1");
		return jdbcTemplate.queryForList(querySQL.toString());
	}

	@Override
	public List<Map<String, Object>> getDailyData(String cclass, Integer days) {
		StringBuffer querySQL = new StringBuffer("");
		querySQL.append("select UNIX_TIMESTAMP(tradedate)*1000 tradedate,changerate,price from noblemetal where 1=1");
		querySQL.append(" and class = '").append(cclass).append("'");
		querySQL.append(" and to_days(tradedate) = to_days(now()) - " + days);
		querySQL.append(" order by tradedate asc");
		return jdbcTemplate.queryForList(querySQL.toString());
	}

}
