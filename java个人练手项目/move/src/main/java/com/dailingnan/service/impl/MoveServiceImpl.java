package com.dailingnan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dailingnan.dao.MoveDao;
import com.dailingnan.entity.Discuss;
import com.dailingnan.entity.IndexBean;
import com.dailingnan.entity.MoveBean;
import com.dailingnan.service.MoveService;
@Service
public class MoveServiceImpl  implements MoveService{
	@Resource
	private MoveDao moveDao;
	public List<MoveBean> findmoves() {
		// TODO Auto-generated method stub
		
		return moveDao.findmoves();
	}
	public List<IndexBean> findIndex() {
		// TODO Auto-generated method stub
		return moveDao.findIndex();
	}
	public MoveBean findoneMoveById(int id) {
		// TODO Auto-generated method stub
		return moveDao.findoneMoveById(id);
	}
	public List<Discuss> findDiscuss(int moveid) {
		// TODO Auto-generated method stub
		return moveDao.findDiscuss(moveid);
	}
	public void insertDiscuss(Discuss discuss) {
		// TODO Auto-generated method stub
		moveDao.insertDiscuss(discuss);
	}
	public List<MoveBean> findMove(String name) {
		// TODO Auto-generated method stub
		return moveDao.findMove(name);
	}
	public List<MoveBean> findMoveByNameAndCin(int cinemaid) {
		// TODO Auto-generated method stub
		return moveDao.findMoveByNameAndCin(cinemaid);
	}
	public MoveBean findMoveByNameAndCinid(int cinemaid, String name) {
		// TODO Auto-generated method stub
		return moveDao.findMoveByNameAndCinid(cinemaid, name);
	}
	
	
}
