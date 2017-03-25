package com.dailingnan.service;

import java.util.List;

import com.dailingnan.pojo.OrderBean;

public interface IOrder_res_handleService {
	public List<OrderBean> find();
	public void update(String oid);
	public void update2(String payid);
}
