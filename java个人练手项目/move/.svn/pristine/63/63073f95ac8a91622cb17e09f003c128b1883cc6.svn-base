package com.dailingnan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="cinema")
public class CinemaBean {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer cinemaid;
	
	@Column(name="name")
	private String name;
	
	@Column(name="image")
	private String image;
	
	@Column(name="address")
	private String address;
	
	@Column(name="telephoto")
	private String telephoto;
	
	@Column(name="introduction")
	private String introduction;
	
	public CinemaBean() {
		super();
	}
	public CinemaBean(Integer cinemaid, String name, String image, String address, String telephoto,
			String introduction) {
		super();
		this.cinemaid = cinemaid;
		this.name = name;
		this.image = image;
		this.address = address;
		this.telephoto = telephoto;
		this.introduction = introduction;
	}
	public Integer getCinemaid() {
		return cinemaid;
	}
	public void setCinemaid(Integer cinemaid) {
		this.cinemaid = cinemaid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTelephoto() {
		return telephoto;
	}
	public void setTelephoto(String telephoto) {
		this.telephoto = telephoto;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
}
