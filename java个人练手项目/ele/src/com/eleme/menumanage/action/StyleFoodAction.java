package com.eleme.menumanage.action;

import java.util.ArrayList;
import java.util.List;

import com.eleme.menumanage.pojo.StyleFood;
import com.eleme.menumanage.service.IStyleFoodService;

public class StyleFoodAction {
	private List<StyleFood> list=new ArrayList<StyleFood>();
	private IStyleFoodService istService;
	private int sid;
	private String sname;
	private StyleFood sfood;
	private List<StyleFood> liststyle=new ArrayList<StyleFood>();
	
	public String selcetStyles(){
		list=istService.selectFoods();
		//System.out.println(list);
		return "tStyle";
	}
	
	public String selectList(){
		liststyle=istService.selectFoods();
		//System.out.println(liststyle);
		return "selectList";
	}
	
	public String updateStyles(){
		sfood=new StyleFood(sid,sname);
		istService.updateFoods(sfood);
		return "Style";
	}

	public List<StyleFood> getList() {
		return list;
	}

	public void setList(List<StyleFood> list) {
		this.list = list;
	}

	public IStyleFoodService getIstService() {
		return istService;
	}

	public void setIstService(IStyleFoodService istService) {
		this.istService = istService;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public List<StyleFood> getListstyle() {
		return liststyle;
	}

	public void setListstyle(List<StyleFood> liststyle) {
		this.liststyle = liststyle;
	}
	
}
