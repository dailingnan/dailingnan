package com.dailingnan.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dailingnan.entity.AdminBean;
import com.dailingnan.entity.CinemaBean;
import com.dailingnan.entity.MoveBean;
import com.dailingnan.entity.OrderBean;
import com.dailingnan.entity.User;
import com.dailingnan.service.OrderService;

@Controller
@RequestMapping("order")
public class OrderController {
	@Resource
	private OrderService orderService;
	
	@ResponseBody
	@RequestMapping(value="findOrder",produces = "application/json;charset=UTF-8" )
	public Map<String, Object> findOrder(HttpServletRequest request,int rows,int page){
		//从会话中获取用户信息
		HttpSession session =  request.getSession();
		//
		CinemaBean cinemaBean = new CinemaBean();
		cinemaBean.setCinemaid(1);
		AdminBean admin = new AdminBean();
		admin.setCinemaBean(cinemaBean);
		List<OrderBean> list = orderService.findOrderByCin(admin.getCinemaBean(),rows, page);
		session.setAttribute("OrderList", list);
		//查找数量
		Long count = orderService.findMoveCount(admin.getCinemaBean());
		//以json格式的形式返回数据到前台easyui控件
		Map<String,Object> result = new HashMap<String, Object>();
		result.put("total", count);
		result.put("rows", list);
		return result;
	}
	
	@RequestMapping("findOrders")
	public String findOrderAndOrderItem(HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Map<String,Object> map = orderService.findOrderAndOrderItem(user);
		session.setAttribute("orderMap", map);
		return "/jsp/order.jsp";
	}
	
	
	@RequestMapping("/orderExcel")  
    public String exportExcel(HttpServletResponse response,HttpServletRequest request)  {
		System.out.println("excel");
		HttpSession session  = request.getSession();
		List<OrderBean> orderList = (List<OrderBean>) session.getAttribute("OrderList");
        response.setContentType("application/binary;charset=ISO8859_1");  
        try  
        {  System.out.println("excel");
            ServletOutputStream outputStream = response.getOutputStream();  
            String fileName = new String(("导出订单excel例子").getBytes(), "ISO8859_1");  
            response.setHeader("Content-disposition", "attachment; filename=" + fileName + ".xlsx");// 组装附件名称和格式  
              
            String[] titles = { "下单者", "电影名称", "上映日期", "价格", "下单状态", "取票手机号码" };  
            orderService.exportExcel(orderList, titles, outputStream); 
        }  
        catch (IOException e)  
        {  
            e.printStackTrace();  
        }  
        return null;  
    } 
}
