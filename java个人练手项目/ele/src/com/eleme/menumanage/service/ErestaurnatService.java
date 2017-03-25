package com.eleme.menumanage.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dailingnan.pojo.AdminBean;
import com.eleme.menumanage.dao.RestaurantDao;
import com.eleme.menumanage.pojo.Erestaurant;

public class ErestaurnatService implements IErestaurnatService{
	private RestaurantDao rDao;
	public List<Erestaurant> selectRest(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		AdminBean ad=(AdminBean) session.getAttribute("admin");
		return rDao.selectRest(ad.getEid());//整合时要修改
	}
	public void updateRest(Erestaurant r){
		rDao.updateRest(r);
	}
	public RestaurantDao getrDao() {
		return rDao;
	}
	public void setrDao(RestaurantDao rDao) {
		this.rDao = rDao;
	}
	
}
