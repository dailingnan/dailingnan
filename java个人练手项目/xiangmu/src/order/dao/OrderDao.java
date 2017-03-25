package order.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import order.domain.Order;
import util.DBUtils;


public class OrderDao {
	
	public Boolean addOrder(Order order){
		
		
		return true;
	}
	public ArrayList<HashMap<String, Object>> findByUid(String uid) {
		String sql = "SELECT * FROM orders WHERE uid ='"+uid+"'";
		//String sql1 = "select * from user where username='"+name+"'and password ='"+pwd+"'";
		ArrayList<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		return  list;
	}
	
	public int updatestate(String oid,String state){
		String sql = "UPDATE orders SET state='1' WHERE oid ='"+oid+"'";
		String sql1 = "UPDATE orders SET state='3' WHERE oid ='"+oid+"'";
		
		if(state.equals("0")){
			DBUtils.execUpdate(sql);
			return 1;
		}if(state.equals("2")){
			DBUtils.execUpdate(sql1);
			return 1;
		}
		
		return 0;
	}
	public int updatestate1(String oid,String state){
		String sql2 = "UPDATE orders SET state='2' WHERE oid ='"+oid+"'";
		if(state.equals("1")){
			DBUtils.execUpdate(sql2);
			return 1;
		}
		return 0;
	}
	
	public ArrayList<HashMap<String, Object>> findall(){
		String sql = "select * from orders";
		return DBUtils.execQuery(sql);
	}
	
	public ArrayList<HashMap<String, Object>> finditem(String oid){
		String sql = "SELECT * FROM orderitem WHERE oid ='"+oid+"'";
		return DBUtils.execQuery(sql);
	}
	public ArrayList<HashMap<String, Object>> finditem1(String iid){
		String sql = "SELECT * FROM orderitem WHERE iid ='"+iid+"'";
		return DBUtils.execQuery(sql);
	}
	
	public int updateitem(String iid,String COUNT,String
			subtotal,String  oid,String gid){
		String sql = "UPDATE orderitem SET COUNT='"+COUNT+"',subtotal='"+subtotal+"',oid='"+oid+"',gid='"+gid+"' WHERE iid ='"+iid+"'";
		return DBUtils.execUpdate(sql);
	}
	
	public int delete(String oid){
		String sql1 = "DELETE FROM orderitem WHERE oid ='"+oid+"'";
		String sql = "DELETE FROM orders WHERE oid ='"+oid+"'";
		
		int a =DBUtils.execUpdate(sql1);
		int b=DBUtils.execUpdate(sql);
		if(a+b==2){
			return 1;
		}
		return 0;
		
	}
	public ArrayList<HashMap<String, Object>> finditems(String oid){
		String sql = "SELECT * FROM orderitem WHERE oid ='"+oid+"'";
		return DBUtils.execQuery(sql);
	}
	public ArrayList<HashMap<String, Object>> findorder(String oid){
		String sql = "SELECT * FROM orders WHERE oid ='"+oid+"'";
		return DBUtils.execQuery(sql);
	}
	public  HashMap<String, Object> findgoods(String gid){
		String sql ="SELECT * FROM goods WHERE gid ='"+gid+"'";
		List<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		if(list.size()==0){
			return null;
		}else{
			return list.get(0);
		}
	}
	public  HashMap<String, Object> findorderitem(String oid){
		String sql ="SELECT * FROM orderitem WHERE oid ='"+oid+"'";
		List<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		if(list.size()==0){
			return null;
		}else{
			return list.get(0);
		}
	}
	
}
