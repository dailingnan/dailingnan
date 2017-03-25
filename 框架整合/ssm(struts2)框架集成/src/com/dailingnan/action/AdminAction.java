package com.dailingnan.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.dailingnan.service.AdminService;

public class AdminAction {
	//private AdminService adminService = new AdminService();
	private AdminService adminService;
	public AdminService getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	public String execute(){
//		HttpServletRequest request  = ServletActionContext.getRequest(); 
//		ServletContext sc=request.getSession().getServletContext();
//		ApplicationContext ac = WebApplicationContextUtils.getRequiredWebApplicationContext(sc);//getWebApplicationContext(sc);
//		AdminService adminService=(AdminService) ac.getBean("adminService");
	
		System.out.println(adminService.findById(2));
		return "success";
	}
}
