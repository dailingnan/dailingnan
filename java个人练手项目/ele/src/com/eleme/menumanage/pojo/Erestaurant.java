package com.eleme.menumanage.pojo;

public class Erestaurant {
	private int tid;
	private int eid;
	private String ename;
	private String eaddress;
	private String img;
	public Erestaurant(String eaddress, String img,int eid) {
		this.eaddress = eaddress;
		this.img = img;
		this.eid=eid;
	}
	public Erestaurant(){}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEaddress() {
		return eaddress;
	}
	public void setEaddress(String eaddress) {
		this.eaddress = eaddress;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
