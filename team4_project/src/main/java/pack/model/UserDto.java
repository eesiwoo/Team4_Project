package pack.model;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class UserDto {

	private String user_id, user_name, user_pwd, user_tel, user_code; 
	private String user_addr, user_email, user_bDate, user_joinDate;
	// user_gen = 1은 남자, 0은 여자. 
	private int user_gen;
	
	
	public void setUser_code(String user_code) {
		this.user_code = user_code;
	}
	
	public String getUser_code() {
		return user_code;
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_addr() {
		return user_addr;
	}
	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_bDate() {
		return user_bDate;
	}
	public void setUser_bDate(String user_bDate) {
		this.user_bDate = user_bDate;
	}
	public String getUser_joinDate() {
		return user_joinDate;
	}
	public void setUser_joinDate(String user_joinDate) {
		this.user_joinDate = user_joinDate;
	}
	public int getUser_gen() {
		return user_gen;
	}
	public void setUser_gen(int user_gen) {
		this.user_gen = user_gen;
	}
}
