package com.eleme.menumanage.action;

import com.eleme.menumanage.pojo.FoodEvaluate;
import com.eleme.menumanage.service.IFoodEvaluateService;

public class FoodEvaluateAction {
	private IFoodEvaluateService asfood;
	private int yid;
	private int eidnums;
	private String texts;
	private FoodEvaluate foodas;
	public String insertu(){
		foodas=new FoodEvaluate(yid,texts);
		System.out.println(texts);
		asfood.inserty(foodas);
		return "insertu";
	}
	public IFoodEvaluateService getAsfood() {
		return asfood;
	}
	public void setAsfood(IFoodEvaluateService asfood) {
		this.asfood = asfood;
	}
	public int getYid() {
		return yid;
	}
	public void setYid(int yid) {
		this.yid = yid;
	}
	public String getTexts() {
		return texts;
	}
	public void setTexts(String texts) {
		this.texts = texts;
	}
	public int getEidnums() {
		return eidnums;
	}
	public void setEidnums(int eidnums) {
		this.eidnums = eidnums;
	}
	
	
}
