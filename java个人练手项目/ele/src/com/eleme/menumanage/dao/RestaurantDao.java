package com.eleme.menumanage.dao;

import java.util.List;

import com.eleme.menumanage.pojo.Erestaurant;

public interface RestaurantDao {
	public List<Erestaurant> selectRest(int i);
	public void updateRest(Erestaurant r);
	
}
