package com.eleme.menumanage.service;

import java.util.List;

import com.eleme.menumanage.dao.FoodMenuDao;
import com.eleme.menumanage.pojo.Etype;
import com.eleme.menumanage.pojo.FoodMenu;
import com.eleme.menumanage.pojo.StyleFood;

public interface IFoodMenuService {
	public List<FoodMenu> selectMenu(int i);
	public void updateFood(FoodMenu food);
	public void insertFood(FoodMenu food);
	public void deleteFood(int fid);
	
}
