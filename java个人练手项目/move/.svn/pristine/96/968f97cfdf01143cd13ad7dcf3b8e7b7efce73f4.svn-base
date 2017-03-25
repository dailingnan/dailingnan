package com.dailingnan.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.CinemaDiscuss;
import com.dailingnan.entity.Discuss;
import com.dailingnan.entity.MoveArrangeBean;
import com.dailingnan.entity.MoveBean;
import com.dailingnan.entity.OrderBean;
import com.dailingnan.entity.OrderItemBean;
import com.dailingnan.entity.User;
import com.dailingnan.service.CinemaService;
import com.dailingnan.service.MoveService;
import com.dailingnan.service.UserService;

import net.sf.json.JSONArray;
@Controller
public class CinemaController {
	@Resource
	private CinemaService cinemaService;
	
	@Resource
	private MoveService moveService;
	
	@Resource
	private UserService userService;
	/*
	 * 选座
	 */
	@RequestMapping("cart")
	public String findMoveArrange(@RequestParam int marrangeid,HttpServletRequest request ){
		List<OrderItemBean> list = cinemaService.findSeat(marrangeid);
		MoveArrangeBean moveArrangeBean =cinemaService.findMoveById(marrangeid);
		request.setAttribute("moveArrangeBean", moveArrangeBean);
		request.setAttribute("orderitems", list);
		request.setAttribute("marrangeid", marrangeid);
		return "/jsp/cart.jsp";
	}
	
	/*
	 * ajax读取已被选择的座位
	 */
	@RequestMapping("seat")
	public void findSeat(HttpServletResponse response,@RequestParam int marrangeid) throws IOException{
		List<OrderItemBean> list = cinemaService.findSeat(marrangeid);
		List<Integer> seat =new ArrayList<Integer>();
		for(int i=0;i<list.size();i++){
			seat.add(list.get(i).getSeat());
		}
		
		// 将座位信息转换成json数组响应给页面
		JSONArray jsonArray = JSONArray.fromObject(seat);
		response.setCharacterEncoding("utf-8");
		response.getWriter().println(jsonArray);//返回信息
		response.getWriter().close();
	}
	
	//生成订单
	@RequestMapping("insertOrder")
	public String insert(@RequestParam int[] cartitem,@RequestParam int marrangeid,HttpServletRequest request,String telephoto){
		HttpSession session = request.getSession();
		//从session中获取用户
		User user = new User();
		user.setUid(1);
		//根据marrangeid查询marrange对象
		MoveArrangeBean moveArrangeBean =cinemaService.findMoveById(marrangeid);
		//插入订单
		OrderBean orderBean = new OrderBean(user,moveArrangeBean,moveArrangeBean.getMove().getPrice()*cartitem.length,0,telephoto);
		OrderBean orderBean2 =cinemaService.insertOrder(orderBean);
		//插入订单子项
		for (int i : cartitem) {
			OrderItemBean orderItemBean = new OrderItemBean();
			orderItemBean.setOrder(orderBean2);
			orderItemBean.setSeat(i);
			cinemaService.insertOrderItem(orderItemBean);
		}
		
		
		//查询该用户对应该场次的订票情况+根据该订单
		List<OrderItemBean> orderItems = cinemaService.findOrderItemByUid(orderBean2, marrangeid);
		System.out.println(orderItems.size());
		request.setAttribute("moveArrangeBean",moveArrangeBean);
		request.setAttribute("orderItems",orderItems);
		return "/jsp/besure.jsp";
		
	}
	
	/*
	 * 确认支付  改变订单改变订单男状态
	 */
	@RequestMapping("updateState")
	public String updateOrderState(@RequestParam int oid){
		OrderBean orderBean =cinemaService.findOrderByoid(oid);
		orderBean.setState(1);
		cinemaService.updateOrderStateByOid(orderBean);
		return "/test.jsp";
	}
	
	/*
	 * 查找电影院信息
	 */
	
	@RequestMapping("findCinema")
	public String findCinema(int CineamId,HttpServletRequest request){
		HttpSession session = request.getSession();
		//查询电影院相关信息
		CinemaBean cinemaBean = cinemaService.findCinemaById(CineamId);
		//查询电影院电影信息
		List<MoveBean> moveList = cinemaService.findMoveByCin(cinemaBean);
		//查询电影院排片信息
		String moveid = request.getParameter("moveId");
		int moveId=2;
		if(moveid!=null){
			moveId = Integer.parseInt(moveid);
		}
		//查询电影信息
		MoveBean moveBean = moveService.findoneMoveById(moveId);
		List<MoveArrangeBean> arrangeBeans =  cinemaService.findMoveByCinema(CineamId, moveId);
		//时间类型转换
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdf1=new SimpleDateFormat("HH:mm");
		Map<String,Object> map = new HashMap<String,Object>();
		List<String> list = new ArrayList<String>();
		for (MoveArrangeBean moveArrangeBean : arrangeBeans) {
			String scrTime1=sdf1.format(moveArrangeBean.getOnscreendate());
			list.add(scrTime1);
		}
		
		map.put("cinemaBean", cinemaBean);
		map.put("moveList", moveList);
		map.put("timelist", list);
		map.put("arrangeBeans", arrangeBeans);
		map.put("moveBean", moveBean);
		
		session.setAttribute("map", map);
		return "/jsp/cinema.jsp";
	}
	
	@RequestMapping("findCinemaDiscuss")
	public String findCinemaDiscuss(int cinemaid,HttpServletRequest request){
		CinemaBean cinemaBean = cinemaService.findCinemaById(cinemaid);
		List<CinemaDiscuss> cDislist =cinemaService.findCinemaDiscussByCid(cinemaid);
		
		request.setAttribute("cinemaBean", cinemaBean);
		request.setAttribute("cDislist", cDislist);
		return "/jsp/cinemamark.jsp";
	}
	
	@RequestMapping("insertCinemaDiscuss")
	public String insertDiscuss(@RequestParam int cinemaid,HttpServletRequest request,@RequestParam String liuyan){
		//从会话中取到user对象
		System.out.println("ssss");
		User user = userService.finduserById(1);
		//先根据moveid找出对应电影
		CinemaDiscuss cinemaDiscuss = new CinemaDiscuss();
		CinemaBean cinemaBean = cinemaService.findCinemaById(cinemaid);
		cinemaDiscuss.setDiscuss(liuyan);
		cinemaDiscuss.setUser(user);
		cinemaDiscuss.setCinemaBean(cinemaBean);
		
		cinemaService.insertCinemaDiscuss(cinemaDiscuss);
		request.setAttribute("cinemaid", cinemaid);
		return "/findCinemaDiscuss.html";
	}
}
