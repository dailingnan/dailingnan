package com.dailingnan.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.dailingnan.entity.User;
@Repository("userDao")
public class UserDaoImpl implements UserDao<User> {
	@Resource
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public User save(User o) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(o);
		return o;
	}

}
