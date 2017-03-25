package com.eleme.menumanage.service;

import java.util.List;

import com.eleme.menumanage.pojo.FoodEvaluateView;
import com.eleme.menumanage.pojo.FoodMenu;
import com.eleme.menumanage.pojo.StyleFood;

public interface IFoodEvaluateViewService {
	public List<FoodEvaluateView> selectView(int i);
	public List<FoodEvaluateView> selectViewss(FoodEvaluateView view);
	public List<StyleFood> selectyo();
	public List<FoodEvaluateView> selectViewsd(FoodEvaluateView view);
}
