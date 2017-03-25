package com.dailingnan.service;

import java.util.List;

import com.dailingnan.dao.interfaces.IUserDao;
import com.dailingnan.entity.User;
import com.dailingnan.service.interfaces.IUserService;

public class UserServiceImpl implements IUserService {
	private IUserDao userDao;
	public IUserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
	@Override
	public List<User> findUser() {
		// TODO Auto-generated method stub
		return userDao.findUser();
	}
	
}
