package com.dailingnan.dao;

import java.util.Date;
import java.util.List;

import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.OrderBean;
import com.dailingnan.entity.OrderItemBean;
import com.dailingnan.entity.User;

public interface OrderDao {
	public List<OrderBean> findOrderByCin(CinemaBean cinemaBean,int start,int count);
	public Long findMoveCount(CinemaBean cinemaBean);
	public List<OrderBean> findOrders(int uid);
	public List<OrderItemBean> findOrderItems(int oid);
}
