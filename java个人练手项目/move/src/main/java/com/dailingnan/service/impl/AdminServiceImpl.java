package com.dailingnan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dailingnan.dao.AdminDao;
import com.dailingnan.dao.MoveDao;
import com.dailingnan.entity.AdminBean;
import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.MoveArrangeBean;
import com.dailingnan.entity.MoveBean;
import com.dailingnan.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	@Resource
	private AdminDao adminDao;
	
	@Resource
	private MoveDao moveDao;
	public List<MoveBean> findMoveByCina(CinemaBean cinemaBean,int rows,int page){
		// TODO Auto-generated method stub
		return adminDao.findMoveByCina(cinemaBean,(page-1)*rows, rows);
		//return adminDao.findMoveByCina(cinemaBean,page, rows);
	}
	public Long findMoveCount(CinemaBean cinemaBean) {
		// TODO Auto-generated method stub
		return adminDao.findMoveCount(cinemaBean);
	}
	public void updateMoveById(MoveBean moveBean) {
		// TODO Auto-generated method stub
		adminDao.updateMoveById(moveBean);
	}
	public void deleteMoveById(MoveBean moveBean) {
		// TODO Auto-generated method stub
		adminDao.deleteMoveById(moveBean);
	}
	public void addMove(MoveBean moveBean) {
		// TODO Auto-generated method stub
		adminDao.addMove(moveBean);
	}
	public List<MoveArrangeBean> findMoveArrangeByCinId(CinemaBean cinemaBean,int rows,int page) {
		// TODO Auto-generated method stub
		
		return adminDao.findMoveArrangeByCinId(cinemaBean,(page-1)*rows, rows);
	}
	public Long findMoveArrangeCount(CinemaBean cinemaBean) {
		// TODO Auto-generated method stub
		return adminDao.findMoveArrangeCount(cinemaBean);
	}
	public void updateMoveArrangeById(MoveArrangeBean moveArrangeBean) {
		// TODO Auto-generated method stub
		adminDao.updateMoveArrangeById(moveArrangeBean);
	}
	public void deleteMoveArrangeById(MoveArrangeBean moveArrangeBean) {
		// TODO Auto-generated method stub
		adminDao.deleteMoveArrangeById(moveArrangeBean);
	}
	public void addMoveArrange(MoveArrangeBean arrangeBean) {
		// TODO Auto-generated method stub
		adminDao.addMoveArrange(arrangeBean);
	}
	public AdminBean findAdminByNameandPwd(String username, String password) {
		// TODO Auto-generated method stub
		return adminDao.findAdminByNameandPwd(username, password);
	}
	

}
