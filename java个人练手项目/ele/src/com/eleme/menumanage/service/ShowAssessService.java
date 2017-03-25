package com.eleme.menumanage.service;

import java.util.List;

import com.eleme.menumanage.dao.ShowAssessDao;
import com.eleme.menumanage.pojo.ShowAssess;


public class ShowAssessService implements IShowAssessService{
	private ShowAssessDao showDao;
	public List<ShowAssess> selectShow(int i){
		
		return showDao.selectShow(i);
	}
	public ShowAssessDao getShowDao() {
		return showDao;
	}
	public void setShowDao(ShowAssessDao showDao) {
		this.showDao = showDao;
	}
	
}
