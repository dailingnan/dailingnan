package com.dailingnan.service;

import java.util.List;

import com.dailingnan.bean.UserBean;

public interface IUserService {
	public UserBean findUser(UserBean user);
	public List<UserBean> findAllUser();
}
