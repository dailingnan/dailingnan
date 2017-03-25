package com.dailingnan.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.dailingnan.dao.DiscussDao;
import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.CinemaDiscuss;
import com.dailingnan.entity.Discuss;

@Repository
public class DiscussDaoImpl  implements DiscussDao{
	@Resource
	private SessionFactory sessionFactory;

	public List<Discuss> findDiscussByCin(CinemaBean cinemaBean,int start,int count) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from Discuss dis where dis.move.cinema.cinemaid=:cinemaid order by dis.discussdate desc ";
		Query query = session.createQuery(hql).setFirstResult(start).setMaxResults(count);;
		query.setParameter("cinemaid", cinemaBean.getCinemaid());
		List<Discuss> discusses = query.list();
		session.close();
		return discusses;
	}
	
	public Long findMoveCount(CinemaBean cinemaBean) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "select count(dis) from Discuss dis where dis.move.cinema.cinemaid=:cinemaid";
		Query query = session.createQuery(hql);
		query.setParameter("cinemaid", cinemaBean.getCinemaid());
		Long count = (Long) query.uniqueResult();
		session.close();
		return count;
	}

	public Discuss findDiscussById(int discussid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from Discuss dis where dis.discussid=:discussid";
		Query query = session.createQuery(hql);
		query.setParameter("discussid", discussid);
		Discuss discuss = (Discuss) query.uniqueResult();
		session.close();
		return discuss;
	}

	public void deleteDiscussById(Discuss discuss) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(discuss);
		transaction.commit();
		session.close();
	}

	public List<CinemaDiscuss> findMoveDiscussByCin(CinemaBean cinemaBean, int start, int count) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from CinemaDiscuss dis where dis.cinemaBean.cinemaid=:cinemaid order by dis.discussdate desc ";
		Query query = session.createQuery(hql).setFirstResult(start).setMaxResults(count);;
		query.setParameter("cinemaid", cinemaBean.getCinemaid());
		List<CinemaDiscuss> discusses = query.list();
		session.close();
		return discusses;
	}

	public Long findMoveDiscussCount(CinemaBean cinemaBean) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "select count(dis) from CinemaDiscuss dis where dis.cinemaBean.cinemaid=:cinemaid";
		Query query = session.createQuery(hql);
		query.setParameter("cinemaid", cinemaBean.getCinemaid());
		Long count = (Long) query.uniqueResult();
		session.close();
		return count;
	}

	public CinemaDiscuss findMoveDiscussById(int discussid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql = "from CinemaDiscuss dis where dis.discussid=:discussid";
		Query query = session.createQuery(hql);
		query.setParameter("discussid", discussid);
		CinemaDiscuss discuss = (CinemaDiscuss) query.uniqueResult();
		session.close();
		return discuss;
	}

	public void deleteMoveDiscussById(CinemaDiscuss discuss) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(discuss);
		transaction.commit();
		session.close();
	}
}
