package com.dailingnan.dao;

import java.util.List;

import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.CinemaDiscuss;
import com.dailingnan.entity.MoveArrangeBean;
import com.dailingnan.entity.MoveBean;
import com.dailingnan.entity.OrderBean;
import com.dailingnan.entity.OrderItemBean;

public interface CinemaDao {
	public List<CinemaBean> findCineams();
	public List<MoveArrangeBean> findMoveByCinema(int cinemaid,int moveid);
	public List<OrderItemBean> findSeat(int marrangeid);
	public OrderBean insertOrder(OrderBean orderBean);
	public int insertOrderItem(OrderItemBean orderItemBean);
	public MoveArrangeBean findMoveById(int moveArrangeId);
	public List<OrderItemBean> findOrderItemByUid(OrderBean order,int marrangeid);
	public void insertOrderByTr(OrderBean orderBean,OrderItemBean orderItemBean);
	public List<OrderItemBean> findOrderItemByOid(OrderBean orderBean);
	public void updateOrderStateByOid(OrderBean orderBean);
	public OrderBean findOrderByoid(int oid);
	public List<OrderBean> findOrderByState(int marrangeid);
	public void updateStateAuto(OrderBean orderBean);
	public CinemaBean findCinemaById(int cinemaId);
	public List<MoveBean> findMoveByCin(CinemaBean cinema);
	public List<CinemaDiscuss> findCinemaDiscussByCid(int cinemaid);
	public void insertCinemaDiscuss(CinemaDiscuss cinemaDiscuss);
}
