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
@Table(name="discuss")
public class Discuss {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer discussid;
	
	@ManyToOne
	@JoinColumn(name="uid")
	private User user;
	
	@ManyToOne
	@JoinColumn(name="moveid")
	private MoveBean move;
	
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

	public MoveBean getMove() {
		return move;
	}

	public void setMove(MoveBean move) {
		this.move = move;
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

	public Discuss(Integer discussid, User user, MoveBean move, String discuss, Date discussdate) {
		super();
		this.discussid = discussid;
		this.user = user;
		this.move = move;
		this.discuss = discuss;
		this.discussdate = discussdate;
	}
	public Discuss() {
		super();
		
	}
	
}
