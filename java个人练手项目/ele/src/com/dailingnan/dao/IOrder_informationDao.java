package com.dailingnan.dao;

import java.util.List;

import com.dailingnan.pojo.Order_informationBean;

public interface IOrder_informationDao {
      List<Order_informationBean> find(String id);
}
