package com.quantang.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.quantang.dao.OpinionDao;
import com.quantang.domain.Opinion;

@Repository
public class OpinionDaoImpl implements OpinionDao {

	@Autowired
	private JdbcTemplate jdbc;

	@Override
	public List<Map<String, Object>> findOpinion(String type) {
		StringBuffer querySQL = new StringBuffer("select * from opinion where 1=1 and type = ? order by feed_time desc");
		return jdbc.queryForList(querySQL.toString(), new Object[] { type });
	}

	@Override
	public Integer addOpinion(Opinion opinion) {
		String addSql = "insert into opinion(name,email,content,type) values(?,?,?,?)";
		return jdbc.update(addSql, 
				opinion.getName(),
				opinion.getEmail(),
				opinion.getContent(),
				opinion.getType());
	}

}
