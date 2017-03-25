package com.dailingnan.dao;

import java.util.List;

import com.dailingnan.entity.Discuss;
import com.dailingnan.entity.IndexBean;
import com.dailingnan.entity.MoveBean;

public interface MoveDao {
	public List<MoveBean> findmoves();
	public List<IndexBean> findIndex();
	public MoveBean findoneMoveById(int id);
	public List<Discuss> findDiscuss(int moveid);
	public void insertDiscuss(Discuss discuss);
	public List<MoveBean> findMove(String name);
	public List<MoveBean> findMoveByNameAndCin(int cinemaid);
	public MoveBean findMoveByNameAndCinid(int cinemaid,String name);
}
