package com.dailingnan.service;

import java.util.List;

import com.dailingnan.bean.OrderBean;

public interface IOrderService {
	public List<OrderBean> findOrder();
	public List<OrderBean> findOrders();
}
