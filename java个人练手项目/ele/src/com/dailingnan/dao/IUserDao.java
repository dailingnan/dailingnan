package com.dailingnan.dao;

import com.dailingnan.pojo.UserBean;

public interface IUserDao {
	UserBean findUser(UserBean user);
}
