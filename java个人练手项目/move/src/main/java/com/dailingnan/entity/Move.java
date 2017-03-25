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
@Table(name="move")
public class Move {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer moveid;
	
	@Column(name="name")
	private String name;
	
	@Column(name="classes")
	private String classes;
	
	@Column(name="director")
	private String director;
	
	@Column(name="actor")
	private String actor;
	
	@Column(name="time")
	private int time;
	
	@Column(name="language")
	private String language;
	
	@Column(name="price")
	private float price;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="screentime")
	private Date screentime;
	
	@Column(name="introduce")
	private String introduce;
	
	@Column(name="image")
	private String image;
	
	@Column(name="title")
	private String title;
	
	@ManyToOne
	@JoinColumn(name="cinemaid")
	private CinemaBean cinema;
	public Move() {
		super();
	}
	public Move(Integer moveid, String name, String classes, String director, String actor, int time,
			String language, float price, Date screentime, String introduce, String image, String title,CinemaBean cinema) {
		super();
		this.moveid = moveid;
		this.name = name;
		this.classes = classes;
		this.director = director;
		this.actor = actor;
		this.time = time;
		this.language = language;
		this.price = price;
		this.screentime = screentime;
		this.introduce = introduce;
		this.image = image;
		this.title = title;
		this.cinema = cinema;
	}
	public CinemaBean getCinema() {
		return cinema;
	}
	public void setCinema(CinemaBean cinema) {
		this.cinema = cinema;
	}
	public Integer getMoveid() {
		return moveid;
	}
	public void setMoveid(Integer moveid) {
		this.moveid = moveid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public Date getScreentime() {
		return screentime;
	}
	public void setScreentime(Date screentime) {
		this.screentime = screentime;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
