package com.eleme.menumanage.dao;

import java.util.List;

import com.eleme.menumanage.pojo.StyleFood;

public interface StyleFoodDao {
	public List<StyleFood> selectStyle();
	public void updateStyle(StyleFood food);
}
