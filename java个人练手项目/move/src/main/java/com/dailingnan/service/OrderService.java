package com.dailingnan.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;

import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.OrderBean;
import com.dailingnan.entity.OrderItemBean;
import com.dailingnan.entity.User;

public interface OrderService {
	public List<OrderBean> findOrderByCin(CinemaBean cinemaBean,int start,int count);
	public Long findMoveCount(CinemaBean cinemaBean);
	public Map<String ,Object> findOrderAndOrderItem(User user);
	public void exportExcel(List<OrderBean> orderList,String[] titles, ServletOutputStream outputStream);
}
