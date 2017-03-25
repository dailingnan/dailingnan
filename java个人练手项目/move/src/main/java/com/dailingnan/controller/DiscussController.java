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
		//�ӻỰ�л�ȡ�û���Ϣ
		
		CinemaBean cinemaBean = new CinemaBean();
		cinemaBean.setCinemaid(1);
		AdminBean admin = new AdminBean();
		admin.setCinemaBean(cinemaBean);
		
		List<Discuss> discusses = discussService.findDiscussByCin(admin.getCinemaBean(), rows, page);
		//��������
		Long count = discussService.findDiscussCount(admin.getCinemaBean());
		//��json��ʽ����ʽ�������ݵ�ǰ̨easyui�ؼ�
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
		//�ӻỰ�л�ȡ�û���Ϣ
		System.out.println("findMoveDiscuss");
		CinemaBean cinemaBean = new CinemaBean();
		cinemaBean.setCinemaid(1);
		AdminBean admin = new AdminBean();
		admin.setCinemaBean(cinemaBean);
		
		List<CinemaDiscuss> discusses = discussService.findMoveDiscussByCin(admin.getCinemaBean(), rows, page);
		//��������
		Long count = discussService.findMoveDiscussCount(admin.getCinemaBean());
		//��json��ʽ����ʽ�������ݵ�ǰ̨easyui�ؼ�
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
