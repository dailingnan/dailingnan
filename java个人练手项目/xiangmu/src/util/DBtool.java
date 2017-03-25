package util;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSetMetaData;
import com.mysql.jdbc.Statement;

public class DBtool {
	/*
	 * 执行增删改的SQL语句
	 * 
	 */
	private static String driver/*="com.mysql.jdbc.Driver"*/;
	private static String sr/*="jdbc:mysql://localhost:3306/shop?user=root&password=liteng&useUnicode=true&characterEncoding=utf-8"*/;
	
	/*static{
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
	}*/
	
	
	public static void init(String drive,String s){
		
		driver=drive;
		sr=s;
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		
	}
	
	
	public static int exeUpdate(String sql){
		
		Statement st=null;
		
		try {
			Connection con=(Connection) DriverManager.getConnection(sr);
			st=(Statement) con.createStatement();
			int count=st.executeUpdate(sql);
			return count;
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try{
					st.close();
					
				}catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		
			}
		return 0;
	}
	
	
	
	public static List<Map<String,Object>> exeQuery(String sql){
		ResultSet s=null;
		Statement st=null;
		ResultSetMetaData f=null;
		
		try {
			Connection con=(Connection) DriverManager.getConnection(sr);
			st=(Statement) con.createStatement();
			s=st.executeQuery(sql);
			ArrayList<Map<String,Object>> d=new ArrayList<Map<String,Object>>();
			f=(ResultSetMetaData) s.getMetaData();
			
			while(s.next()){
				HashMap<String,Object> row=new HashMap<String,Object>();
				for(int i=1;i<=f.getColumnCount();i++){
					row.put(f.getColumnName(i),s.getObject(i));
				}
				d.add(row);
			}
			return d;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try{
				
				s.close();
				st.close();
				
			}catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return null;
	}
	
	
}
