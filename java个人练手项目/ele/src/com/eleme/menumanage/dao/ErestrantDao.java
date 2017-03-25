package com.eleme.menumanage.dao;

import java.util.List;

import com.eleme.menumanage.pojo.RestaurantAssess;

public interface ErestrantDao {
	public void deleteRe(int i);
	public void addRe(RestaurantAssess Ra);
	public List<RestaurantAssess> selectAcc(int j);
}
