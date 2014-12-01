package com.quantang.dao.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.quantang.common.Constant;
import com.quantang.dao.CaptureDao;

@Repository
public class CaptureDaoImpl implements CaptureDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void saveNobleMetalData(String datas) {
		if ("".equals(datas) || datas == null) {
			return;
		}
		String data[] = datas.split(";");
		List<String[]> list = new ArrayList<String[]>();
		List<String> listClass = new ArrayList<String>();
		for (int i = 0; i < data.length; i++) {
			String[] datainfo = data[i].split("\"")[1].split(",");
			if (data[i].contains(Constant.CAPTURE_CALSS[i])) {
				if (!"".equals(Constant.TMP_TRADEDATE[i]) && datainfo[6].equals(Constant.TMP_TRADEDATE[i])) {
					Constant.TMP_TRADEDATE[i] = datainfo[6];
					break;
				}
				list.add(datainfo);
				listClass.add(Constant.CAPTURE_CALSS[i]);
				Constant.TMP_TRADEDATE[i] = datainfo[6];
			}
		}
		if (list.size() > 0) {
			saveData(listClass, list);
		}

	}

	private void saveData(final List<String> listClass, final List<String[]> list) {
		StringBuffer insertSQL = new StringBuffer("");
		insertSQL
				.append(" insert into noblemetal (class,tradedate,changerate,price,buy,sell,maxprice,minprice,yestodayprice,openprice,amount,buyamount,sellamount)");
		insertSQL.append(" values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

		jdbcTemplate.batchUpdate(insertSQL.toString(), new BatchPreparedStatementSetter() {
			Object[] obj = null;

			@Override
			public void setValues(PreparedStatement ps, int i) throws SQLException {
				// TODO Auto-generated method stub
				obj = (Object[]) list.get(i);
				ps.setString(1, listClass.get(i).toString());
				ps.setTimestamp(2, Timestamp.valueOf(obj[12] + " " + obj[6]));
				ps.setDouble(3, !"".equals(obj[1]) ? Double.valueOf(obj[1].toString()) : 0);
				ps.setDouble(4, !"".equals(obj[0]) ? Double.valueOf(obj[0].toString()) : 0);
				ps.setDouble(5, !"".equals(obj[2]) ? Double.valueOf(obj[2].toString()) : 0);
				ps.setDouble(6, !"".equals(obj[3]) ? Double.valueOf(obj[3].toString()) : 0);
				ps.setDouble(7, !"".equals(obj[4]) ? Double.valueOf(obj[4].toString()) : 0);
				ps.setDouble(8, !"".equals(obj[5]) ? Double.valueOf(obj[5].toString()) : 0);
				ps.setDouble(9, !"".equals(obj[7]) ? Double.valueOf(obj[7].toString()) : 0);
				ps.setDouble(10, !"".equals(obj[8]) ? Double.valueOf(obj[8].toString()) : 0);
				ps.setDouble(11, !"".equals(obj[9]) ? Double.valueOf(obj[9].toString()) : 0);
				ps.setDouble(12, !"".equals(obj[10]) ? Double.valueOf(obj[10].toString()) : 0);
				ps.setDouble(13, !"".equals(obj[11]) ? Double.valueOf(obj[11].toString()) : 0);
			}

			@Override
			public int getBatchSize() {
				return list.size();
			}
		});
	}
}
