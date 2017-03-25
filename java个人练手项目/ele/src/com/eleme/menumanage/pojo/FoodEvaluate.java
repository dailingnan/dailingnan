package com.eleme.menumanage.pojo;

public class FoodEvaluate {
	private int fid;
	private String marks;
	private int slaes;
	public FoodEvaluate(){}
	public FoodEvaluate(int fid,String marks){
		this.fid=fid;
		this.marks=marks;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getMarks() {
		return marks;
	}
	public void setMarks(String marks) {
		this.marks = marks;
	}
	public int getSlaes() {
		return slaes;
	}
	public void setSlaes(int slaes) {
		this.slaes = slaes;
	}
	
}
