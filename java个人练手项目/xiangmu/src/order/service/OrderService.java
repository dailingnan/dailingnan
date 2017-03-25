package order.service;

import java.util.ArrayList;
import java.util.HashMap;

import order.dao.OrderDao;

public class OrderService {
	OrderDao orderDao = new OrderDao();
	public ArrayList<HashMap<String, Object>> find(String uid){
		ArrayList<HashMap<String, Object>> list =orderDao.findByUid(uid);
		return  list;
	}
	public ArrayList<HashMap<String, Object>> finditem(String oid){
		ArrayList<HashMap<String, Object>> list =orderDao.finditem(oid);
		return  list;
	}
	public ArrayList<HashMap<String, Object>> finditem1(String iid){
		ArrayList<HashMap<String, Object>> list =orderDao.finditem1(iid);
		return  list;
	}
	public int updatestate(String oid,String state){
		
		return orderDao.updatestate(oid, state);
	}
	public int updatestate1(String oid,String state){
		
		return orderDao.updatestate1(oid, state);
	}
	public int delete(String oid){
		return orderDao.delete(oid);
	}
	public int updateitem(String iid,String COUNT,String
			subtotal,String oid,String gid){
		return orderDao.updateitem(iid, COUNT, subtotal, oid, gid);
	}
	public ArrayList<HashMap<String, Object>> findall(){
		return orderDao.findall();
	}
	public ArrayList<HashMap<String, Object>> finditems(String oid){
		return orderDao.finditems(oid);
	}
	public HashMap<String, Object> findgoods(String gid){
		HashMap<String, Object> list = orderDao.findgoods(gid);
		return list;
	}
	public ArrayList<HashMap<String, Object>> findorder(String oid){
		return orderDao.findorder(oid);
	}
	public  HashMap<String, Object> findorderitem(String oid){
		HashMap<String, Object> list = orderDao.findorderitem(oid);
		return list;
	}
}
