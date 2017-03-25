package com.eleme.menumanage.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.eleme.menumanage.pojo.Erestaurant;
import com.eleme.menumanage.service.IErestaurnatService;

public class ErestauntAction {
	private List<Erestaurant> list=new ArrayList<Erestaurant>();
	private IErestaurnatService idService;
	private String address;
	private String imgFileName;
	private File img; 
	private int eid;
	private String imgs;
	public String selectRy(){
		list=idService.selectRest();
		return "selectRy";
	}
	
	public String updateRy(){
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
			System.out.println(imgFileName);
			Erestaurant er=new Erestaurant(address,imgFileName,eid);
			idService.updateRest(er);
		}else{
			Erestaurant er=new Erestaurant(address,imgs,eid);
			idService.updateRest(er);
		}
		return "updateRy";
	}

	public List<Erestaurant> getList() {
		return list;
	}

	public void setList(List<Erestaurant> list) {
		this.list = list;
	}

	public IErestaurnatService getIdService() {
		return idService;
	}

	public void setIdService(IErestaurnatService idService) {
		this.idService = idService;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getImgs() {
		return imgs;
	}

	public void setImgs(String imgs) {
		this.imgs = imgs;
	}
	
}
