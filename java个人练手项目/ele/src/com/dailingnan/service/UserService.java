package com.dailingnan.service;

import com.dailingnan.dao.IUserDao;
import com.dailingnan.pojo.UserBean;

public class UserService implements IUserService {
	private IUserDao dao;

	public IUserDao getDao() {
		return dao;
	}

	public void setDao(IUserDao dao) {
		this.dao = dao;
	}

	@Override
	public UserBean findUser(UserBean user) {
		// TODO Auto-generated method stub
		return dao.findUser(user);
	}

	@Override
	public int findUsers(UserBean user) {
		// TODO Auto-generated method stub
		
		return 0;
	}
	
}
