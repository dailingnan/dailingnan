package com.eleme.menumanage.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dailingnan.pojo.AdminBean;
import com.eleme.menumanage.pojo.FoodEvaluateView;
import com.eleme.menumanage.pojo.StyleFood;
import com.eleme.menumanage.service.FoodEvaluateViewService;
import com.eleme.menumanage.service.IFoodEvaluateViewService;

public class FoodEvaluateViewAction {
	private int fidnum;
	private int sidnum;
	private List<FoodEvaluateView> list=new ArrayList<FoodEvaluateView>();
	private List<FoodEvaluateView> listy=new ArrayList<FoodEvaluateView>();
	private IFoodEvaluateViewService viewService;
	private int eidnums;
	private List<StyleFood> liststyles=new ArrayList<StyleFood>();
	private List<FoodEvaluateView> listx=new ArrayList<FoodEvaluateView>();
	public String selectViews(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		AdminBean ad=(AdminBean) session.getAttribute("admin");
		list=viewService.selectView(ad.getEid());
		return "selectViews";
	}
	
	public String sele(){
		/*
		 * 
		 *从值栈获取eid
		 */
		liststyles=viewService.selectyo();
		listy=viewService.selectView(eidnums);
		return "sele";
	}
	
	public String selectViewes(){
		FoodEvaluateView view=new FoodEvaluateView(eidnums,sidnum);
		//FoodEvaluateView view=new FoodEvaluateView(1,1);
		listy=viewService.selectViewsd(view);
		return "selectViewes";
	}
	
	public String selectacse(){
		FoodEvaluateView view=new FoodEvaluateView(eidnums,fidnum,sidnum);
		listx=viewService.selectViewss(view);
		return "selectacse";
	}

	public int getFidnum() {
		return fidnum;
	}

	public void setFidnum(int fidnum) {
		this.fidnum = fidnum;
	}

	public List<FoodEvaluateView> getList() {
		return list;
	}

	public void setList(List<FoodEvaluateView> list) {
		this.list = list;
	}

	

	public IFoodEvaluateViewService getViewService() {
		return viewService;
	}

	public void setViewService(IFoodEvaluateViewService viewService) {
		this.viewService = viewService;
	}

	public List<FoodEvaluateView> getListy() {
		return listy;
	}

	public void setListy(List<FoodEvaluateView> listy) {
		this.listy = listy;
	}

	public int getEidnums() {
		return eidnums;
	}

	public void setEidnums(int eidnums) {
		this.eidnums = eidnums;
	}

	public List<StyleFood> getListstyles() {
		return liststyles;
	}

	public void setListstyles(List<StyleFood> liststyles) {
		this.liststyles = liststyles;
	}

	public int getSidnum() {
		return sidnum;
	}

	public void setSidnum(int sidnum) {
		this.sidnum = sidnum;
	}

	public List<FoodEvaluateView> getListx() {
		return listx;
	}

	public void setListx(List<FoodEvaluateView> listx) {
		this.listx = listx;
	}

}
