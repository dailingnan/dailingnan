package com.dailingnan.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dailingnan.bean.OrderBean;
import com.dailingnan.bean.UserBean;

@Repository
public interface IOrderDao {
	public List<OrderBean> findOrder();
	
	public List<OrderBean> findOrders();
	
	public String findUid();
}
