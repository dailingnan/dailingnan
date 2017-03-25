package com.dailingnan.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dailingnan.entity.User;
import com.dailingnan.service.UserService;

import net.sf.json.JSONArray;


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
		user.setUsername("戴岭南");
		
		userService.save(user);
		return "/index.jsp";
	}
	
	/*
	 * 根据用户名密码查找用户
	 */
	@RequestMapping("findUser")
	public void finduser(HttpServletRequest request,HttpServletResponse response,String username,
			String password,String vcode) throws IOException{
		//
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("RANDOM_CODE_KEY"));
		
		String text = null;
		if(vcode.equalsIgnoreCase((String) session.getAttribute("RANDOM_CODE_KEY"))){
			text = userService.findOneUser(username, password);
			session.setAttribute("user", userService.findOneUsers(username, password));
		}else{
			text ="2";
		}
		response.setCharacterEncoding("utf-8");
		response.getWriter().println(text);//返回信息
		response.getWriter().close();
		
	}
	
	@RequestMapping("findUsers")
	public void findUsers(){
		System.out.println("ajax");
	}
	
	/*
	 * 用户退出登录
	 */
	@RequestMapping("UserLogout")
	public String logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		
		session.invalidate();
		return "/findMove.html";
	}
	
	
	//svn测试     ceshianli
}
