package com.dailingnan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer uid;
	@Column(name="username")
	private String username;
	@Column(name="pwd")
	private String pwd;
	@Column(name="mobile_number")
	private String mobile_number;
	@Column(name="name")
	private String name;
	@Column(name="address")
	private String address;
	
	public User(Integer uid, String username, String pwd, String mobile_number,
			String name, String address) {
		super();
		this.uid = uid;
		this.username = username;
		this.pwd = pwd;
		this.mobile_number = mobile_number;
		this.name = name;
		this.address = address;
	}
	public User() {
		super();
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
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
}
