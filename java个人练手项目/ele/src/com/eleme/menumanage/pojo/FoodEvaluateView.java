package com.eleme.menumanage.pojo;

public class FoodEvaluateView {
	private int sid;
	private int eid;
	private int fid;
	private String fname;
	private String marks;
	private int counts;
	private String img;
	private String introduce;
	private float price;
	public FoodEvaluateView(){}
	public FoodEvaluateView(int eid,int fid,int sid){
		this.eid=eid;
		this.fid=fid;
		this.sid=sid;
	}
	public FoodEvaluateView(int eid,int sid){
		this.eid=eid;
		this.sid=sid;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMarks() {
		return marks;
	}
	public void setMarks(String marks) {
		this.marks = marks;
	}
	public int getCounts() {
		return counts;
	}
	public void setCounts(int counts) {
		this.counts = counts;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	
	
}
