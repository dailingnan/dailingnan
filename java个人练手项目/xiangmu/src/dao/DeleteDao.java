package dao;


import util.DBUtils;

public class DeleteDao {
	public void function(int did){
		String sql = "delete from card where did=" + did;
		DBUtils.execUpdate(sql);
	}
	/*
	public static void main(String[] args){
		function(8);
		System.out.println("over");
	}
	*/
}
