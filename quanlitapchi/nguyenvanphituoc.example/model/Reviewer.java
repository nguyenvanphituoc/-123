package model;

import java.util.ArrayList;

public class Reviewer {
	private Journal journal;
	private User user;
	private int revStt;
	private String revComment;
	private String revStatus;
	public Reviewer(){
		this.user = new User();
		this.journal = new Journal();
		this.revStt = -1;
		this.revStatus = null;
		this.revComment = null;
	}
	public Reviewer(String revComment, int revStt, Journal journal, User user){
		this.user = user;
		this.journal = journal;
		this.revStt = revStt;
		this.revComment = revComment;
	}
	public Reviewer( Journal journal, User user, int revStt, String revComment){
		this.user = user;
		this.journal = journal;
		this.revStt = revStt;
		this.revComment = revComment;
	}	
	public Journal getJo() {
		return journal;
	}
	public void setJo(Journal journal) {
		this.journal = journal;
	}
	public User getName() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getrevStt() {
		return revStt;
	}
	public void setrevStt(int revStt) {
		this.revStt = revStt;
	}
	public String getComment(){
		return revComment;
	}
	public void setComment(String comment){
		this.revComment = comment;
	}
	public String revSttToString(){
		String role ="";
		switch (this.revStt) {
		case 0:
			role="On submit. Please review";
			break;
		case 1:
			role="Reading and Reviewing";
			break;
		case 2:
			role="Success! That is right Journal";
			break;
		default:
			role="WOopzzs!";
			break;
		}
		this.revStatus = role;
		return role;
	}

}
