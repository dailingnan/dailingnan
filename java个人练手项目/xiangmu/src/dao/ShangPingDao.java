package dao;

import java.util.ArrayList;
import java.util.HashMap;

import util.DBUtils;

public class ShangPingDao {
	public  ArrayList<HashMap<String,Object>> function(String gid){
		String sql = "select * from goods where gid='" + gid + "'";
		return DBUtils.execQuery(sql);
	}
	public void function1(String gid,String count,String uid){
		String sql = "INSERT INTO card(gid,COUNT,uid) VALUES('"+gid+"',"+count+"," +uid+ ")";
		DBUtils.execUpdate(sql);
	}
	public  ArrayList<HashMap<String,Object>> function3(String gid){
		String sql = "select * from card where gid='" + gid + "'";
		return DBUtils.execQuery(sql);
	}
	public void function4(String gid,String count){
		String sql = "update card set count ="+count+" where gid ='"+gid+"'";
		DBUtils.execUpdate(sql);
	}

	/*
	public static void main(String[] args) {
		String gid = "a0001";
		String count = "4";
		function1(gid,count);
		System.out.println("-------------------------over");
	}
	*/
}
