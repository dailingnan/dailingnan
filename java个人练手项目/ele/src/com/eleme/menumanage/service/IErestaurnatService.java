package com.eleme.menumanage.service;

import java.util.List;

import com.eleme.menumanage.pojo.Erestaurant;

public interface IErestaurnatService {
	public List<Erestaurant> selectRest();
	public void updateRest(Erestaurant e);
}
