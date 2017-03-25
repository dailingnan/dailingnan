package com.dailingnan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.dailingnan.dao.CinemaDao;
import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.CinemaDiscuss;
import com.dailingnan.entity.MoveArrangeBean;
import com.dailingnan.entity.MoveBean;
import com.dailingnan.entity.OrderBean;
import com.dailingnan.entity.OrderItemBean;
@Repository
public class CinemaDaoImpl implements CinemaDao{
	@Resource
	private SessionFactory sessionFactory;
	public List<CinemaBean> findCineams() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		List<CinemaBean> list = session.createQuery("from CinemaBean").list();
		session.close();
		return list;
	}
	//隐藏3表连接查询
	public List<MoveArrangeBean> findMoveByCinema(int cinemaid,int moveid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from MoveArrangeBean m where m.move.moveid=:moveid and m.cinema.cinemaid=:cinemaid";
		Query query =  session.createQuery(hql);
		//预查询
		query.setInteger("moveid", moveid);
		query.setInteger("cinemaid", cinemaid);
		List<MoveArrangeBean> MoveBeanlist  =query.list();
		return MoveBeanlist;
	}
	
	//根据电影安排ID查询剩余的座位(订单子项)
	public List<OrderItemBean> findSeat(int marrangeid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from OrderItemBean oit where oit.order.moveArrang.marrangeid=:marrangeid and oit.order.state !=2";
		Query query = session.createQuery(hql);
		query.setInteger("marrangeid", marrangeid);
		List<OrderItemBean> orderItemBeans = query.list();
		return orderItemBeans;
	}
	public OrderBean insertOrder(OrderBean orderBean) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		//插入订单
		//INSERT INTO orders(orderid,uid,marrangeid,total,state,orderdate)VALUES(2,1,4,54.00,3,NOW())
		//SQLQuery query=session.createSQLQuery("INSERT INTO orders(orderid,uid,marrangeid,total,state,orderdate)VALUES(?,?,?,?,0,NOW())");
		
		session.saveOrUpdate(orderBean);
		OrderBean orderBean1 = (OrderBean) session.get(OrderBean.class, orderBean.getOrderid());
		System.out.println(orderBean1.getOrderid()+"戴岭南");
		transaction.commit();
		session.close();
		return orderBean1;
	}
	public MoveArrangeBean findMoveById(int moveArrangeId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		MoveArrangeBean moveArrangeBean = (MoveArrangeBean) session.get(MoveArrangeBean.class, moveArrangeId);
		session.close();
		return moveArrangeBean;
	}
	public int insertOrderItem(OrderItemBean orderItemBean) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		int count =0;
		List<OrderItemBean> list =findSeat(orderItemBean.getOrder().getMoveArrang().getMarrangeid());
		for (OrderItemBean orderItem : list) {
			if(orderItemBean.getSeat()==orderItem.getSeat()){
				count++;
			}
		}
		if(count==0){
			session.save(orderItemBean);
		}
		
		session.close();
		return count;
	}
	public List<OrderItemBean> findOrderItemByUid(OrderBean order,int marrangeid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from OrderItemBean oit where oit.order.orderid=:orderid and oit.order.moveArrang.marrangeid=:marrangeid";
		Query query = session.createQuery(hql);
		query.setParameter("orderid", order.getOrderid());
		query.setParameter("marrangeid", marrangeid);
		List<OrderItemBean> orderitems = query.list();
		session.close();
		return orderitems;
	}
	//同时插入订单和订单子项
	public void insertOrderByTr(OrderBean orderBean, OrderItemBean orderItemBean) {
		// TODO Auto-generated method stub
		Session session  = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		insertOrder(orderBean);
		int count =insertOrderItem(orderItemBean);
		if(count==0){
			
		}else{
			throw new RuntimeException("订单插入失败");
		}
		transaction.commit();
		session.close();
	}
	public List<OrderItemBean> findOrderItemByOid(OrderBean orderBean) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from OrderItemBean oit where oit.order.orderid=:orderid";
		Query query = session.createQuery(hql);
		query.setParameter("orderid", orderBean.getOrderid());
		List<OrderItemBean> list = query.list();
		session.close();
		return list;
	}
	public void updateOrderStateByOid(OrderBean orderBean) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(orderBean);
		transaction.commit();
		session.close();
	}
	public OrderBean findOrderByoid(int oid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from OrderBean where orderid=:orderid";
		Query query = session.createQuery(hql);
		query.setParameter("orderid", oid);
		OrderBean orderBean = (OrderBean) query.uniqueResult();
		return orderBean;
	}
	public List<OrderBean> findOrderByState(int marrangeid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from OrderBean ord WHERE ord.state = 0 and (UNIX_TIMESTAMP(NOW())-UNIX_TIMESTAMP(ord.date))/60>15 and ord.moveArrang.marrangeid=:marrangeid";
		Query query=  session.createQuery(hql);
		query.setParameter("marrangeid", marrangeid);
		List<OrderBean> orderBeans = query.list();
		session.close();
		return orderBeans;
	}
	public void updateStateAuto(OrderBean orderBean) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(orderBean);
		transaction.commit();
		session.close();
	}
	public CinemaBean findCinemaById(int cinemaId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from CinemaBean cin where cin.cinemaid=:cinemaId";
		Query query = session.createQuery(hql);
		query.setParameter("cinemaId", cinemaId);
		CinemaBean cinemaBean = (CinemaBean) query.uniqueResult();
		session.close();
		return cinemaBean;
	}
	public List<MoveBean> findMoveByCin(CinemaBean cinema) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from MoveBean move where move.cinema=:cinema";
		Query query = session.createQuery(hql);
		query.setParameter("cinema", cinema);
		List<MoveBean> moveList = query.list(); 
		session.close();
		return moveList;
	}
	public List<CinemaDiscuss> findCinemaDiscussByCid(int cinemaid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from CinemaDiscuss cid where cid.cinemaBean.cinemaid=:cinemaid order by cid.discussdate desc";
		Query query = session.createQuery(hql);
		query.setParameter("cinemaid", cinemaid);
		List<CinemaDiscuss> discusses = query.list();
		session.close();
		return discusses;
	}
	public void insertCinemaDiscuss(CinemaDiscuss cinemaDiscuss) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(cinemaDiscuss);
		transaction.commit();
		session.close();
	}
	
	
	
	
}
