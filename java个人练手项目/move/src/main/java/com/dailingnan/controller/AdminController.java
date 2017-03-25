package com.dailingnan.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dailingnan.entity.AdminBean;
import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.MoveArrangeBean;
import com.dailingnan.entity.MoveBean;
import com.dailingnan.entity.User;
import com.dailingnan.service.AdminService;
import com.dailingnan.service.CinemaService;
import com.dailingnan.service.MoveService;

@Controller
@RequestMapping("/houtai")
public class AdminController {
	@Resource
	private AdminService adminService;
	
	@Resource
	private MoveService moveService;
	
	@Resource
	private CinemaService cinemaService;
	/*
	 * 分页查询电影院信息
	 */
	@ResponseBody
	@RequestMapping(value="findMove",produces = "application/json;charset=UTF-8" )
	public  Map<String, Object> getUserInfo(HttpServletRequest request,int rows,int page){
		//rows每页的记录数  page当前页数
		
		//从会话中获取用户信息
		//
		CinemaBean cinemaBean = new CinemaBean();
		cinemaBean.setCinemaid(1);
		AdminBean admin = new AdminBean();
		admin.setCinemaBean(cinemaBean);
		//根据对应的cinemaid查找该电影院的信息
		List<MoveBean> list =adminService.findMoveByCina(admin.getCinemaBean(),rows,page);
		//查找数量
		Long count = adminService.findMoveCount(admin.getCinemaBean());
		//以json格式的形式返回数据到前台easyui控件
		Map<String,Object> result = new HashMap<String, Object>();
		result.put("total", count);
		result.put("rows", list);
		return result;
	}
	/*
	 * 更新电影跳转
	 */
	@RequestMapping("updateMove")
	public String updateMove(int moveid,HttpServletRequest request){
		System.out.println(moveid+"s");
		MoveBean moveBeans = moveService.findoneMoveById(moveid);
		
		request.setAttribute("moveBeans", moveBeans);
		return "/houtai/tab/moveUpdate.jsp";
	}
	
