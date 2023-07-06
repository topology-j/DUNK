package com.springproject.dunk.mj.domain;

import java.sql.Date;

public class MatchingItem {
	// no, place_no, name, date, gender, level,	pay, possible _impossible,information,read_count																
	private int no;
	private int placeNo;	
	private String title;
	//private String date;
	private Date date;
	private String time;
	private int inwon;
	private String gender;
	private String level;
	private int pay;
	private int laws;
	private String information;
	private int readCount;
	private String userId;
	
	private String name;	
	private String zipcode;
	private String address1;
	private String address2;
	
	private int matchingApplyCount;
	
	public MatchingItem() { }
	public MatchingItem(int no, int placeNo, String title, Date date, String time, int inwon,
			String gender, String level, int pay, int laws, String information, int readCount, String userId,
			String name, String zipcode, String address1, String address2, int matchingApplyCount) 
	{
		this.no = no;
		this.placeNo = placeNo;
		this.title = title;
		this.date = date;
		this.time = time;
		this.inwon = inwon;
		this.gender = gender;
		this.level = level;
		this.pay = pay;
		this.laws = laws;
		this.information = information;
		this.readCount = readCount;
		this.userId = userId;
		this.name = name;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.matchingApplyCount = matchingApplyCount;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
	public int getInwon() {
		return inwon;
	}
	
	public void setInwon(int inwon) {
		this.inwon = inwon;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public int getLaws() {
		return laws;
	}
	public void setLaws(int laws) {
		this.laws = laws;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	
	public int getMatchingApplyCount() {
		return matchingApplyCount;
	}
	public void setMatchingApplyCount(int matchingApplyCount) {
		this.matchingApplyCount = matchingApplyCount;
		
	}
	
	
}
