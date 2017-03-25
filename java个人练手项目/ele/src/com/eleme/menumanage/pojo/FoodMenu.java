package com.eleme.menumanage.pojo;

public class FoodMenu {
	private int fid;
	private String fname;
	private int sid;
	private String introduce;
	private float price;
	private String img;
	private int eid;
	public FoodMenu(){}
	public FoodMenu(String fname, int sid, String introduce, float price, String img, int eid) {
		super();
		this.fname = fname;
		this.sid = sid;
		this.introduce = introduce;
		this.price = price;
		this.img = img;
		this.eid = eid;
	}
	public FoodMenu(int eid,int sid){
		this.eid=eid;
		this.sid=sid;
	}
	public FoodMenu(String fname,String introduce, float price, String img,int fid) {
		super();
		this.fname = fname;
		this.introduce = introduce;
		this.price = price;
		this.img = img;
		this.fid=fid;
	}
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
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
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	
	
}
