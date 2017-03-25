package com.dailingnan.pojo;

import java.util.Date;

public class OrderBean {
	private String oid;
	private String ordertime; 
	private float ordertotal;
	private String state;
	private String uid;
	private String arderadd;
	private int eid;
	private FoodBean foodbean;
	
	
	public FoodBean getFoodbean() {
		return foodbean;
	}
	public void setFoodbean(FoodBean foodbean) {
		this.foodbean = foodbean;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public OrderBean(  String oid,
			String state, String uid, String arderadd) {
		super();
		this.oid = oid;
		this.state = state;
		this.uid = uid;
		this.arderadd = arderadd;
	}
	public OrderBean() {
		super();
		
	}
	
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}
	public float getOrdertotal() {
		return ordertotal;
	}
	public void setOrdertotal(float ordertotal) {
		this.ordertotal = ordertotal;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getArderadd() {
		return arderadd;
	}
	public void setArderadd(String arderadd) {
		this.arderadd = arderadd;
	}
	
}
