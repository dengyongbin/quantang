package com.quantang.dao;

import java.util.List;

public interface FirmAccountDao {
	String SaveProtocol(String[] param);

	String getMaxAccounts();

	String saveAccountInfo(List list);

	String getMaxProtocolId();

	int updateProtocol(String protocolId, String accountsId);
}
