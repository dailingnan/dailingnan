package com.dailingnan.service;

import java.util.List;

import com.dailingnan.dao.IOrder_informationDao;
import com.dailingnan.pojo.Order_informationBean;

public class Order_informationService implements IOrder_informationService {
    private IOrder_informationDao dao;
    
	public IOrder_informationDao getDao() {
		return dao;
	}

	public void setDao(IOrder_informationDao dao) {
		this.dao = dao;
	}

	@Override
	public List<Order_informationBean> find(String id) {
		
		return dao.find(id);
	}

}
