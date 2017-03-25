package com.dailingnan.dao;

import java.util.List;

import com.dailingnan.pojo.OrderBean;

public interface IOrderDao {
      List<OrderBean> findOrder();
}
