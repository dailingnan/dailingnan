package dao;

import java.sql.Timestamp;
import java.util.Date;

import util.DBUtils;

public class OrdersDao {
	public  void function(String oid,String total,String uid,String address){
		String sql = "INSERT INTO orders(oid,ordertime,total,uid,address) VALUES(" + oid + ",NOW()," + total + "," + uid + ",'" +address+ "')";
		//System.out.println(sql);
		DBUtils.execUpdate(sql);
	}
	/*
	public static void main(String[] args) {
		Date date = new Date();
		Timestamp timestamp = new Timestamp(date.getTime());
		
		function("5000","0","1","aaa");
		System.out.println("22");
	}
	*/
}
