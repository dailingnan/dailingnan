package com.dailingnan.service;

import java.util.List;

import com.dailingnan.entity.AdminBean;
import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.MoveArrangeBean;
import com.dailingnan.entity.MoveBean;

public interface AdminService {
	public List<MoveBean> findMoveByCina(CinemaBean cinemaBean,int start,int count);
	public Long findMoveCount(CinemaBean cinemaBean);
	public void updateMoveById(MoveBean moveBean);
	public void deleteMoveById(MoveBean moveBean);
	public void addMove(MoveBean moveBean);
	public List<MoveArrangeBean> findMoveArrangeByCinId(CinemaBean cinemaBean,int start,int count);
	public Long findMoveArrangeCount(CinemaBean cinemaBean);
	public void updateMoveArrangeById(MoveArrangeBean moveArrangeBean);
	public void deleteMoveArrangeById(MoveArrangeBean moveArrangeBean);
	public void addMoveArrange(MoveArrangeBean arrangeBean);
	public AdminBean findAdminByNameandPwd(String username,String password);
	
}
