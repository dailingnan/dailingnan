package com.eleme.menumanage.service;

import com.eleme.menumanage.dao.FoodEvaluateDao;
import com.eleme.menumanage.pojo.FoodEvaluate;

public class FoodEvaluateService implements IFoodEvaluateService{
	private FoodEvaluateDao inDao;
	public void inserty(FoodEvaluate foodas){
		inDao.insertas(foodas);
	}
	public FoodEvaluateDao getInDao() {
		return inDao;
	}
	public void setInDao(FoodEvaluateDao inDao) {
		this.inDao = inDao;
	}
	
	
}
