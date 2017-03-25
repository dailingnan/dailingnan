package com.dailingnan.pojo;

public class Restaurant {
	private String eid;
	private ResCategory rc;
	private String ename;
	private String eaddress;
	private String img;
	private String tid;
	
	public Restaurant(String eid, ResCategory rc, String ename, String eaddress) {
		super();
		this.eid = eid;
		this.rc = rc;
		this.ename = ename;
		this.eaddress = eaddress;
	}
	public Restaurant() {
		super();
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public ResCategory getRc() {
		return rc;
	}
	public void setRc(ResCategory rc) {
		this.rc = rc;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEaddress() {
		return eaddress;
	}
	public void setEaddress(String eaddress) {
		this.eaddress = eaddress;
	}
	
}
