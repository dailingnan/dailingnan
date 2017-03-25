package dao;

import java.util.ArrayList;
import java.util.HashMap;
import util.DBUtils;

public class OrderItemDao {
	public ArrayList<HashMap<String,Object>> function(String[] orderitems){
		ArrayList<HashMap<String,Object>> al = new ArrayList<HashMap<String,Object>>();
		for(int i = 0; i < orderitems.length; i++){
			System.out.println(orderitems[i]);
			String sql = "SELECT t1.COUNT,t1.gid,t2.price FROM card t1,goods t2 WHERE did=" + orderitems[i] + " AND t1.gid=t2.gid";
			//System.out.println(sql);
			ArrayList<HashMap<String,Object>> al1 = DBUtils.execQuery(sql);
			al.add(al1.get(0));
		}
		return al;
	}
	
	public void function1(String oid,String[] orderitems){
		ArrayList<HashMap<String,Object>> al = function(orderitems);
		int total = 0;
		//System.out.println(al.size());
		for(int i = 0; i < al.size(); i++){
			int count = (int)al.get(i).get("count");
			float subtotal = Float.parseFloat(al.get(i).get("price").toString()) * count;
			total += subtotal;
			String gid = (String)al.get(i).get("gid");
			String sql = "INSERT INTO orderitem(COUNT,subtotal,oid,gid) VALUES("+ count +"," + subtotal +"," + oid + ",'" + gid + "')";
			//System.out.println(sql);
			DBUtils.execUpdate(sql);
			String sql1 = "UPDATE orders SET total=" + total + " WHERE oid=" + oid;
			DBUtils.execUpdate(sql1);
		}
	}
	/*
	public static void main(String[] args) {
		String[] orderitems = {"5","13"};
		String oid = "5000";
		function1(oid,orderitems);
		System.out.println("over");
	}
	*/
}
