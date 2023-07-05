package com.springproject.dunk.ms.domain;

import java.sql.Date;
//place_book
public class UserBookList {

	private int no;
	private int placeNo;
	private String placeName;
	private String  placeAddress1;
	private String  placeAddress2;
	private int  placePay;
	private String  userId;
	private String  userNick;
	private Date dates;
	private int playerNum;
	private String timeBook;
	
	public UserBookList() {}
	
	public UserBookList(int no, int placeNo, String placeName, String placeAddress1, String placeAddress2, int placePay,
			String userId, String userNick, Date dates, int playerNum, String timeBook) {
		super();
		this.no = no;
		this.placeNo = placeNo;
		this.placeName = placeName;
		this.placeAddress1 = placeAddress1;
		this.placeAddress2 = placeAddress2;
		this.placePay = placePay;
		this.userId = userId;
		this.userNick = userNick;
		this.dates = dates;
		this.playerNum = playerNum;
		this.timeBook = timeBook;
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
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public String getPlaceAddress1() {
		return placeAddress1;
	}
	public void setPlaceAddress1(String placeAddress1) {
		this.placeAddress1 = placeAddress1;
	}
	public String getPlaceAddress2() {
		return placeAddress2;
	}
	public void setPlaceAddress2(String placeAddress2) {
		this.placeAddress2 = placeAddress2;
	}
	public int getPlacePay() {
		return placePay;
	}
	public void setPlacePay(int placePay) {
		this.placePay = placePay;
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
	public Date getDates() {
		return dates;
	}
	public void setDates(Date dates) {
		this.dates = dates;
	}
	public int getPlayerNum() {
		return playerNum;
	}
	public void setPlayerNum(int playerNum) {
		this.playerNum = playerNum;
	}
	public String getTimeBook() {
		return timeBook;
	}
	public void setTimeBook(String timeBook) {
		this.timeBook = timeBook;
	}	
	
}
