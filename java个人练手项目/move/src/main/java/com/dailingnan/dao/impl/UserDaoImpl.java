package com.dailingnan.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.dailingnan.dao.UserDao;
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
	public User finduserById(int uid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		User user = (User) session.get(User.class, uid);
		session.close();
		return user;
	}
	public User findOneUser(String username, String password) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String hql="from User user where user.name=:name and pwd = :pwd";
		Query query = session.createQuery(hql);
		query.setParameter("name", username);
		query.setParameter("pwd", password);
		User user = (User) query.uniqueResult();
		session.close();
		return user;
		
	}
	

}
