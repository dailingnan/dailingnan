package com.dailingnan.dao.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.dailingnan.dao.OrderDao;
import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.OrderBean;
import com.dailingnan.entity.OrderItemBean;

@Repository
public class OrderDaoImpl implements OrderDao {
	@Resource
	private SessionFactory sessionFactory;

	public List<OrderBean> findOrderByCin(CinemaBean cinemaBean,int start,int count) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql ="from OrderBean ord where ord.moveArrang.cinema.cinemaid=:cinemaid order by ord.date desc";
		 Query query = session.createQuery(hql).setFirstResult(start).setMaxResults(count);
		 query.setParameter("cinemaid",cinemaBean.getCinemaid());
		List<OrderBean> orderBeans = query.list();
		session.close();
		return orderBeans;
	}

	public Long findMoveCount(CinemaBean cinemaBean) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "select count(ord) from OrderBean ord where ord.moveArrang.cinema.cinemaid=:cinemaid";
		Query query = session.createQuery(hql);
		query.setParameter("cinemaid", cinemaBean.getCinemaid());
		Long count = (Long) query.uniqueResult();
		session.close();
		return count;
	}
	
	//按时间和用户查找订单
	public List<OrderBean> findOrders(int uid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "FROM OrderBean ord WHERE (UNIX_TIMESTAMP(NOW())-UNIX_TIMESTAMP(ord.date))/(60*60)<30 AND ord.user.uid=:uid";
		Query query = session.createQuery(hql);
		query.setParameter("uid", uid);
		List<OrderBean> list = query.list();
		session.close();
		return list;
	}

	public List<OrderItemBean> findOrderItems(int oid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from OrderItemBean oit where oit.order.orderid=:orderid";
		Query query = session.createQuery(hql);
		query.setParameter("orderid", oid);
		List<OrderItemBean> list = query.list();
		session.close();
		return list;
	}
}
