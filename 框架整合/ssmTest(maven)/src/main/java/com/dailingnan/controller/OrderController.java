package com.dailingnan.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dailingnan.bean.OrderBean;
import com.dailingnan.service.IOrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Resource
	private IOrderService orderService;
	
	@RequestMapping("findOrder")
	public String findOrder(){
		System.out.println("order");
		List<OrderBean> list = orderService.findOrder();
		System.out.println(list.get(0).getOid());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
		String riqi = format.format(list.get(0).getOrdertime());
		
		List<OrderBean> list1 = orderService.findOrders();
		System.out.println(list1.get(0).getUser().getName());
		return "";
	}
}
