package com.dailingnan.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.dailingnan.dao.interfaces.IUserDao;
import com.dailingnan.entity.User;

public class UserDaoImpl implements IUserDao{
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<User> findUser() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		List<User> list = session.createQuery("from User").list();
		return list;
	}

}
