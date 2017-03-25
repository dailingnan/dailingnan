package com.dailingnan.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dailingnan.bean.UserBean;
import com.dailingnan.service.IUserService;

@Controller
public class UserController {
	
	@Resource
	private IUserService userService;
	
	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@RequestMapping("findUser")
	public String findUser(){
		System.out.println("findUser");
		UserBean userBean = new UserBean();
		userBean.setUsername("15580106740");
		userBean.setPwd("123456b");
		userBean =userService.findUser(userBean);
		List<UserBean> list = userService.findAllUser();
		
		System.out.println(list.size());
		System.out.println(userBean.getName());
		return "";
	}
}
