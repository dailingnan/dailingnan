package com.eleme.menumanage.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dailingnan.pojo.AdminBean;
import com.eleme.menumanage.dao.ErestrantDao;
import com.eleme.menumanage.pojo.RestaurantAssess;

public class RestaurantAccessService implements IRestaurantAccessService{
	private ErestrantDao etDao;
	
	public List<RestaurantAssess> selectAll(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		AdminBean ad=(AdminBean) session.getAttribute("admin");
		return etDao.selectAcc(ad.getEid());
	}
	public void deleteItem(int i){
		etDao.deleteRe(i);
	}
	
	public void insertItem(RestaurantAssess rs){
		etDao.addRe(rs);
	}
	public ErestrantDao getEtDao() {
		return etDao;
	}
	public void setEtDao(ErestrantDao etDao) {
		this.etDao = etDao;
	}
	
}
