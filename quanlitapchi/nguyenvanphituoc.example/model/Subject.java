package model;

public class Subject {
	private int subID;
	private String subName;
	private String subDescription;
	public Subject(){
		this.subID = -1;
		this.subName = null;
		this.subDescription = null;
	}
	public Subject( int ID, String Name, String Description){
		this.subDescription = Description;
		this.subID = ID;
		this.subName = Name;

	}
	
	public int getID() {
		return subID;
	}
	public void setID(int ID) {
		this.subID = ID;
	}
	public String getName() {
		return subName;
	}
	public void setName(String Name) {
		this.subName = Name;
	}
	public String getDescription() {
		return subDescription;
	}
	public void setSubmitDate(String Description) {
		this.subDescription = Description;
	}
}
