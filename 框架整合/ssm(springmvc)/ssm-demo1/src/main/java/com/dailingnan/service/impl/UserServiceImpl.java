package com.dailingnan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dailingnan.bean.UserBean;
import com.dailingnan.dao.IUserDao;
import com.dailingnan.service.IUserService;

@Service
public class UserServiceImpl implements IUserService{
	
	@Resource
	private IUserDao userDao;
	
	public UserBean findUser(UserBean user) {
		// TODO Auto-generated method stub
		return userDao.findUser(user);
	}
	public List<UserBean> findAllUser() {
		// TODO Auto-generated method stub
		List<UserBean> list = userDao.findAllUser();
		return list;
	}

}
