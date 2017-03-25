package com.eleme.menumanage.pojo;

public class Etype {
	private	String tname;
	private int tid;
	public Etype(){}
	public Etype(int tid,String tname){
		this.tname=tname;
		this.tid=tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	
}
