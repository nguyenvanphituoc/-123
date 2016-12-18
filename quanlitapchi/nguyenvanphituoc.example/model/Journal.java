package model;

import java.sql.Date;

public class Journal 
{
		private int joID;
		private String joName;
		private String joSubmit;
		private int joStt;
		private int subID;
		private String subName;
		private String joComent;
		
		public Journal(){
			
		}
		public Journal( int joID, String joName, String joSubmit, 
				int joStt, int subID, String subName, String joComent){
			this.joID = joID;
			this.joName = joName;
			this.joSubmit = joSubmit;
			this.joStt = joStt;
			this.subID = subID;
			this.subName = subName;
			this.joComent 	= joComent;
		}
		
		public int getID() {
			return joID;
		}
		public void setID(int ID) {
			this.joID = ID;
		}
		public String getName() {
			return joName;
		}
		public void setName(String Name) {
			this.joName = Name;
		}
		public String getSubmitDate() {
			return joSubmit;
		}
		public void setSubmitDate(String Date) {
			this.joSubmit = Date;
		}
		public int getStatus() {
			return joStt;
		}
		public void setStt(int Status) {
			this.joStt = Status;
		}
		public int getSubID() {
			return subID;
		}
		public void setSubID(int id) {
			this.subID = id;
		}
		public String getSubName() {
			return subName;
		}
		public void setSubName(String Name) {
			this.subName = Name;
		}
		public String getComent() {
			return joComent;
		}
		public void setComent(String Coment) {
			this.joComent = Coment;
		}
}
