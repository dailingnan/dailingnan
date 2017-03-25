package com.dailingnan.service;

import com.dailingnan.dao.IAdminDao;
import com.dailingnan.pojo.AdminBean;

public class AdminService implements IAdminService {
	private IAdminDao dao;

	public IAdminDao getDao() {
		return dao;
	}

	public void setDao(IAdminDao dao) {
		this.dao = dao;
	}

	@Override
	public AdminBean findAdmin(AdminBean adminBean) {
		// TODO Auto-generated method stub
		return dao.findAdmin(adminBean);
	}
	
	
}
