package com.eleme.menumanage.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dailingnan.pojo.AdminBean;
import com.eleme.menumanage.pojo.ShowAssess;
import com.eleme.menumanage.service.IShowAssessService;

public class ShowAssessAction {
	private IShowAssessService showService;
	private List<ShowAssess> list=new ArrayList<ShowAssess>();
	private List<ShowAssess> listr=new ArrayList<ShowAssess>();
	private int eidnums;
	public String selectShow(){
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		AdminBean ad=(AdminBean) session.getAttribute("admin");
		list=showService.selectShow(ad.getEid());
		return "selectShow";
	}
	
	public String selecasses(){
		
		listr=showService.selectShow(eidnums);
		//System.out.println(listr);
		return"selecasses";
	}
	
	public IShowAssessService getShowService() {
		return showService;
	}
	public void setShowService(IShowAssessService showService) {
		this.showService = showService;
	}
	public List<ShowAssess> getList() {
		return list;
	}
	public void setList(List<ShowAssess> list) {
		this.list = list;
	}

	public List<ShowAssess> getListr() {
		return listr;
	}

	public void setListr(List<ShowAssess> listr) {
		this.listr = listr;
	}

	public int getEidnums() {
		return eidnums;
	}

	public void setEidnums(int eidnums) {
		this.eidnums = eidnums;
	}
	
	
}
