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
//���ݿ��ѯ����
public class DBUtils {
	//private static 	String url = "jdbc:mysql://localhost/test";
	//private static 	String user = "root";
	//private static 	String pwd = "123456";
	//private static 	String driver = "com.mysql.jdbc.Driver";
	private static 	String url;
	private static 	String user;
	private static 	String pwd;
	private static 	String driver;
	//��ʼ������   ͨ����ʼ������
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
//	//��̬���ʼ��
//	static{
//		try {
//			Class.forName(driver);
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//}
//	//ִ�и��²���
	public static int execUpdate(String sql){
		java.sql.Connection conn = null;
		java.sql.Statement stat = null;
		int rs = 1;
		
		try {
			//��������
			conn = DriverManager.getConnection(url, user, pwd);
			//����������
			stat = conn.createStatement();
			//ִ��SQL���
			 rs = stat.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	//ִ�в�ѯ����
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
			
			ResultSetMetaData rsmd =rs.getMetaData();//���Ԫ����  ����֮�����������(����������)
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
				//��֤�����ر�
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
		String sql = "select * from user where name='������'and pwd ='123456'";
		ArrayList<HashMap<String, Object>> list = DBUtils.execQuery(sql);
		System.out.println(list);
		int a = DBUtils.execUpdate("update jiben1 set name='֣��',sex='n',age=25 where id =5");
		
		
		//int b = DBUtils.execUpdate("insert jiben1 values(7,'����','n',21)");
		
		//System.out.println(b);
		//System.out.println(list.toString().replaceAll("\\},", replacement));
	}
	public void beginTransaction(){
		java.sql.Connection conn = null;
		java.sql.Statement stat = null;
		int rs = 1;
		
		try {
			//��������
			conn = DriverManager.getConnection(url, user, pwd);
			//����������
			stat = conn.createStatement();
			//ִ��SQL���
			 conn.setAutoCommit(false);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
