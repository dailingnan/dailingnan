package com.dailingnan.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import com.dailingnan.dao.ICartDao;
import com.dailingnan.pojo.AddressBean;
import com.dailingnan.pojo.Cart;
import com.dailingnan.pojo.FoodBean;
import com.dailingnan.pojo.OrderBean;
import com.dailingnan.pojo.OrderItemBean;

public class CartService implements ICratService {
	private ICartDao dao;
	private int size = 2;
	public ICartDao getDao() {
		return dao;
	}
	public void setDao(ICartDao dao) {
		this.dao = dao;
	}
	public List<Cart> findCart() {
		// TODO Auto-generated method stub
		return dao.findCart();
	}
	@Override
	public void addCart(Cart cart) {
		// TODO Auto-generated method stub
		int fid =Integer.parseInt(cart.getFid()) ;
		System.out.println(fid);
		float total =  dao.findFood(fid).getPrice();//单价
		//判断购物车中是否已有该物品，有则合并
		if(findfidByuid(cart)==null){
			cart.setTotal(total);
			dao.addCart(cart);
		}else{
			cart.setNum(findfidByuid(cart).getNum()+1);
			cart.setTotal(dao.findFood(fid).getPrice()*(cart.getNum()));
			updatecountByfid(cart);
		}
		
		
	}
	@Override
	public FoodBean findFood(int fid) {
		// TODO Auto-generated method stub
		return dao.findFood(fid);
	}
	@Override
	public List<Cart> findcart(int uid) {
		// TODO Auto-generated method stub
		return dao.findcart(uid);
	}
	@Override
	public void insertOrder(OrderBean od,String[] shangping) {
		float total = 0;
		for(int i =0;i<shangping.length;i++){
			Cart cart = dao.findCartByid(shangping[i]);
			total+=cart.getTotal();
		}
		// TODO Auto-generated method stub
		od.setOrdertotal(total);
		System.out.println();
		dao.insertOrder(od);
	}
	@Override
	public void insertOrderItem(String[] shangping,String oid) {
		// TODO Auto-generated method stub
		for(int i =0;i<shangping.length;i++){
			Cart cart = dao.findCartByid(shangping[i]);
			OrderItemBean oiteBean=new OrderItemBean(cart.getNum(), cart.getTotal(), oid, cart.getFid());
			dao.insertOrderItem(oiteBean);//插入订单子项
			dao.deleteCart(shangping[i]);//删除购物车信息
		}
	}
	@Override
	public Cart findCartByid(String gcid) {
		// TODO Auto-generated method stub
		return dao.findCartByid(gcid);
	}
	@Override
	public void deleteCart(String gcid) {
		// TODO Auto-generated method stub
		dao.deleteCart(gcid);
	}
	@Override
	public void updateadd(String gcid) {
		// TODO Auto-generated method stub
		dao.updateadd(gcid);
	}
	@Override
	public void updatedec(String gcid) {
		// TODO Auto-generated method stub
		dao.updatedec(gcid);
	}
	@Override
	public List<OrderItemBean> findorderitem(String oid) {
		// TODO Auto-generated method stub
		return dao.findorderitem(oid);
	}
	@Override
	public OrderBean findorderByid(String oid) {
		// TODO Auto-generated method stub
		return dao.findorderByid(oid);
	}
	@Override
	public List<AddressBean> findaddress(String uid) {
		// TODO Auto-generated method stub
		return dao.findaddress(uid);
	}
	@Override
	public void updateaddress(OrderBean od) {
		// TODO Auto-generated method stub
		dao.updateaddress(od);
	}
	@Override
	public int countyeshu(List<Cart> carts) {
		// TODO Auto-generated method stub
		size = 2;
		int daxiao;
		if(carts.size()%size==0){
			daxiao = carts.size()/size;
		}else{
			daxiao  =  carts.size()/size+1;
		}
		
		return daxiao;
	}
	@Override
	public String randoid() {
		// TODO Auto-generated method stub
		String oid = "";
		Random r = new Random();
		for(int i = 0; i < 9; i++){
			int x = r.nextInt(9);
			oid += x;
		}
		return oid;
	}
	@Override
	public List<Cart> eachdata(int each, List<Cart> carts) {
		// TODO Auto-generated method stub
		int fanwei;//实际页面大小
		
		List<Cart> carts1 = new ArrayList<Cart>();
		if(size*(each)>carts.size()){
			fanwei = carts.size();
		}else{
			fanwei = size*(each);
		}
		for(int i = size*(each-1);i<fanwei;i++){
			carts1.add(carts.get(i));
		}
		return carts1;
	}
	@Override
	public Cart findfidByuid(Cart cart) {
		// TODO Auto-generated method stub
		return dao.findfidByuid(cart);
	}
	@Override
	public void updatecountByfid(Cart cart) {
		// TODO Auto-generated method stub
		dao.updatecountByfid(cart);
	}
	@Override
	public List<OrderBean> findorderBydate(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		// HashMap<String, Object> map = new HashMap<String, Object>(); 
//		  SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
		  
//          Date date = format.parse(begin);//有异常要捕获
//          Date date1 = format.parse(end);//有异常要捕获
//          format = new SimpleDateFormat("yyyy-MM-dd");
//          String newD = format.format(date);
//          String newc = format.format(date1);
//          map.put("startTime",newD);  
//          map.put("endTime",newc);
//          System.out.println(newD);
		 // System.out.println(service.getRegistMsgByCondition(map).size());  
		//List<OrderBean> list3 =cratService.findorderBydate(map);
		return dao.findorderBydate(map);
	}
	@Override
	public List<OrderBean> findorderBydt(String data) {
		// TODO Auto-generated method stub
		 SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
         Date date = null;
		try {
			date = format.parse(data);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//有异常要捕获
         format = new SimpleDateFormat("yyyy-MM-dd");
         String newD = format.format(date);
		 String newc = newD+"%";
		return dao.findorderBydt(newc);
	}
	
	
	



}
