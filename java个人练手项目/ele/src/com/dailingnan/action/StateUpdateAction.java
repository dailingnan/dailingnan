package com.dailingnan.action;

import com.dailingnan.service.IOrder_res_handleService;

public class StateUpdateAction {
      private IOrder_res_handleService service;
      private String oid;
      private String payid;
      

	public String getPayid() {
		return payid;
	}

	public void setPayid(String payid) {
		this.payid = payid;
	}

	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	public IOrder_res_handleService getService() {
		return service;
	}

	public void setService(IOrder_res_handleService service) {
		this.service = service;
	}
    
	public String execute(){
		service.update(oid);
		return "success";
	}
	
	//Ö§¸¶  ¸Ä¶©µ¥×´Ì¬
	public String pay(){
		service.update2(payid);
		return null;
	}
}
