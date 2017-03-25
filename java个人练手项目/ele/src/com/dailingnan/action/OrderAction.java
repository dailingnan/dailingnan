package com.dailingnan.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dailingnan.pojo.OrderBean;
import com.dailingnan.service.IOrderService;

public class OrderAction {
	private IOrderService service;
	
    public IOrderService getService() {
		return service;
	}

	public void setService(IOrderService service) {
		this.service = service;
	}

	public String execute(){
    	List<OrderBean> o=service.findOrder();
    	HttpServletRequest request=ServletActionContext.getRequest();
    	HttpSession session=request.getSession();
    	session.setAttribute("orderBean", o);
    	System.out.println("11111111111");
    	return "success";
    }
}
