package com.dailingnan.action;

import java.util.List;

import com.dailingnan.pojo.AdminBean;
import com.dailingnan.service.AdminService;

public class test {
	public static void main(String[] args) {
		AdminService adminService = new AdminService();
		AdminBean adminBean = new AdminBean();
		adminBean.setUsername("´÷ÏÈÉú");
		List<AdminBean> list = (List<AdminBean>) adminService.selectAdmin(adminBean);
		//AdminBean adminBean2 = adminService.selectAdmin(adminBean);
		System.out.println(list.get(0).getUsername());
		System.out.println(adminService.findById(2));
		
	}
}
