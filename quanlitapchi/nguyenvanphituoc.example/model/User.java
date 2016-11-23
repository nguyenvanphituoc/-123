package model;

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

	public User(){
		
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
}
