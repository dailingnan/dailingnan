package com.dailingnan.service;

import java.util.List;

import com.dailingnan.dao.IOrder_res_handleDao;
import com.dailingnan.pojo.OrderBean;

public class Order_res_handleService implements IOrder_res_handleService {
    
	private IOrder_res_handleDao dao;
	
	
	public IOrder_res_handleDao getDao() {
		return dao;
	}


	public void setDao(IOrder_res_handleDao dao) {
		this.dao = dao;
	}


	@Override
	public List<OrderBean> find() {
		return dao.find();
	}


	@Override
	public void update(String oid) {
		dao.update(oid);
	}
	
	public void update2(String payid){
		dao.update2(payid);
	}

}
