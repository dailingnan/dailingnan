package com.eleme.menumanage.action;

import java.util.ArrayList;
import java.util.List;

import com.eleme.menumanage.pojo.FoodMenu;
import com.eleme.menumanage.pojo.RestaurantAssess;
import com.eleme.menumanage.service.IRestaurantAccessService;

public class RestaurantAccessAction {
	private IRestaurantAccessService IreaccService;
	private List<RestaurantAssess> list3=new ArrayList<RestaurantAssess>();
	private RestaurantAssess reacc;
	private RestaurantAssess reacc1;
	private int raid;
	private int eidnums;
	public String selectIt(){
		 list3=IreaccService.selectAll();
		//System.out.println(list3);
		return "selectIt";
	}
	public String insertIt(){
		reacc1=new RestaurantAssess(reacc.getEid(),reacc.getMarked());
		eidnums=reacc.getEid();
		//reacc1=new RestaurantAssess(2,"很好地服务");
		IreaccService.insertItem(reacc1);
		return "insertIt";
	}
	
	public String deleteIt(){
		IreaccService.deleteItem(raid);
		return "deleteIt";
	}
	
	public IRestaurantAccessService getIreaccService() {
		return IreaccService;
	}
	public void setIreaccService(IRestaurantAccessService ireaccService) {
		IreaccService = ireaccService;
	}
	
	public List<RestaurantAssess> getList3() {
		return list3;
	}
	public void setList3(List<RestaurantAssess> list3) {
		this.list3 = list3;
	}
	public RestaurantAssess getReacc() {
		return reacc;
	}
	public void setReacc(RestaurantAssess reacc) {
		this.reacc = reacc;
	}
	public int getRaid() {
		return raid;
	}
	public void setRaid(int raid) {
		this.raid = raid;
	}
	
}
