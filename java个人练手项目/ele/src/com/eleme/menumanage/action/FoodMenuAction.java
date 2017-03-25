package com.eleme.menumanage.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.dailingnan.pojo.AdminBean;
import com.eleme.menumanage.pojo.Erestaurant;
import com.eleme.menumanage.pojo.Etype;
import com.eleme.menumanage.pojo.FoodMenu;
import com.eleme.menumanage.pojo.StyleFood;
import com.eleme.menumanage.service.FoodMenuService;
import com.eleme.menumanage.service.IErestaurnatService;
import com.eleme.menumanage.service.IEtypeService;
import com.eleme.menumanage.service.IFoodMenuService;
import com.eleme.menumanage.service.IStyleFoodService;

public class FoodMenuAction {
	private IFoodMenuService fService;
	private FoodMenu food;
	private FoodMenu foods;
	private FoodMenu food1;
	private String imges;
	private String imgFileName;
	private File img; 
	private int fr;
	private File imgs;
	private String imgsFileName;
	private List<FoodMenu> list=new ArrayList<FoodMenu>();
	
	
	public String selectMenus(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		AdminBean ad=(AdminBean) session.getAttribute("admin");
		if(list.isEmpty()){
		list=fService.selectMenu(ad.getEid());
		}else{
			list.clear();
			list=fService.selectMenu(ad.getEid());
			}
//		for(FoodMenu f:list){
//		System.out.println(f);
//		}
		return "list";
	}
	
	
	public String updateFood(){
		String realPath="F:/javaee/ele/WebRoot/menu/elminage";
		if(img!=null){
			File saveFile=new File(new File(realPath),imgFileName);
			if(!saveFile.getParentFile().exists()){
				saveFile.getParentFile().mkdirs();
			}
			try {
				FileUtils.copyFile(img,saveFile);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(imgFileName!=null){
			food=new FoodMenu(food1.getFname(),food1.getIntroduce(),food1.getPrice(),food1.getImg(),food1.getFid());
			fService.updateFood(food);
		}else{
			food=new FoodMenu(food1.getFname(),food1.getIntroduce(),food1.getPrice(),imges,food1.getFid());
			fService.updateFood(food);
		}
		return "update";
	}
	
	
	public String insertFood(){
		String realPath="F:/javaee/ele/WebRoot/menu/elminage";
		if(imgs!=null){
			File savesFile=new File(new File(realPath),imgsFileName);
			if(!savesFile.getParentFile().exists()){
				savesFile.getParentFile().mkdirs();
			}
			try {
				FileUtils.copyFile(imgs,savesFile);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		/*
		 * eid从会话中获得
		 * admin bean
		 */
		foods=new FoodMenu(food1.getFname(),food1.getSid(),food1.getIntroduce(),food1.getPrice(),imgsFileName,1);
		//foods=new FoodMenu("水煮肉片",2,"very good",56.0f,"1.jpg",1);
		fService.insertFood(foods);
		//System.out.println(food1.getSid());
		return "insert";
	}
	public String deleteFood(){
		//System.out.println(fr);
		fService.deleteFood(fr);
		return "deleteFood";
	}
	public IFoodMenuService getfService() {
		return fService;
	}
	public void setfService(IFoodMenuService fService) {
		this.fService = fService;
	}
	
	
	public List<FoodMenu> getList() {
		return list;
	}
	public void setList(List<FoodMenu> list) {
		this.list = list;
	}
	public FoodMenu getFood1() {
		return food1;
	}
	public void setFood1(FoodMenu food1) {
		this.food1 = food1;
	}
	public int getFr() {
		return fr;
	}
	public void setFr(int fr) {
		this.fr = fr;
	}
	public String getImges() {
		return imges;
	}
	public void setImges(String imges) {
		this.imges = imges;
	}
	public String getImgFileName() {
		return imgFileName;
	}
	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}
	public File getImg() {
		return img;
	}
	public void setImg(File img) {
		this.img = img;
	}
	public File getImgs() {
		return imgs;
	}
	public void setImgs(File imgs) {
		this.imgs = imgs;
	}
	public String getImgsFileName() {
		return imgsFileName;
	}
	public void setImgsFileName(String imgsFileName) {
		this.imgsFileName = imgsFileName;
	}
	
	
}
