package com.springproject.dunk.hy.domain;

import java.sql.Timestamp;

public class EventComment {

	private int no;
	private int eventNo;
	private String userId;
	private String userNick;
	private Timestamp regDate;
	private String content;
	
	public EventComment() {}

	public EventComment(int no, int eventNo, String userId, String userNick, Timestamp regDate, String content) {
		this.no = no;
		this.eventNo = eventNo;
		this.userId = userId;
		this.userNick = userNick;
		this.regDate = regDate;
		this.content = content;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getEventNo() {
		return eventNo;
	}

	public void setEventNo(int eventNo) {
		this.eventNo = eventNo;
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

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}	
	
}
