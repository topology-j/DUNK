package com.springproject.dunk.hy.domain;

public class TeamMatchUser {

	private int no;
	private int bookNo;
	private int teamNo;
	private String userId;
	private String userNick;
	
	public TeamMatchUser() {}

	public TeamMatchUser(int no, int bookNo, int teamNo, String userId, String userNick) {	
		this.no = no;
		this.bookNo = bookNo;
		this.teamNo = teamNo;
		this.userId = userId;
		this.userNick = userNick;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public int getTeamNo() {
		return teamNo;
	}

	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	
}
