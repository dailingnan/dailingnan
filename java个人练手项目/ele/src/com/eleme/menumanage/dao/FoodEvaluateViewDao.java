package com.eleme.menumanage.dao;

import java.util.List;

import com.eleme.menumanage.pojo.FoodEvaluateView;
import com.eleme.menumanage.pojo.FoodMenu;
import com.eleme.menumanage.pojo.StyleFood;

public interface FoodEvaluateViewDao {
	public List<FoodEvaluateView> selectViews(int eid);
	public List<FoodEvaluateView> selectViewes(FoodEvaluateView view);
	public List<StyleFood> selectStyle();
	public List<FoodEvaluateView> selectViewep(FoodEvaluateView view);
}
