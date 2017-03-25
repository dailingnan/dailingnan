package com.dailingnan.pojo;

public class FoodCategoryBean {
	private String sid;
	private String sname;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public FoodCategoryBean(String sid, String sname) {
		super();
		this.sid = sid;
		this.sname = sname;
	}
	public FoodCategoryBean() {
		super();
	}
}
