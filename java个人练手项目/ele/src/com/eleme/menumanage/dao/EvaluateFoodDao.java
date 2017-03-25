package com.eleme.menumanage.dao;

import java.util.List;

import com.eleme.menumanage.pojo.FoodEvaluate;

public interface EvaluateFoodDao {
	
	public List<FoodEvaluate> selectOne(int vid);
	public void insertEvalue(FoodEvaluate evalueate);
	public void updateEvalue(FoodEvaluate er);
}
