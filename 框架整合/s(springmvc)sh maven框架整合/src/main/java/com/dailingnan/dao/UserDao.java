package com.dailingnan.dao;

import com.dailingnan.entity.User;

public interface UserDao<T> {
	public User save(T o);
}
