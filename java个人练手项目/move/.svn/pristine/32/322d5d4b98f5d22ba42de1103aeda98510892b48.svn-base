package com.dailingnan.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.dailingnan.dao.MoveDao;
import com.dailingnan.entity.Discuss;
import com.dailingnan.entity.IndexBean;
import com.dailingnan.entity.Move;
import com.dailingnan.entity.MoveBean;

@Repository
public class MoveDaoImpl implements MoveDao{
	@Resource
	private SessionFactory sessionFactory;
	//查找所有的电影信息
	public List<MoveBean> findmoves() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		List<MoveBean> list =  new ArrayList<MoveBean>();
		list =session.createQuery("from MoveBean").list();
		//session.get(Move.class, 1);
		session.close();
		return list;
	}
	//查找所有的首页信息
	public List<IndexBean> findIndex() {
		// TODO Auto-generated method stub
		Session session  = sessionFactory.openSession();
		List<IndexBean> list = new ArrayList<IndexBean>();
		list  = session.createQuery("from IndexBean").list();
		return list;
	}
	//根据id找对应的电影
	public MoveBean findoneMoveById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		MoveBean moveBean = new MoveBean();
		moveBean = (MoveBean) session.get(MoveBean.class, id);
		return moveBean;
	}
	public List<Discuss> findDiscuss(int moveid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from Discuss dis where dis.move.moveid=:moveid order by discussdate desc";
		Query query = session.createQuery(hql);
		query.setParameter("moveid",moveid);
		List<Discuss> list = query.list();
		session.close();
		return list;
	}
	public void insertDiscuss(Discuss discuss) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(discuss);
		transaction.commit();
		session.close();
	}
	public List<MoveBean> findMove(String name) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from MoveBean move where move.name like :moveInfo or move.actor like :moveInfo";
		Query query = session.createQuery(hql);
		query.setParameter("moveInfo", "%"+name+"%");
		List<MoveBean> list = query.list(); 
		session.close();
		return list;
	}
	public List<MoveBean> findMoveByNameAndCin(int cinemaid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from MoveBean move where move.cinema.cinemaid=:cinemaid";
		Query query = session.createQuery(hql);
		query.setParameter("cinemaid", cinemaid);
		List<MoveBean> moveBeans = query.list();
		session.close();
		return moveBeans;
	}
	public MoveBean findMoveByNameAndCinid(int cinemaid, String name) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from MoveBean move where move.cinema.cinemaid=:cinemaid and move.name=:name";
		Query query = session.createQuery(hql);
		query.setParameter("cinemaid", cinemaid);
		query.setParameter("name", name);
		MoveBean moveBeans = (MoveBean) query.uniqueResult();
		session.close();
		return moveBeans;
	}
	
}
