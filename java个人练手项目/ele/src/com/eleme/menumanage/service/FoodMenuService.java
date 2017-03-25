package com.eleme.menumanage.service;

import java.util.List;

import com.eleme.menumanage.dao.EtypeDao;
import com.eleme.menumanage.dao.FoodMenuDao;
import com.eleme.menumanage.dao.StyleFoodDao;
import com.eleme.menumanage.pojo.Erestaurant;
import com.eleme.menumanage.pojo.Etype;
import com.eleme.menumanage.pojo.FoodMenu;
import com.eleme.menumanage.pojo.StyleFood;

public class FoodMenuService implements IFoodMenuService{
	private FoodMenuDao fDao;
	
	public List<FoodMenu> selectMenu(int i) {
		
		return fDao.selectMenu(i);
	}
	
	public void updateFood(FoodMenu food) {
		fDao.updateFood(food);
	}

	public void insertFood(FoodMenu food) {
		fDao.insertFood(food);
	}
	
	public void deleteFood(int fid){
		//System.out.println("lkdsklsdlk");
		fDao.deleteFood(fid);
	}
	
	public FoodMenuDao getfDao() {
		return fDao;
	}

	public void setfDao(FoodMenuDao fDao) {
		this.fDao = fDao;
	}
	
	
}
