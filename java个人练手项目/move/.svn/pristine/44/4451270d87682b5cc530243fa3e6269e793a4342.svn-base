package com.dailingnan.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.Discuss;
import com.dailingnan.entity.IndexBean;
import com.dailingnan.entity.MoveArrangeBean;
import com.dailingnan.entity.MoveBean;
import com.dailingnan.entity.User;
import com.dailingnan.service.CinemaService;
import com.dailingnan.service.MoveService;
import com.dailingnan.service.UserService;
@Controller
public class MoveController {
	@Resource
	private UserService userservice;
	@Resource
	private MoveService moveService;
	@Resource
	private CinemaService cinemaService;
	//控制首页图片显示
	@RequestMapping("findMove")
	public String findMove(HttpServletRequest request){
		HttpSession session = request.getSession();
		//查询电影信息
		List<MoveBean>  movelist = moveService.findmoves();
		//查询电影院信息
		List<CinemaBean> cinemalist = cinemaService.findCineams();
		//查询首页相关图片信息
		List<IndexBean> indexlist = moveService.findIndex();
		session.setAttribute("indexlist", indexlist);
		session.setAttribute("movelist", movelist);
		session.setAttribute("cinemalist", cinemalist);
		return "/jsp/index.jsp";
		
	}
	//电影详情
	@RequestMapping("dianying")
	public String findMoveById(@RequestParam int moveId,HttpServletRequest request) throws ParseException{
		
		//查询对应的电影
		MoveBean moveBean = moveService.findoneMoveById(moveId);
		//查询默认电影院对应的该电影的排片
		String CinemaId1 = request.getParameter("CinemaId");
		int CinemaId=1;
		if(CinemaId1!=null){
			 CinemaId=Integer.parseInt(CinemaId1);
		}
		List<MoveArrangeBean> arrangeBeans =  cinemaService.findMoveByCinema(CinemaId, moveId);
		//时间类型转换
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdf1=new SimpleDateFormat("HH:mm");
		
		String scrTime=sdf.format(moveBean.getScreentime());
		
		Map<String,Object> map = new HashMap<String,Object>();
		List<String> list = new ArrayList<String>();
		for (MoveArrangeBean moveArrangeBean : arrangeBeans) {
			String scrTime1=sdf1.format(moveArrangeBean.getOnscreendate());
			list.add(scrTime1);
		}
		map.put("move", moveBean);
		map.put("scrTime", scrTime);
		map.put("arrangeBeans", arrangeBeans);
		map.put("timelist", list);
		request.setAttribute("map", map);
		return "/jsp/shangping.jsp";
	}
	
	@RequestMapping("findMark")
	public String findMark(@RequestParam int moveid,HttpServletRequest request){
		System.out.println(moveid);
		//查询对应的电影
		MoveBean moveBean = moveService.findoneMoveById(moveid);
		//查询该电影对应的留言
		List<Discuss> discussList =moveService.findDiscuss(moveid);
		request.setAttribute("discussList", discussList);
		request.setAttribute("moveid", moveid);
		request.setAttribute("moveBean", moveBean);
		System.out.println(discussList.size());
		return "/jsp/mark.jsp";
	}
	@RequestMapping("insertDiscuss")
	public String insertDiscuss(@RequestParam int moveid,HttpServletRequest request,@RequestParam String liuyan){
		//从会话中取到user对象
		User user = userservice.finduserById(1);
		//先根据moveid找出对应电影
		Discuss discuss = new Discuss();
		MoveBean moveBean = moveService.findoneMoveById(moveid);
		discuss.setDiscuss(liuyan);
		discuss.setMove(moveBean);
		discuss.setUser(user);
		moveService.insertDiscuss(discuss);
		request.setAttribute("moveid", moveid);
		return "/findMark.html";
	}
	
	@RequestMapping("serachMove")
	public String findMoveByName(@RequestParam String moveName,HttpServletRequest request){
		List<MoveBean> moveBean = moveService.findMove(moveName);
		
		request.setAttribute("moveName", moveName);
		request.setAttribute("moveBean", moveBean);
		return "/jsp/serach.jsp";
	}
}
