package user.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import util.DBUtils;


public class UserDao {
	String name ="戴岭南";
	String pwd = "123456";
	/*
	 * 查询用户
	 */
	public  HashMap<String, Object> find(String name,String pwd){
		System.out.println(name+"|"+pwd);
		String sql = "select * from user where username='"+name+"'and pwd ='"+pwd+"'";
		List<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		System.out.println(list);
		if(list.size()==0){
			return null;
		}else{
			return list.get(0);
		}
	}
	/*
	 * 查询管理员
	 */
	public  HashMap<String, Object> findadmin(String name,String pwd){
		System.out.println(name+"|"+pwd);
		String sql = "select * from admin where username='"+name+"'and password ='"+pwd+"'";
		List<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		System.out.println(list);
		if(list.size()==0){
			return null;
		}else{
			return list.get(0);
		}
	}
	/*
	 * 查询管理员
	 */
	public  List<HashMap<String, Object>> findadmin1(String name,String pwd){
		System.out.println(name+"|"+pwd);
		String sql = "select * from admin where username='"+name+"'and password ='"+pwd+"'";
		List<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		System.out.println(list);
		return list;
	}
	
	/*
	 * 管理员修改资料
	 */
	public int adminUpdate(String username,String password){
			String sql1 = "UPDATE admin SET password='"+password+"' WHERE username='"+username+"'";
			return DBUtils.execUpdate(sql1);

	}
	/*
	 * 用户修改密码
	 */
	public int userUpdatePassword(String username,String password){
			String sql1 = "UPDATE USER SET pwd='"+password+"' WHERE username='"+username+"'";
			return DBUtils.execUpdate(sql1);

	}
	/*
	 * 根据账号查询用户
	 */
	public  HashMap<String, Object> finduser1(String name){
		System.out.println(name+"|"+pwd);
		String sql = "select * from user where username='"+name+"'";
		List<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		System.out.println(list);
		if(list.size()==0){
			return null;
		}else{
			return list.get(0);
		}
	}
	/*
	 * 查询所有用户
	 */
	public  ArrayList<HashMap<String, Object>> findalluser(){
		
		String sql = "select * from user";
		ArrayList<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		return list;
		
	}
	/*
	 * 查询所有管理员
	 */
	public  ArrayList<HashMap<String, Object>> findalladmin(){
		
		String sql = "select * from admin";
		ArrayList<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		return list;
		
	}
	/*
	 * 注册用户
	 */
	
	public Boolean adduser(String name,String pwd){
		String sql = "select * from user where username='"+name+"'";
		List<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		if(list.size()==0){
			String sql1 = "INSERT INTO USER(username,pwd)VALUE('"+name+"','"+pwd+"')";
			DBUtils.execUpdate(sql1);
			System.out.println("注册！！！！");
			return true;
		}else{
			return false;
		}
	}
	/*
	 * 注册管理员
	 */
	
	public Boolean addadmin(String name,String pwd){
		String sql = "select * from admin where username='"+name+"'";
		List<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		if(list.size()==0){
			String sql1 = "INSERT INTO admin(username,password,jibie)VALUE('"+name+"','"+pwd+"',2)";
			DBUtils.execUpdate(sql1);
			System.out.println("注册！！！！");
			return true;
		}else{
			return false;
		}
	}
	/*
	 * 删除管理员
	 */
	public int delete(String aid){
		String sql1 = "DELETE FROM admin WHERE aid ='"+aid+"'";
	
		
		int a =DBUtils.execUpdate(sql1);
		
		if(a==1){
			return 1;
		}
		return 0;
		
	}
	/*
	 * 更新用户信息
	 */
	public int addusermessage(String number,String name,String address,String uid){
			String sql1 = "UPDATE USER SET mobile_number='"+number+"',NAME='"+name+"',address='"+address+"' WHERE uid='"+uid+"'";
			return DBUtils.execUpdate(sql1);

	}
	public int addusermessage1(String number,String name,String address,String uid,String pwd){
		String sql1 = "UPDATE USER SET mobile_number='"+number+"',NAME='"+name+"',address='"+address+"',pwd='"+pwd+"'WHERE uid='"+uid+"'";
		return DBUtils.execUpdate(sql1);
			
}
}
