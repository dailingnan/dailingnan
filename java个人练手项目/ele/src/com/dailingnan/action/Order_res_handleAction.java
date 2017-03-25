package com.dailingnan.action;

import java.util.ArrayList;
import java.util.List;

import com.dailingnan.pojo.OrderBean;
import com.dailingnan.service.Order_res_handleService;

public class Order_res_handleAction {
	public Order_res_handleService service;
	private List<OrderBean>  list2;

    public List<OrderBean> getList2() {
		return list2;
	}


	public void setList2(List<OrderBean> list2) {
		this.list2 = list2;
	}


	public Order_res_handleService getService() {
		return service;
	}


	public void setService(Order_res_handleService service) {
		this.service = service;
	}


	public String execute(){
    	   List<OrderBean>  list= service.find(); 
    	   list2=new ArrayList<OrderBean>();
     	   System.out.println(list.toString());
    	   for(int i=0;i<list.size();i++){
    		   if(list.get(i).getState().equals("1")){
    			   list2.add(list.get(i));
    		   }
    	   }
    	   
    	   return "success";
       }
}
