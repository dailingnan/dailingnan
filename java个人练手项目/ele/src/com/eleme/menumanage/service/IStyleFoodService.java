package com.eleme.menumanage.service;

import java.util.List;

import com.eleme.menumanage.pojo.StyleFood;

public interface IStyleFoodService {
	public List<StyleFood> selectFoods();
	public void updateFoods(StyleFood st);
}
