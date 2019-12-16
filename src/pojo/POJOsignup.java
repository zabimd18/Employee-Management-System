package pojo;

public class POJOsignup {
	String username;
	String password;
	public POJOsignup() {
		super();
		// TODO Auto-generated constructor stub
	}
	public POJOsignup(String username, String password) {
		super();
		this.username = username;
		this.password = password;
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
	@Override
	public String toString() {
		return "POJOsignup [username=" + username + ", password=" + password + "]";
	}
	
}
