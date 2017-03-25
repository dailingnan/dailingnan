package com.dailingnan.pojo;

public class AdminBean {
	private int aid;
	private String jibie;
	private String username;
	private String password;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getJibie() {
		return jibie;
	}
	public void setJibie(String jibie) {
		this.jibie = jibie;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public AdminBean(int aid, String jibie, String username, String password) {
		super();
		this.aid = aid;
		this.jibie = jibie;
		this.username = username;
		this.password = password;
	}
	public AdminBean() {
		super();
	}
}
