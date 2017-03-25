package com.dailingnan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="indextu")
public class IndexBean {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer indextuid;
	
	@Column(name="name")
	private String name;
	
	@Column(name="image")
	private String image;
	
	
	public IndexBean(Integer indextuid, String name, String image) {
		super();
		this.indextuid = indextuid;
		this.name = name;
		this.image = image;
	}
	public IndexBean() {
		super();
	}
	
	public Integer getIndextuid() {
		return indextuid;
	}
	public void setIndextuid(Integer indextuid) {
		this.indextuid = indextuid;
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
	
}
