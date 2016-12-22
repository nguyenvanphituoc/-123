package model;

import java.sql.Date;
import java.util.ArrayList;

public class Journal 
{
		private int joID;
		private String joName;
		private String joSubmit;
		private int joStt;
		private int subID;
		private String subName;
		private String joComent;
		private String keywd;
		private String author;
		private String joStatus;
		public ArrayList<Reviewer> listRev;
		public Journal(){
			this.joID = -1;
			this.joName = null;
			this.joSubmit = null;
			this.joStt = -1;
			this.subID = -1;
			this.subName = null;
			this.joComent 	= null;
			this.keywd 	= null;
			this.author = null;
			this.listRev = new ArrayList<Reviewer>();
			this.joStatus = null;
		}
		public Journal( int joID, String joName, String joSubmit, 
				int joStt, int subID, String subName, String joComent, String keywd, String author){
			this.joID = joID;
			this.joName = joName;
			this.joSubmit = joSubmit;
			this.joStt = joStt;
			this.subID = subID;
			this.subName = subName;
			this.joComent 	= joComent;
			this.keywd 	= keywd;
			this.author = author;
			this.listRev = new ArrayList<Reviewer>();
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
		public String getKeywd() {
			return keywd;
		}
		public void setKeywd(String keywd) {
			this.keywd = keywd;
		}
		public String getAuthor() {
			return this.author;
		}
		public void setAuthor(String Author) {
			this.author = Author;
		}
		public String getjoSttToString(){
			String stt = "";
			switch (this.joStt) {
			case 1:
				stt="Reviewing";
				break;
			case 2:
				stt="Reviewing again";
				break;
			case 3:
				stt="Not public";
				break;
			case 4:
				stt="Delete";
				break;
			case 5:
				stt="Completed";
				break;
			default:
				stt="On submit";
				break;
			}
			this.joStatus = stt;
			return stt;
		}
}
