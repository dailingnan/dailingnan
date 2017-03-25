package com.eleme.menumanage.dao;

import java.util.List;

import com.eleme.menumanage.pojo.FoodMenu;

public interface FoodMenuDao {
	public List<FoodMenu> selectMenu(int eid);
	public void updateFood(FoodMenu food);
	public void insertFood(FoodMenu food);
	public void deleteFood(int eid);

}
