package com.quantang.dao.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.quantang.common.Checker;
import com.quantang.dao.AnalyseDao;
import com.quantang.domain.Analyse;

@Repository
public class AnalyseDaoImpl implements AnalyseDao {

	@Autowired
	private JdbcTemplate jdbc;

	@Override
	public Integer addAnalyse(Analyse analyse) {
		if (Checker.isEmpty(analyse.getAnalyse_id())) {
			String addSql = "insert into analyse(name,year,business,profile,performance,photo,qq,phone,home_top,type,position) values(?,?,?,?,?,?,?,?,?,?,?)";
			return jdbc.update(addSql, analyse.getName(), analyse.getYear(), analyse.getBusiness(),
					analyse.getProfile(), analyse.getPerformance(), analyse.getPhoto(), analyse.getQq(),
					analyse.getPhone(), analyse.getHomeTop(), analyse.getType(), analyse.getPosition());
		} else {
			String uptSql = "update analyse set name=?,year=?,business=?,profile=?,performance=?,photo=?,qq=?,phone=?,home_top=?,type=?,position=? where analyse_id=?";
			return jdbc.update(uptSql, analyse.getName(), analyse.getYear(), analyse.getBusiness(),
					analyse.getProfile(), analyse.getPerformance(), analyse.getPhoto(), analyse.getQq(),
					analyse.getPhone(), analyse.getHomeTop(), analyse.getType(), analyse.getPosition(),
					analyse.getAnalyse_id());
		}
	}

	@Override
	public Integer delAnalyse(int id) {
		return null;
	}

	@Override
	public List<Map<String, Object>> findAllAnalyse() {
		String querySql = "select * from analyse";
		return jdbc.queryForList(querySql);
	}

	@Override
	public Map<String, Object> findAnalyseById(int id) {
		String querySql = "select * from analyse a where a.analyse_id = " + id;
		return jdbc.queryForMap(querySql);
	}

	/**
	 * 批量删除分析�?
	 * 
	 * @param ids
	 * @return
	 */
	@Override
	public Integer delAnalyse(String ids) {
		final String[] idss = ids.split(",");
		StringBuffer deleteSQL = new StringBuffer("");
		deleteSQL.append(" delete from analyse where analyse_id = ?");
		BatchPreparedStatementSetter setter = new BatchPreparedStatementSetter() {
			public void setValues(PreparedStatement ps, int i) throws SQLException {
				ps.setInt(1, Integer.valueOf(idss[i]));
			}

			public int getBatchSize() {
				return idss.length;
			}
		};
		int[] i = this.jdbc.batchUpdate(deleteSQL.toString(), setter);
		return i.length;
	}

	@Override
	public List<Map<String, Object>> findAnalyseByType(String type) {
		int limit = 2;
		if ("1".equals(type)) {
			limit = 4;
		}
		StringBuffer querySQL = new StringBuffer(" select * from analyse where type = ? order by analyse_id limit ?");
		return jdbc.queryForList(querySQL.toString(), new Object[] { type, limit });
	}

	@Override
	public List<Map<String, Object>> findAnalyseTop() {
		StringBuffer querySQL = new StringBuffer(" select * from analyse where home_top =1 order by analyse_id limit 4");
		return jdbc.queryForList(querySQL.toString());
	}
}
