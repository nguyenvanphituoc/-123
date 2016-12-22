package model;

import java.util.ArrayList;

public class User {
	private String id;
	private String username;
	private String password;
	private String uFirstname;
	private String uLastname;
	private String uEmail;
	private String uhashCode;
	private int    uClass;
	private int	   uActive;
	public ArrayList<Reviewer> listRev;
	public User(){
		this.username = null;
		this.password = null;
		this.uFirstname = null;
		this.uLastname = null;
		this.uClass = -1;
		this.uEmail = null;
		this.uActive = -1;
		this.id 	= null;
		this.uhashCode = null;
		this.listRev = new ArrayList<Reviewer>();
	}
	public User(String username, String password, String uFirstname, 
			String uLastname, String uEmail, int    uClass, int	   uActive, String id, String uhashCode){
		this.username = username;
		this.password = password;
		this.uFirstname = uFirstname;
		this.uLastname = uLastname;
		this.uClass = uClass;
		this.uEmail = uEmail;
		this.uActive = uActive;
		this.id 	= id;
		this.uhashCode = uhashCode;
		this.listRev = new ArrayList<Reviewer>();
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
	public String getID(){return this.id;}
	public void setID(String id){this.id = id;}
	public String gethashCode(){return this.uhashCode;}
	public void setuhashCode(String uhashCode){this.uhashCode = uhashCode;}
	public String getuFirstname(){return this.uFirstname;}
	public void setuFirstname(String uFirstname){this.uFirstname = uFirstname;}
	public String getuLastname(){return this.uLastname;}
	public void setuLastname(String uLastname){this.uLastname = uLastname;}
	public String getuEmail(){return this.uEmail;}
	public void setuuEmail(String uEmail){this.uEmail = uEmail;}
	public int getuActive(){return this.uActive;}
	public void setuActive(int uActive){this.uActive = uActive;}
	public int getuClass(){return this.uClass;}
	public void setuClass(int uClass){this.uClass = uClass;}
	public String getRole(){
		String role = "";
		switch (this.uClass) {
		case 1:
			role = "Editor";
			break;
		case 2:
			role = "Author";
			break;
		case 3:
			role = "Reviewer";
			break;
		case 4:	
			role = "Reader";
			break;
		default:
			role = "Admin";
			break;
		}
		return role;
	}
	public static String getRoleStatic(int clazz){
		String role = "";
		switch (clazz) {
		case 1:
			role = "Editor";
			break;
		case 2:
			role = "Author";
			break;
		case 3:
			role = "Reviewer";
			break;
		case 4:	
			role = "Reader";
			break;
		default:
			role = "Admin";
			break;
		}
		return role;
	}
	public static String getStatusStatic(int status){
		String role = "";
		switch (status) {
		case 1:			
		case 2:
		case 3:
		case 4:	
			role = "Actived";
			break;
		default:
			role = "Blocked";
			break;
		}
		return role;
	}

}
