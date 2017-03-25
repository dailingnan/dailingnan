package com.dailingnan.dao;

import java.util.List;

import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.CinemaDiscuss;
import com.dailingnan.entity.Discuss;

public interface DiscussDao {
	public List<Discuss> findDiscussByCin(CinemaBean cinemaBean,int start,int count);
	public Long findMoveCount(CinemaBean cinemaBean);
	public Discuss findDiscussById(int discussid);
	public void deleteDiscussById(Discuss discuss);
	public List<CinemaDiscuss> findMoveDiscussByCin(CinemaBean cinemaBean,int start,int count);
	public Long findMoveDiscussCount(CinemaBean cinemaBean);
	public CinemaDiscuss findMoveDiscussById(int discussid);
	public void deleteMoveDiscussById(CinemaDiscuss discuss);
}
