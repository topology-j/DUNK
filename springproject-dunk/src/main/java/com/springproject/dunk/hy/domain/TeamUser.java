package com.springproject.dunk.hy.domain;

public class TeamUser {

	private int no;
	private int teamNo;
	private String userId;
	private String userNick;
	
	public TeamUser() {}

	public TeamUser(int no, int teamNo, String userId, String userNick) {		
		this.no = no;
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
