package com.dailingnan.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dailingnan.pojo.UserBean;
import com.dailingnan.service.IUserService;

public class UserAction {
	private UserBean user;
	private IUserService userService;
	public UserBean getUser() {
		return user;
	}
	public void setUser(UserBean user) {
		this.user = user;
	}
	
	public IUserService getUserService() {
		return userService;
	}
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	public String execute(){
		
		return null;
	}
	public String findUser() throws IOException{
		String state = null;
		HttpServletRequest request =ServletActionContext.getRequest();
		HttpSession session =request.getSession();
		HttpServletResponse response =ServletActionContext.getResponse();
		String username = request.getParameter("admin");//�û���
		String password = request.getParameter("password");//����
		String vc = request.getParameter("vc");//��֤��
		String vc1 = (String) session.getAttribute("checkCode");
		System.out.println(vc+"   1 "+vc1);
		user = new UserBean();
		user.setUsername(username);
		user.setPassword(password);
		if(vc1.equalsIgnoreCase(vc)){
			if(userService.findUser(user)!=null){
				state = "1";
				session.setAttribute("user", userService.findUser(user));
			}else{
				state = "0";
			}
		}else{
			state = "2";
		} 
		
		response.setCharacterEncoding("utf-8");
		response.getWriter().println(state);//������Ϣ
		response.getWriter().close();
		return null;
	}
}
