package com.dailingnan.pojo;

public class OrderItemBean {
	private int lid;
	private int counts;
	private float subtotal;
	private String oid;
	private String fid;
	private FoodBean fd;
	
	public FoodBean getFd() {
		return fd;
	}
	public void setFd(FoodBean fd) {
		this.fd = fd;
	}
	public OrderItemBean( int counts, float subtotal, String oid, String fid) {
		super();
		
		this.counts = counts;
		this.subtotal = subtotal;
		this.oid = oid;
		this.fid = fid;
	}
	public OrderItemBean() {
		super();
	}
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public int getCounts() {
		return counts;
	}
	public void setCounts(int counts) {
		this.counts = counts;
	}
	public float getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(float subtotal) {
		this.subtotal = subtotal;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
}
