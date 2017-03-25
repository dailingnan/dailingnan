package com.eleme.menumanage.service;

import java.util.List;

import com.eleme.menumanage.dao.FoodEvaluateViewDao;
import com.eleme.menumanage.pojo.FoodEvaluateView;
import com.eleme.menumanage.pojo.FoodMenu;
import com.eleme.menumanage.pojo.StyleFood;

public class FoodEvaluateViewService implements IFoodEvaluateViewService{
	private FoodEvaluateViewDao foodsDaos;
	
	public List<FoodEvaluateView> selectView(int i){
		
		return foodsDaos.selectViews(i);
	}
	public List<StyleFood> selectyo(){
		return foodsDaos.selectStyle();
	}
	public List<FoodEvaluateView> selectViewss(FoodEvaluateView view){
		return foodsDaos.selectViewes(view);
	}
	public List<FoodEvaluateView> selectViewsd(FoodEvaluateView view){
		return foodsDaos.selectViewep(view);
	}
	public FoodEvaluateViewDao getFoodsDaos() {
		return foodsDaos;
	}
	public void setFoodsDaos(FoodEvaluateViewDao foodsDaos) {
		this.foodsDaos = foodsDaos;
	}
	
	
}
