package com.dailingnan.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dailingnan.entity.User;
import com.dailingnan.service.UserService;


@Controller
public class UserControllor {
	@Resource
	private UserService userService;
	@RequestMapping("index")
	public String findUser(){
		System.out.println("index");
		return "/index.jsp";
	}
	@RequestMapping("reg")
	public String saveUser() {
		System.out.println(userService);
		User user = new User();
		user.setUsername("´÷ÁëÄÏ");
		
		userService.save(user);
		return "/index.jsp";
	}
}
