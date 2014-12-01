package com.quantang.domain;

import java.util.Date;

/**
 * 用户实体�?
 * @author dengyb
 *
 */
public class User {
	// id
	private int userId;
	// 用户名称
	private String userName;
	// 密码
	private String password;
	// 登陆ip
	private String lastIp;
	// 登陆时间
	private Date lastVisit;
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLastIp() {
		return lastIp;
	}

	public void setLastIp(String lastIp) {
		this.lastIp = lastIp;
	}

	public Date getLastVisit() {
		return lastVisit;
	}

	public void setLastVisit(Date lastVisit) {
		this.lastVisit = lastVisit;
	}
	
	
}
