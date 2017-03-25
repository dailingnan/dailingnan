package com.dailingnan.dao;

import java.util.List;

import com.dailingnan.pojo.AdminBean;


public interface IAdminDao {
	public List<AdminBean> selectAdmin(AdminBean ad);
	AdminBean findById(int id);
	
}
