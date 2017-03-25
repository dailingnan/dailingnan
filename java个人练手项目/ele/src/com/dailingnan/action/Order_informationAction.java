package com.dailingnan.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;


import com.dailingnan.pojo.Order_informationBean;
import com.dailingnan.service.IOrder_informationService;

public class Order_informationAction {
	private  IOrder_informationService service;
	private List<Order_informationBean> l;
	private String id;

	public IOrder_informationService getService() {
		return service;
	}

	public void setService(IOrder_informationService service) {
		this.service = service;
	}
	
	public String execute(){
		HttpServletRequest request=ServletActionContext.getRequest();
		id=request.getParameter("id");
		fenye();
		System.out.println(id);
		return "success";
	}
	
	public String fenye(){
		HttpServletRequest request=ServletActionContext.getRequest();
		l=service.find(id);
		List<Order_informationBean> l2 = new ArrayList<Order_informationBean>();
		int size=l.size();
		int pageSize=2;
		int allPage=0;
		String SpageCount="";
		int pageCount=0;
		int fanwei=0;
		
		if(size%pageSize==0){
			allPage=size/pageSize;
		}else
			allPage=size/pageSize+1;
		System.out.println("size:"+size +"  allPage:"+allPage+" SpageCount:"+SpageCount+" l2:"+l2);
		System.out.println("---------------"+l);
		//int pageCount=Integer.parseInt(SpageCount);
		if(request.getParameter("pageCount")==null || request.getParameter("pageCount").equals("1")){
			 for(int i=0; i<l.size();i++){
				// System.out.println(l.get(0));
				 l2.add(l.get(i));
			 }
		}else{
		    SpageCount=(String) request.getParameter("pageCount");
		    pageCount=Integer.parseInt(SpageCount);
		    if(pageCount*pageSize>size){
		    	fanwei=size;
		    }else{
		    	fanwei=pageCount*pageSize;
		    }
		    
		    for(int i=(pageCount-1)*pageSize;i<fanwei;i++){
		    	 l2.add(l.get(i));
		    }
		   // System.out.println(l2.toString());
		}
		System.out.println(request.getParameter("pageCount"));
		//int id1=Integer.parseInt(id);
		System.out.println(l2.toString());
	  //	System.out.println(l.toString());
		HttpSession session=request.getSession();
	    //	session.setAttribute("list", l);
		session.setAttribute("list2", l2);
		session.setAttribute("allPage", allPage);
	   //	session.setAttribute("id", id1);
		//System.out.println(id1);
		return "fenye";
	}
	

}
