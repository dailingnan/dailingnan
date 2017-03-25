package com.dailingnan.service;

import com.dailingnan.pojo.UserBean;

public interface IUserService {
	UserBean findUser(UserBean user);
	int findUsers(UserBean user);
}
