package user.sevice;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import user.dao.UserDao;
import util.DBUtils;

public class UserService {
	UserDao userDao = new UserDao();
	
	
	public HashMap<String, Object> finduser(String name,String pwd){
		HashMap<String, Object> list = userDao.find(name, pwd);
		return list;
	}
	public  ArrayList<HashMap<String, Object>> findalluser(){
		ArrayList<HashMap<String, Object>> list = userDao.findalluser();
		return list;
	}
	
	public Boolean adduser(String name,String pwd){
		return userDao.adduser(name, pwd);
	}
	
	public int addusermessage(String number,String name,String address,String uid){
		return userDao.addusermessage(number, name, address, uid);
	}
	public int addusermessage1(String number,String name,String address,String uid,String pwd){
		return userDao.addusermessage1(number, name, address, uid,pwd);
	}
	public  HashMap<String, Object> finduser1(String name){
		return userDao.finduser1(name);
	}
	public  HashMap<String, Object> findadmin(String name,String pwd){
		return userDao.findadmin(name, pwd);
	}
	public  ArrayList<HashMap<String, Object>> findalladmin(){
		return userDao.findalladmin();
	}
	public int userUpdatePassword(String username,String password){
		return userDao.userUpdatePassword(username, password);
	}
	public  List<HashMap<String, Object>> findadmin1(String name,String pwd){
		return userDao.findadmin1(name, pwd);
	}
	public Boolean addadmin(String name,String pwd){
		return userDao.addadmin(name, pwd);
	}
	public int adminUpdate(String username,String password){
		return userDao.adminUpdate(username, password);
	}
	public int delete(String aid){
		return userDao.delete(aid);
	}
	
}
