package com.dailingnan.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dailingnan.dao.IAdminDao;
import com.dailingnan.pojo.AdminBean;
import com.dailingnan.util.DbUtil;

public class AdminService implements IAdminService {
	private IAdminDao dao;
	

	public IAdminDao getDao() {
		return dao;
	}

	public void setDao(IAdminDao dao) {
		this.dao = dao;
	}

	public AdminService() {

		
	}

	@Override
	public List<AdminBean> selectAdmin(AdminBean ad) {
		// TODO Auto-generated method stub
		return dao.selectAdmin(ad);
	}

	@Override
	public AdminBean findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

}
