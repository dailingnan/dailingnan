package com.dailingnan.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="cinemadiscuss")
public class CinemaDiscuss {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer discussid;
	
	@ManyToOne
	@JoinColumn(name="uid")
	private User user;
	
	@ManyToOne
	@JoinColumn(name="cinemaid")
	private CinemaBean cinemaBean;
	
	@Column(name="discuss")
	private String discuss;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="discussdate")
	private Date discussdate;
	public Integer getDiscussid() {
		return discussid;
	}
	public void setDiscussid(Integer discussid) {
		this.discussid = discussid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public CinemaBean getCinemaBean() {
		return cinemaBean;
	}
	public void setCinemaBean(CinemaBean cinemaBean) {
		this.cinemaBean = cinemaBean;
	}
	public String getDiscuss() {
		return discuss;
	}
	public void setDiscuss(String discuss) {
		this.discuss = discuss;
	}
	public Date getDiscussdate() {
		return discussdate;
	}
	public void setDiscussdate(Date discussdate) {
		this.discussdate = discussdate;
	}
	public CinemaDiscuss(Integer discussid, User user, CinemaBean cinemaBean, String discuss, Date discussdate) {
		super();
		this.discussid = discussid;
		this.user = user;
		this.cinemaBean = cinemaBean;
		this.discuss = discuss;
		this.discussdate = discussdate;
	}
	
	public CinemaDiscuss() {
		super();
		
	}
}
