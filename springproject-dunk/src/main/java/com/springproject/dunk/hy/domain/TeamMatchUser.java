package com.springproject.dunk.hy.domain;

import java.sql.Timestamp;

public class TeamMatchUser {

	private int no;
	private int bookNo;
	private int teamNo;
	private String placeName;
	private Timestamp dates;
	private String timeBook;
	private String teamName;
	private String partnerTeamName;
	private String userId;
	private String userNick;
	private String isDelete;
	
	public TeamMatchUser() {}

	public TeamMatchUser(int no, int bookNo, int teamNo, String placeName, Timestamp dates, String timeBook,
			String teamName, String partnerTeamName, String userId, String userNick, String isDelete) {		
		this.no = no;
		this.bookNo = bookNo;
		this.teamNo = teamNo;
		this.placeName = placeName;
		this.dates = dates;
		this.timeBook = timeBook;
		this.teamName = teamName;
		this.partnerTeamName = partnerTeamName;
		this.userId = userId;
		this.userNick = userNick;
		this.isDelete = isDelete;
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

	public String getPlaceName() {
		return placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public Timestamp getDates() {
		return dates;
	}

	public void setDates(Timestamp dates) {
		this.dates = dates;
	}

	public String getTimeBook() {
		return timeBook;
	}

	public void setTimeBook(String timeBook) {
		this.timeBook = timeBook;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getPartnerTeamName() {
		return partnerTeamName;
	}

	public void setPartnerTeamName(String partnerTeamName) {
		this.partnerTeamName = partnerTeamName;
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

	public String getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}
	
}
