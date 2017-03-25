package com.eleme.menumanage.pojo;

public class RestaurantAssess {
	private String marked;
	private int eid;
	private int raid;
	public RestaurantAssess(){}
	public RestaurantAssess(int eid,String marked){
		this.eid=eid;
		this.marked=marked;
	}
	public String getMarked() {
		return marked;
	}
	public void setMarked(String marked) {
		this.marked = marked;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public int getRaid() {
		return raid;
	}
	public void setRaid(int raid) {
		this.raid = raid;
	}
	
	
	
}
