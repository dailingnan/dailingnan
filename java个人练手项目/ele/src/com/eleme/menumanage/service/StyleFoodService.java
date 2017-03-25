package com.eleme.menumanage.service;

import java.util.List;

import com.eleme.menumanage.dao.StyleFoodDao;
import com.eleme.menumanage.pojo.StyleFood;

public class StyleFoodService implements IStyleFoodService{
	private StyleFoodDao stDao;
	public List<StyleFood> selectFoods(){
		//System.out.print("123");
		return stDao.selectStyle();
	}
	
	public void updateFoods(StyleFood st){
		stDao.updateStyle(st);
	}

	public StyleFoodDao getStDao() {
		return stDao;
	}

	public void setStDao(StyleFoodDao stDao) {
		this.stDao = stDao;
	}
	
}
