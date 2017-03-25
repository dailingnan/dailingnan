package com.dailingnan.dao;

import java.util.List;

import com.dailingnan.pojo.OrderBean;

public interface IOrder_res_handleDao {
      public List<OrderBean> find();
      public void update(String oid);
      public void update2(String payid);
}
