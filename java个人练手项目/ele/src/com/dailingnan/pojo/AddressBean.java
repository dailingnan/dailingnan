package com.dailingnan.pojo;

public class AddressBean {
	private String aid;
	private String uid;
	private String addressadd;
	public AddressBean() {
		super();
		
	}
	public AddressBean(String aid, String uid, String addressadd) {
		super();
		this.aid = aid;
		this.uid = uid;
		this.addressadd = addressadd;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getAddressadd() {
		return addressadd;
	}
	public void setAddressadd(String addressadd) {
		this.addressadd = addressadd;
	}
}
