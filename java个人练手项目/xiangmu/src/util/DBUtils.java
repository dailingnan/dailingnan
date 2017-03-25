package util;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
//数据库查询工具
public class DBUtils {
	//private static 	String url = "jdbc:mysql://localhost/test";
	//private static 	String user = "root";
	//private static 	String pwd = "123456";
	//private static 	String driver = "com.mysql.jdbc.Driver";
	private static 	String url;
	private static 	String user;
	private static 	String pwd;
	private static 	String driver;
	//初始化参数   通过初始化方法
		public static void init(String initurl,String inituser,String initpwd,String initdriver){
			url = initurl;
			user = inituser;
			pwd = initpwd;
			driver = initdriver;
			System.out.println(url+"|"+""+user+"|"+pwd+"|"+driver);
			try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
//	//静态块初始化
//	static{
//		try {
//			Class.forName(driver);
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//}
//	//执行更新操作
	public static int execUpdate(String sql){
		java.sql.Connection conn = null;
		java.sql.Statement stat = null;
		int rs = 1;
		
		try {
			//创建连接
			conn = DriverManager.getConnection(url, user, pwd);
			//创建语句对象
			stat = conn.createStatement();
			//执行SQL语句
			 rs = stat.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	//执行查询操作
	public static ArrayList<HashMap<String, Object>> execQuery(String sql){
		java.sql.Connection conn = null;
		java.sql.Statement stat = null;
		ResultSet rs = null;
		
		try {
			System.out.println(url+"|"+user+"|"+pwd);
			conn = DriverManager.getConnection(url, user, pwd);
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
			
			ResultSetMetaData rsmd =rs.getMetaData();//获得元数据  方便之后对索引操作(列名及列数)
			while(rs.next()){
				HashMap<String, Object> row = new HashMap<String, Object>();
				for(int i=1;i<=rsmd.getColumnCount();i++){
						row.put(rsmd.getColumnName(i), rs.getObject(i));
				}
				list.add(row);
				
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				//保证流都关闭
				rs.close();
				stat.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String sql = "select * from user where name='戴岭南'and pwd ='123456'";
		ArrayList<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		System.out.println(list);
		int a = DBUtils.execUpdate("update jiben1 set name='郑六',sex='n',age=25 where id =5");
		
		
		//int b = DBUtils.execUpdate("insert jiben1 values(7,'戴王','n',21)");
		
		//System.out.println(b);
		//System.out.println(list.toString().replaceAll("\\},", replacement));
	}
	public void beginTransaction(){
		java.sql.Connection conn = null;
		java.sql.Statement stat = null;
		int rs = 1;
		
		try {
			//创建连接
			conn = DriverManager.getConnection(url, user, pwd);
			//创建语句对象
			stat = conn.createStatement();
			//执行SQL语句
			 conn.setAutoCommit(false);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
