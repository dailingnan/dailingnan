package com.eleme.menumanage.dao;

import java.util.List;

import com.eleme.menumanage.pojo.ShowAssess;

public interface ShowAssessDao {
	public List<ShowAssess> selectShow(int eid);
}
