package com.dailingnan.service;

import java.util.List;

import com.dailingnan.pojo.AdminBean;

public interface IAdminService {
	public List<AdminBean> selectAdmin(AdminBean ad);
	AdminBean findById(int id);
}
