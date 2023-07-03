package com.springproject.dunk.hy.domain;

public class TeamMatchUserEval {
	
	public int no;
	public int bookNo;
	public String userId;
	public String partnerId;
	public String isEval;
	
	public TeamMatchUserEval() {}
	
	public TeamMatchUserEval(int no, int bookNo, String userId, String partnerId, String isEval) {	
		this.no = no;
		this.bookNo = bookNo;
		this.userId = userId;
		this.partnerId = partnerId;
		this.isEval = isEval;
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

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPartnerId() {
		return partnerId;
	}

	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}

	public String getIsEval() {
		return isEval;
	}

	public void setIsEval(String isEval) {
		this.isEval = isEval;
	}

}
