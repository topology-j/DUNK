package com.springproject.dunk.ms.domain;

import java.sql.Timestamp;

public class Reply {
	//-- no, place_no, user_id, reply_content, reg_date
	//int, int, String, String, Timestamp
	private int no;
	private int placeNo;
	private String userId;
	private String userNick;
	private String replyContent;
	private Timestamp regDate;
	
	public Reply() {}

	public Reply(int no, int placeNo, String userId, String userNick, String replyContent, Timestamp regDate) {
		super();
		this.no = no;
		this.placeNo = placeNo;
		this.userId = userId;
		this.userNick = userNick;
		this.replyContent = replyContent;
		this.regDate = regDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPlaceNo() {
		return placeNo;
	}

	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
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

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

}
