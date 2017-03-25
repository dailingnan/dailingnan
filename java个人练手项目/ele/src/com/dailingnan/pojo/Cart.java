package com.dailingnan.pojo;

public class Cart {
	private String gcid;
	private String fid;
	private int num;
	private float total;
	private String uid;
	private FoodBean fd;
	
	public FoodBean getFd() {
		return fd;
	}
	public void setFd(FoodBean fd) {
		this.fd = fd;
	}
	public Cart(String gcid, String fid, int num, float total, String uid) {
		super();
		this.gcid = gcid;
		this.fid = fid;
		this.num = num;
		this.total = total;
		this.uid = uid;
	}
	public Cart() {
		super();
		
	}
	public String getGcid() {
		return gcid;
	}
	public void setGcid(String gcid) {
		this.gcid = gcid;
	}
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	
	
	
}
