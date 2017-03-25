package com.dailingnan.action;

import java.util.List;

import com.dailingnan.entity.User;
import com.dailingnan.service.interfaces.IUserService;

public class UserAction {
	private IUserService userService;
	public IUserService getUserService() {
		return userService;
	}
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	public String execute(){
		System.out.println("user");
		List<User> list = userService.findUser();
		System.out.println(list.size());
		return "success";
	}
}
