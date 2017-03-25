package com.dailingnan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="adminuser")
public class AdminBean {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer adminid;
	
	@OneToOne
	@JoinColumn(name="cinemaid")
	private CinemaBean cinemaBean;
	
	@Column(name="username")
	private String username;
	
	@Column(name="password")
	private String password;

	public Integer getAdminid() {
		return adminid;
	}

	public void setAdminid(Integer adminid) {
		this.adminid = adminid;
	}

	public CinemaBean getCinemaBean() {
		return cinemaBean;
	}

	public void setCinemaBean(CinemaBean cinemaBean) {
		this.cinemaBean = cinemaBean;
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

	public AdminBean(Integer adminid, CinemaBean cinemaBean, String username, String password) {
		super();
		this.adminid = adminid;
		this.cinemaBean = cinemaBean;
		this.username = username;
		this.password = password;
	}
	public AdminBean() {
		super();
		
	}
}
