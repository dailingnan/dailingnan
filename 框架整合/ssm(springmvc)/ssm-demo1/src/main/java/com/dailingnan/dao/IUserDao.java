package com.dailingnan.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dailingnan.bean.UserBean;

@Repository
public interface IUserDao {
	public UserBean findUser(UserBean user);
	public List<UserBean> findAllUser();
}
