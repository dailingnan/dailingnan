package com.dailingnan.pojo;

public class FoodBean {
	private String fid;
	private String fname;
	private String sid;
	private String introduce;
	private float price;
	private String img;
	private String eid;
	
	public FoodBean(String fid, String fname, String sid, String introduce,
			float price, String img, String eid, Restaurant res) {
		super();
		this.fid = fid;
		this.fname = fname;
		this.sid = sid;
		this.introduce = introduce;
		this.price = price;
		this.img = img;
		this.eid = eid;
		this.res = res;
	}

	public FoodBean() {
		super();
	}
	
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Restaurant getRes() {
		return res;
	}
	public void setRes(Restaurant res) {
		this.res = res;
	}
	private Restaurant res;
}
