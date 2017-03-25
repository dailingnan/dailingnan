package com.dailingnan.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dailingnan.dao.UserDao;
import com.dailingnan.entity.User;
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao<User> userDao;
	public User save(User user) {
		// TODO Auto-generated method stub
		System.out.println(user);
		return userDao.save(user);
	}

}
