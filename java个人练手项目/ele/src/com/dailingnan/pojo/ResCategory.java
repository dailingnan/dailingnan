package com.dailingnan.pojo;

public class ResCategory {
	private String tid;
	private String tname;
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public ResCategory(String tid, String tname) {
		super();
		this.tid = tid;
		this.tname = tname;
	}
	public ResCategory() {
		super();
	}
}
