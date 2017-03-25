package com.dailingnan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dailingnan.dao.DiscussDao;
import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.CinemaDiscuss;
import com.dailingnan.entity.Discuss;
import com.dailingnan.service.DiscussService;

@Service
public class DiscussServiceImpl implements DiscussService {
	@Resource
	private DiscussDao discussDao;

	public List<Discuss> findDiscussByCin(CinemaBean cinemaBean, int rows, int page) {
		// TODO Auto-generated method stub
		return discussDao.findDiscussByCin(cinemaBean,(page-1)*rows, rows);
	}

	public Long findDiscussCount(CinemaBean cinemaBean) {
		// TODO Auto-generated method stub
		return discussDao.findMoveCount(cinemaBean);
	}

	public Discuss findDiscussById(int discussid) {
		// TODO Auto-generated method stub
		return discussDao.findDiscussById(discussid);
	}

	public void deleteDiscussById(Discuss discuss) {
		// TODO Auto-generated method stub
		discussDao.deleteDiscussById(discuss);
	}

	public List<CinemaDiscuss> findMoveDiscussByCin(CinemaBean cinemaBean, int rows, int page) {
		// TODO Auto-generated method stub
		return discussDao.findMoveDiscussByCin(cinemaBean,(page-1)*rows, rows);
	}

	public Long findMoveDiscussCount(CinemaBean cinemaBean) {
		// TODO Auto-generated method stub
		return discussDao.findMoveDiscussCount(cinemaBean);
	}

	public CinemaDiscuss findMoveDiscussById(int discussid) {
		// TODO Auto-generated method stub
		return discussDao.findMoveDiscussById(discussid);
	}

	public void deleteMoveDiscussById(CinemaDiscuss discuss) {
		// TODO Auto-generated method stub
		discussDao.deleteMoveDiscussById(discuss);
	}
	
}
