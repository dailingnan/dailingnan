package com.dailingnan.service;

import java.util.HashMap;
import java.util.List;

import com.dailingnan.pojo.AddressBean;
import com.dailingnan.pojo.Cart;
import com.dailingnan.pojo.FoodBean;
import com.dailingnan.pojo.OrderBean;
import com.dailingnan.pojo.OrderItemBean;

public interface ICratService {
	List<Cart> findCart();
	void addCart(Cart cart);
	FoodBean findFood(int fid);
	List<Cart> findcart(int uid);
	void insertOrder(OrderBean od,String[] shangping);
	void insertOrderItem(String[] shangping,String oid);
	Cart findCartByid(String gcid);
	void deleteCart(String gcid);
	void updateadd(String gcid);
	void updatedec(String gcid);
	List<OrderItemBean>findorderitem(String oid);
	OrderBean findorderByid(String oid);
	List<AddressBean> findaddress(String uid);
	void updateaddress(OrderBean od);
	int countyeshu(List<Cart> carts);
	String randoid();
	List<Cart> eachdata(int each,List<Cart> carts);
	Cart findfidByuid(Cart cart);
	void updatecountByfid(Cart cart);
	List<OrderBean> findorderBydate(HashMap<String, Object> map);
	List<OrderBean> findorderBydt(String data);
}
