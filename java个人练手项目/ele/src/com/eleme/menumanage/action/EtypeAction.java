package com.eleme.menumanage.action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.eleme.menumanage.pojo.Etype;
import com.eleme.menumanage.service.IEtypeService;

public class EtypeAction {
	private IEtypeService eservice;
	List<Etype> list=new ArrayList<Etype>();
	private Etype e;
	private Etype e1;
	public String selectE(){
		if(list.isEmpty()){
		list=eservice.selectService();
		}else{
			list.clear();
			list=eservice.selectService();
		}
		return "selectE";
	}
	public String updateE() throws UnsupportedEncodingException{
		ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
		ServletActionContext.getResponse().setContentType("UTF-8");
		e1=new Etype(e.getTid(),e.getTname());
		eservice.updateService(e1);
		System.out.println(e.getTname());
		return "updateE";
	}
	public IEtypeService getEservice() {
		return eservice;
	}
	public void setEservice(IEtypeService eservice) {
		this.eservice = eservice;
	}
	public List<Etype> getList() {
		return list;
	}
	public void setList(List<Etype> list) {
		this.list = list;
	}
	public Etype getE() {
		return e;
	}
	public void setE(Etype e) {
		this.e = e;
	}
	
	
	
}
