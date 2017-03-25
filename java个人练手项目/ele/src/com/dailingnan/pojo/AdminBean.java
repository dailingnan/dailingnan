package com.dailingnan.pojo;

public class AdminBean {
	private String adid;
	private String adminname;
	private String adminpwd;
	private int eid;
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public AdminBean() {
		super();
	}
	public AdminBean(String adid, String adadmin, String adminpwd) {
		super();
		this.adid = adid;
		this.adminname = adadmin;
		this.adminpwd = adminpwd;
	}
	public String getAdid() {
		return adid;
	}
	public void setAdid(String adid) {
		this.adid = adid;
	}
	
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminpwd() {
		return adminpwd;
	}
	public void setAdminpwd(String adminpwd) {
		this.adminpwd = adminpwd;
	}
}
