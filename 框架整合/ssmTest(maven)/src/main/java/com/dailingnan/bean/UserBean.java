package com.dailingnan.bean;

public class UserBean {
	private int uid;
	private String username;
	private String pwd;
	private String mobile_number;
	private String name;
	private String address;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public UserBean(int uid, String username, String pwd, String mobile_number, String name, String address) {
		super();
		this.uid = uid;
		this.username = username;
		this.pwd = pwd;
		this.mobile_number = mobile_number;
		this.name = name;
		this.address = address;
	}
	public UserBean() {
		super();
	
	}
	
	
}
