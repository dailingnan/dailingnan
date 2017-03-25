package com.dailingnan.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name="movearrange")
public class MoveArrangeBean {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer marrangeid;
	
	@ManyToOne
	@JoinColumn(name="moveid")
	private MoveBean move;
	
	@OneToOne
	@JoinColumn(name="cinemaid")
	private CinemaBean cinema;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="onscreendate")
	private Date onscreendate;
	
	@Column(name="screenhall")
	private int screenhall;
	
	@Column(name="edition")
	private String edition;
	
	public MoveArrangeBean(Integer marrangeid, MoveBean move, CinemaBean cinema, Date onscreendate, int screenhall,
			String edition) {
		super();
		this.marrangeid = marrangeid;
		this.move = move;
		this.cinema = cinema;
		this.onscreendate = onscreendate;
		this.screenhall = screenhall;
		this.edition = edition;
	}
	public MoveArrangeBean() {
		super();
	}
	public Integer getMarrangeid() {
		return marrangeid;
	}
	public void setMarrangeid(Integer marrangeid) {
		this.marrangeid = marrangeid;
	}
	public MoveBean getMove() {
		return move;
	}
	public void setMove(MoveBean move) {
		this.move = move;
	}
	public CinemaBean getCinema() {
		return cinema;
	}
	public void setCinema(CinemaBean cinema) {
		this.cinema = cinema;
	}
	public Date getOnscreendate() {
		return onscreendate;
	}
	public void setOnscreendate(Date onscreendate) {
		this.onscreendate = onscreendate;
	}
	public int getScreenhall() {
		return screenhall;
	}
	public void setScreenhall(int screenhall) {
		this.screenhall = screenhall;
	}
	public String getEdition() {
		return edition;
	}
	public void setEdition(String edition) {
		this.edition = edition;
	}
	
}
