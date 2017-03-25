package user.domain;

public class User {
	private String uid;// ����
	private String username;// �û���
	private String password;// ����
	private String number;// ����
	
	public User(String uid, String username, String password, String number) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.number = number;
	}
	public User() {
		super();
		
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	
	
}
