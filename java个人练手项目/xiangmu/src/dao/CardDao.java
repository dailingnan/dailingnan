package dao;



import java.util.ArrayList;
import java.util.HashMap;
import util.DBUtils;

public class CardDao {
	private static ArrayList<HashMap<String,Object>> al = new ArrayList<HashMap<String,Object>>();
	public ArrayList<HashMap<String,Object>> fonction(String uid){
		String sql = "SELECT did,COUNT,t2.* FROM card t1,goods t2 WHERE t1.`gid`=t2.`gid` and t1.uid="+uid;
		al = DBUtils.execQuery(sql);
		return al;
	}
	public void fonction1(String[] orderitems){
		for(int i=0;i<orderitems.length;i++){
			String sql = "delete from card where did ="+orderitems[i];
			DBUtils.execUpdate(sql);
		}
		
	}
	
	/*
	public static void main(String[] args){
		System.out.println(fonction());
	}
	*/
}
