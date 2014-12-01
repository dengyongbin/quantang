package com.quantang.domain;

/**
 * 分析师实�?
 * 
 * @author dengyb
 * 
 */
public class Analyse {
	// id
	private String analyse_id;
	// 姓名
	private String name;
	// 从业年限
	private String year;
	// 业务特长
	private String business;
	// �?��
	private String profile;
	// 业绩
	private String performance;
	// 照片
	private String photo;
	// qq
	private String qq;
	// 电话
	private String phone;
	// 首页推荐
	private Integer homeTop;
	// 职位
	private String position;
	// 客服类型
	private String type;

	public Integer getHomeTop() {
		return homeTop;
	}

	public void setHomeTop(Integer homeTop) {
		this.homeTop = homeTop;
	}

	public String getAnalyse_id() {
		return analyse_id;
	}

	public void setAnalyse_id(String analyse_id) {
		this.analyse_id = analyse_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getBusiness() {
		return business;
	}

	public void setBusiness(String business) {
		this.business = business;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getPerformance() {
		return performance;
	}

	public void setPerformance(String performance) {
		this.performance = performance;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
