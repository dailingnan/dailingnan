package com.dailingnan.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dailingnan.entity.AdminBean;
import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.CinemaDiscuss;
import com.dailingnan.entity.Discuss;
import com.dailingnan.service.DiscussService;

@Controller
@RequestMapping("discuss")
public class DiscussController {
	
	@Resource
	private DiscussService discussService;
	
	@ResponseBody
	@RequestMapping(value="findDiscuss",produces = "application/json;charset=UTF-8" )
	public Map<String, Object> findDiscuss(HttpServletRequest request,int rows,int page){
		//从会话中获取用户信息
		
		CinemaBean cinemaBean = new CinemaBean();
		cinemaBean.setCinemaid(1);
		AdminBean admin = new AdminBean();
		admin.setCinemaBean(cinemaBean);
		
		List<Discuss> discusses = discussService.findDiscussByCin(admin.getCinemaBean(), rows, page);
		//查找数量
		Long count = discussService.findDiscussCount(admin.getCinemaBean());
		//以json格式的形式返回数据到前台easyui控件
		Map<String,Object> result = new HashMap<String, Object>();
		result.put("total", count);
		result.put("rows", discusses);
		return result;
	}
	
	@RequestMapping("deleteDiscuss")
	public String deleteDiscuss(int discussid){
		Discuss discuss = discussService.findDiscussById(discussid);
		discussService.deleteDiscussById(discuss);
		return "/houtai/tab/discussMessage.jsp";
	}
	@ResponseBody
	@RequestMapping(value="findMoveDiscuss",produces = "application/json;charset=UTF-8" )
	public Map<String, Object> findMoveDiscuss(HttpServletRequest request,int rows,int page){
		//从会话中获取用户信息
		System.out.println("findMoveDiscuss");
		CinemaBean cinemaBean = new CinemaBean();
		cinemaBean.setCinemaid(1);
		AdminBean admin = new AdminBean();
		admin.setCinemaBean(cinemaBean);
		
		List<CinemaDiscuss> discusses = discussService.findMoveDiscussByCin(admin.getCinemaBean(), rows, page);
		//查找数量
		Long count = discussService.findMoveDiscussCount(admin.getCinemaBean());
		//以json格式的形式返回数据到前台easyui控件
		Map<String,Object> result = new HashMap<String, Object>();
		result.put("total", count);
		result.put("rows", discusses);
		return result;
	}
	
	@RequestMapping("deleteMoveDiscuss")
	public String deleteMoveDiscuss(int discussid){
		CinemaDiscuss discuss = discussService.findMoveDiscussById(discussid);
		discussService.deleteMoveDiscussById(discuss);
		return "/houtai/tab/moveDiscussMessage.jsp";
	}
}	
