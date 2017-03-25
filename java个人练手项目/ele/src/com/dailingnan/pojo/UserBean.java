package com.dailingnan.pojo;

public class UserBean {
	private String uid;
	private String username;
	private String password;
	private String name;
	public UserBean() {
		super();
		
	}
	public UserBean(String uid, String username, String password, String name,
			String userAddress) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.name = name;
		this.userAddress = userAddress;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	private String userAddress;
}
