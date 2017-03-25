package com.dailingnan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dailingnan.bean.OrderBean;
import com.dailingnan.dao.IOrderDao;
import com.dailingnan.service.IOrderService;

@Service
public class OrderService implements IOrderService{
	
	@Resource
	private IOrderDao orderDao;
	public List<OrderBean> findOrder() {
		// TODO Auto-generated method stub
		return orderDao.findOrder();
	}
	public List<OrderBean> findOrders() {
		// TODO Auto-generated method stub
		return orderDao.findOrders();
	}

}
