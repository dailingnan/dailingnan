package com.eleme.menumanage.service;

import java.util.List;

import com.eleme.menumanage.pojo.RestaurantAssess;

public interface IRestaurantAccessService {
	public List<RestaurantAssess> selectAll();
	public void deleteItem(int i);
	public void insertItem(RestaurantAssess rs);
}
