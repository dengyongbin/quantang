package com.quantang.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.quantang.dao.FirmAccountDao;

@Repository
public class FirmAccountDaoImpl implements FirmAccountDao {

	@Autowired
	private JdbcTemplate jdbc;

	@Override
	public String SaveProtocol(String[] param) {
		StringBuffer maxSQL = new StringBuffer("");
		StringBuffer insertSQL = new StringBuffer("");
		maxSQL.append("select ifnull(max(protocolId),0)+1 from protocol;");
		insertSQL
				.append("insert into protocol(protocolId,name,address,phone,fax,protocolTime) values(?,?,?,?,?,now())");
		int protocolId = jdbc.queryForInt(maxSQL.toString());
		jdbc.update(insertSQL.toString(), new Object[] { protocolId, param[0], param[1], param[2], param[3] });
		return String.valueOf(protocolId);
	}

	@Override
	public String getMaxAccounts() {
		StringBuffer querySQL = new StringBuffer("");
		querySQL.append("select ifnull(max(firmAccounts),'203888888000000')+1 from protocol");
		String firmAccounts = jdbc.queryForObject(querySQL.toString(), String.class);
		return firmAccounts;
	}

	@Override
	public String saveAccountInfo(@SuppressWarnings("rawtypes") List list) {
		StringBuffer insertSQL = new StringBuffer("");
		insertSQL
				.append("insert into accountinfo(accountId,protocolId,name,idType,id,gender,province,city,area,phone,tradePwd,phonePwd,bank,bankno,fixedLine,fax,mail,address,accountTime) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,now())");
		jdbc.update(
				insertSQL.toString(),
				new Object[] { list.get(0), list.get(1), list.get(2), list.get(3), list.get(4), list.get(5),
						list.get(6), list.get(7), list.get(8), list.get(9), list.get(10), list.get(11), list.get(12),
						list.get(13), list.get(14), list.get(15), list.get(16), list.get(17) });
		return null;
	}

	@Override
	public String getMaxProtocolId() {
		StringBuffer maxSQL = new StringBuffer("");
		maxSQL.append("select ifnull(max(protocolId),'0')+1 from protocol;");
		String protocolId = jdbc.queryForObject(maxSQL.toString(), String.class);
		return protocolId;
	}

	@Override
	public int updateProtocol(String protocolId, String accountsId) {
		StringBuffer updateSQL = new StringBuffer("");
		updateSQL.append("update protocol set firmAccounts =? where protocolId=?");
		return jdbc.update(updateSQL.toString(), new Object[] { accountsId, protocolId });
	}
}
