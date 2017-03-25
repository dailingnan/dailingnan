package com.dailingnan.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dailingnan.dao.IAdminDao;
import com.dailingnan.pojo.AdminBean;
import com.dailingnan.service.IAdminService;

public class AdminAction {
	private IAdminService adminService;
	private AdminBean adminBean;
	private String msg;
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public AdminBean getAdminBean() {
		return adminBean;
	}

	public void setAdminBean(AdminBean adminBean) {
		this.adminBean = adminBean;
	}

	public IAdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(IAdminService adminService) {
		this.adminService = adminService;
	}
	
	public String find(){
		if(adminService.findAdmin(adminBean)!=null){
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
		
			session.setAttribute("admin", adminService.findAdmin(adminBean));
			return "main";
		}else{
			msg="用户名或密码错误！";
			return "fail";
		}
		
	}
	
}