	/*
	 * 更新电影信息
	 */
	@RequestMapping("updateMoveMessage")
	public String  updateMoveMessage(String name,String director,String actor,String screentime,HttpServletRequest request,
			String language,float price,String title,String introduce,String classes,String image1,int moveid,int time
			,@RequestParam("image") MultipartFile image) throws ParseException{
		 //转换时间格式
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		 Date currentTime_2 = formatter.parse(screentime);
		//获得文件名
		 String image2 =  image.getOriginalFilename();
		//文件要上传的地方
		 String uploadUrl = request.getSession().getServletContext().getRealPath("/")+"img/";
		 System.out.println(image2+"文件名");
		 //根据moveid查出对应的move对象
		 MoveBean moveBeans = moveService.findoneMoveById(moveid);
		 //设置要修改的属性
		 moveBeans.setName(name);
		 moveBeans.setActor(actor);
		 moveBeans.setDirector(director);
		 moveBeans.setClasses(classes);
		 moveBeans.setPrice(price);
		 moveBeans.setLanguage(language);
		 moveBeans.setTime(time);//时长
		 moveBeans.setScreentime(currentTime_2);
		 if(image2==""||image==null){
			 moveBeans.setImage(image1);
		 }else{
			 moveBeans.setImage(image2);
		 }
		 
		//上传选择的图片文件
		//如果文件夹不存在则创建	
			File dir  = new File(uploadUrl);
			if(!dir.exists()){
				dir.mkdir();
			}
			System.out.println(uploadUrl);
			System.out.println("文件上传到："+uploadUrl+image2);
			File targetFile  = new File(uploadUrl+image2);
			if(!targetFile.exists()){
				try {
					targetFile.createNewFile();//文件创建
					image.transferTo(targetFile);//文件移动
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		 adminService.updateMoveById(moveBeans);
		return "/houtai/tab/moveMessage.jsp";
	}
	/*
	 * 删除电影
	 */
	@RequestMapping("deleteMove")
	public String deleteMove(int moveid){
		MoveBean moveBeans = moveService.findoneMoveById(moveid);
		//删除电影
		adminService.deleteMoveById(moveBeans);
		return "/houtai/tab/moveMessage.jsp";
	}
	
	/*
	 * 增加电影
	 */
	@RequestMapping("addMove")
	public String addMove(String name,String director,String actor,String screentime,HttpServletRequest request,
			String language,float price,String title,String introduce,String classes,int time
			,@RequestParam("image") MultipartFile image) throws ParseException{
		//从会话中获取用户信息
			//
		CinemaBean cinemaBean = new CinemaBean();
		cinemaBean.setCinemaid(1);
		AdminBean admin = new AdminBean();
		admin.setCinemaBean(cinemaBean);
		//将时间格式转化
		
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
        Date date = null;
		try {
			date = format.parse(screentime);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//有异常要捕获
         format = new SimpleDateFormat("yyyy-MM-dd");
         String newD = format.format(date);
         Date screentime1 = format.parse(newD);;
		//获得文件名
		 String image2 =  image.getOriginalFilename();
		//文件要上传的地方
		String uploadUrl = request.getSession().getServletContext().getRealPath("/")+"img/";
		MoveBean moveBean = new MoveBean(name, classes, director, actor, time, language, price, screentime1, introduce, image2, title, cinemaBean);  
		//如果文件夹不存在则创建	
		File dir  = new File(uploadUrl);
		if(!dir.exists()){
			dir.mkdir();
		}
		System.out.println(uploadUrl);
		System.out.println("文件上传到："+uploadUrl+image2);
		File targetFile  = new File(uploadUrl+image2);
		if(!targetFile.exists()){
			try {
				targetFile.createNewFile();//文件创建
				image.transferTo(targetFile);//文件移动
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		adminService.addMove(moveBean);
		return "/houtai/tab/moveMessage.jsp";
	}
	
	/*
	 * 分页查询电影排片
	 */
	@ResponseBody
	@RequestMapping(value="findMoveArrange",produces = "application/json;charset=UTF-8" )
	public  Map<String, Object> findMoveArrange(HttpServletRequest request,int rows,int page){
		//rows每页的记录数  page当前页数
		//从会话中获取用户信息
		//
		CinemaBean cinemaBean = new CinemaBean();
		cinemaBean.setCinemaid(1);
		AdminBean admin = new AdminBean();
		admin.setCinemaBean(cinemaBean);
		//根据对应的cinemaid查找该电影院的信息
		List<MoveArrangeBean> list =adminService.findMoveArrangeByCinId(admin.getCinemaBean(),rows,page);
		//查找数量
		Long count = adminService.findMoveArrangeCount(admin.getCinemaBean());
		//以json格式的形式返回数据到前台easyui控件
		Map<String,Object> result = new HashMap<String, Object>();
		result.put("total", count);
		result.put("rows", list);
		return result;
	}
	
	//电影排片更新跳转
	@RequestMapping("moveArrange")	
	public String moveArrange(HttpServletRequest request,int marrangeid){
		//查出所有的电影信息
		List<MoveBean> moveBeans = moveService.findmoves();
		//根据id查询对应的电影排片信息
		MoveArrangeBean moveArrangeBeans =cinemaService.findMoveById(marrangeid);
		request.setAttribute("moveArrangeBeans", moveArrangeBeans);
		request.setAttribute("moveBeans", moveBeans);
		return "/houtai/tab/moveArrangeUpdate.jsp";
	}
	
	/*
	 * 更新电影排片
	 */
	@RequestMapping("updateMoveArrange")
	public String updateMoveArrangeUpdate(String name,int screenhall,String edition,String onscreendate,int marrangeid,int moveid) throws ParseException{
		//根据id查出需要修改的电影
		MoveArrangeBean moveArrangeBeans =cinemaService.findMoveById(marrangeid);
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy hh:mm");
		Date date = format.parse(onscreendate);
		format = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		String date1 = format.format(date);
		Date date2 = format.parse(date1);
		//获取需要修改的电影排片信息
		MoveBean moveBean =moveService.findoneMoveById(moveid);
		moveArrangeBeans.setMove(moveBean);
		moveArrangeBeans.setEdition(edition);
		moveArrangeBeans.setOnscreendate(date2);
		moveArrangeBeans.setScreenhall(screenhall);
		//更新电影排片信息
		adminService.updateMoveArrangeById(moveArrangeBeans);
		return "/houtai/tab/moveArrange.jsp";
	}
	
	//删除电影排片
	@RequestMapping("deleteMoveArrange")
	public String deleteMoveArrange(int marrangeid){
		MoveArrangeBean moveArrangeBeans =cinemaService.findMoveById(marrangeid);
		adminService.deleteMoveArrangeById(moveArrangeBeans);
		return "/houtai/tab/moveArrange.jsp";
	}
	
	/*
	 * 增加电影排片跳转
	 */
	@RequestMapping("addMoveArrange")
	public String addMoveArrange(HttpServletRequest request){
		//查出所有的电影信息
		//从会话中获取用户信息
		//
		CinemaBean cinemaBean = new CinemaBean();
		cinemaBean.setCinemaid(1);
		AdminBean admin = new AdminBean();
		admin.setCinemaBean(cinemaBean);
		List<MoveBean> moveBeans = moveService.findMoveByNameAndCin(admin.getCinemaBean().getCinemaid());
		request.setAttribute("moveBeans", moveBeans);
		return "/houtai/tab/moveArrangeAdd.jsp";
	}
	
	/*
	 * 增加电影
	 */
	@RequestMapping("addMoveArranges")
	public String addMoveArranges(String name,int screenhall,String edition,String onscreendate) throws ParseException{
				//从会话中获取用户信息
						//
				CinemaBean cinemaBean = new CinemaBean();
				cinemaBean.setCinemaid(1);
				AdminBean admin = new AdminBean();
				admin.setCinemaBean(cinemaBean);
				
				MoveArrangeBean moveArrangeBeans =new MoveArrangeBean();
				SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy hh:mm");
				Date date = format.parse(onscreendate);
				format = new SimpleDateFormat("yyyy-MM-dd hh:mm");
				String date1 = format.format(date);
				Date date2 = format.parse(date1);
				//获取需要修改的电影排片信息
				MoveBean moveBean =moveService.findMoveByNameAndCinid(admin.getCinemaBean().getCinemaid(), name);
				moveArrangeBeans.setCinema(cinemaBean);
				moveArrangeBeans.setMove(moveBean);
				moveArrangeBeans.setEdition(edition);
				moveArrangeBeans.setOnscreendate(date2);
				moveArrangeBeans.setScreenhall(screenhall);
				//更新电影排片信息
				adminService.addMoveArrange(moveArrangeBeans);;
				return "/houtai/tab/moveArrange.jsp";
	}
	
	@RequestMapping("adminLogin")
	public String adminLogin(HttpServletRequest request){
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		if(adminService.findAdminByNameandPwd(username, password)==null){
			request.setAttribute("loginerror","用户名或密码错误");
			return "/houtai/login.jsp";
		}
		return "/houtai/main.jsp";
	}
	
}
