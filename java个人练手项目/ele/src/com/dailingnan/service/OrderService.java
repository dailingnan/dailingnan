package com.dailingnan.service;

import java.util.List;

import com.dailingnan.dao.IOrderDao;
import com.dailingnan.pojo.OrderBean;

public class OrderService implements IOrderService {
    private IOrderDao  dao;
    
	public IOrderDao getDao() {
		return dao;
	}

	public void setDao(IOrderDao dao) {
		this.dao = dao;
	}

	@Override
	public List<OrderBean> findOrder() {
		// TODO Auto-generated method stub
		return dao.findOrder();
	}

	

}
