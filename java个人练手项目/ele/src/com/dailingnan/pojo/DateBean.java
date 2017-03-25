package com.dailingnan.pojo;

public class DateBean {
	private String beginTime;
	private String endTime;
	
	public DateBean(String beginTime, String endTime) {
		super();
		this.beginTime = beginTime;
		this.endTime = endTime;
	}
	public String getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
}
