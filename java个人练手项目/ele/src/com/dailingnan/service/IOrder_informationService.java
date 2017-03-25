package com.dailingnan.service;

import java.util.List;

import com.dailingnan.pojo.Order_informationBean;

public interface IOrder_informationService {
	List<Order_informationBean> find(String id);
}
